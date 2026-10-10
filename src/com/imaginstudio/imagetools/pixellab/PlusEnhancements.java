package com.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.imaginstudio.imagetools.pixellab.ShapeObject.ShapeComponent;
import com.imaginstudio.imagetools.pixellab.TextObject.TextComponent;
import com.imaginstudio.imagetools.pixellab.controls.widgets.CustomTextMenu;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/** Additive UI, media, theme and canvas gesture enhancements. */
public final class PlusEnhancements {
    private static final String PREFS = "pixellabplus_global_ui";
    private static final String THEME_KEY = "theme_index";
    private static final String[] THEME_NAMES = {
        "跟随原版", "新粗野主义", "新拟物", "液态玻璃", "动态卡通", "手绘绘制"
    };
    private static final Map<textContainer, Float> PINCH_DISTANCE = new WeakHashMap<textContainer, Float>();
    private static final Set<textContainer> PINCH_ACTIVE = java.util.Collections.newSetFromMap(new WeakHashMap<textContainer, Boolean>());
    private static final Map<View, StyleSnapshot> ORIGINAL_STYLES = java.util.Collections.synchronizedMap(new WeakHashMap<View, StyleSnapshot>());

    private PlusEnhancements() {}

    public static void addMenuItems(final MainActivity activity, CustomTextMenu menu) {
        if (activity == null || menu == null) return;
        menu.addTextItem("全局主题 / 本地媒体", new MenuAction(activity, 1));
        menu.addTextItem("文字特效预设", new MenuAction(activity, 2));
        menu.addTextItem("更新与修复 / 官方群", new MenuAction(activity, 3));
    }

    public static final class MenuAction implements Runnable {
        private final MainActivity activity;
        private final int action;
        public MenuAction(MainActivity activity, int action) { this.activity = activity; this.action = action; }
        @Override public void run() {
            if (activity == null || activity.isFinishing()) return;
            if (action == 1) showThemeMediaMenu(activity);
            else if (action == 2) showFxPresets(activity);
            else showReleaseNotes(activity);
        }
    }

    public static void onMainResume(MainActivity activity) {
        if (activity == null) return;
        try {
            applyTheme(activity);
            dockLayersRight(activity);
        } catch (Throwable ignored) { }
    }

    public static void onQuotesResume(Activity activity) {
        try { applyTheme(activity); } catch (Throwable ignored) { }
    }

    public static float visibleLayersX(MainActivity activity) {
        View panel = activity.findViewById(0x7f080125);
        if (panel == null) return 0f;
        View root = activity.getWindow().getDecorView();
        int screen = root == null ? 0 : root.getWidth();
        if (screen <= 0) screen = activity.getResources().getDisplayMetrics().widthPixels;
        return Math.max(0, screen - panel.getWidth());
    }

    /** keepHandle=true leaves the layer toggle tab visible at the right edge. */
    public static float hiddenLayersX(MainActivity activity, boolean keepHandle) {
        View panel = activity.findViewById(0x7f080125);
        if (panel == null) return 0f;
        View root = activity.getWindow().getDecorView();
        int screen = root == null ? 0 : root.getWidth();
        if (screen <= 0) screen = activity.getResources().getDisplayMetrics().widthPixels;
        int handleWidth = 0;
        if (keepHandle) {
            View handle = activity.findViewById(0x7f080128);
            if (handle != null) handleWidth = handle.getWidth();
            if (handleWidth <= 0) handleWidth = Math.round(32 * activity.getResources().getDisplayMetrics().density);
        }
        return Math.max(0, screen - handleWidth);
    }

    private static void dockLayersRight(final MainActivity activity) {
        final View panel = activity.findViewById(0x7f080125);
        if (panel == null) return;
        panel.post(new Runnable() {
            @Override public void run() {
                if (activity.isFinishing() || panel.getWidth() <= 0 || panel.getVisibility() != View.VISIBLE) return;
                panel.setX(panel.getAlpha() < 0.75f ? hiddenLayersX(activity, true) : visibleLayersX(activity));
            }
        });
    }

    public static boolean shouldInterceptPinch(textContainer container, MotionEvent event) {
        if (container == null || event == null) return false;
        synchronized (PINCH_ACTIVE) {
            if (event.getPointerCount() >= 2) {
                PINCH_ACTIVE.add(container);
                return true;
            }
            return PINCH_ACTIVE.contains(container);
        }
    }

    public static boolean handlePinchTouch(textContainer container, MotionEvent event) {
        if (container == null || event == null) return false;
        final int action = event.getActionMasked();
        boolean active;
        synchronized (PINCH_ACTIVE) { active = PINCH_ACTIVE.contains(container); }
        if (!active && event.getPointerCount() < 2) return false;
        if (event.getPointerCount() >= 2) {
            float distance = spacing(event);
            if (action == MotionEvent.ACTION_POINTER_DOWN || action == MotionEvent.ACTION_MOVE) {
                Float last;
                synchronized (PINCH_DISTANCE) { last = PINCH_DISTANCE.get(container); }
                if (action == MotionEvent.ACTION_MOVE && last != null && last > 1f && distance > 1f) {
                    float factor = Math.max(0.70f, Math.min(1.40f, distance / last));
                    scaleSelected(container, factor);
                }
                synchronized (PINCH_DISTANCE) { PINCH_DISTANCE.put(container, distance); }
            }
            return true;
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            synchronized (PINCH_ACTIVE) { PINCH_ACTIVE.remove(container); }
            synchronized (PINCH_DISTANCE) { PINCH_DISTANCE.remove(container); }
        }
        return active;
    }

    private static float spacing(MotionEvent event) {
        float dx = event.getX(0) - event.getX(1);
        float dy = event.getY(0) - event.getY(1);
        return (float) Math.sqrt(dx * dx + dy * dy);
    }

    private static void scaleSelected(textContainer container, float factor) {
        try {
            com.imaginstudio.imagetools.pixellab.AbstractComponent selected = container.getSelectedComponent();
            if (selected instanceof TextComponent) ((TextComponent) selected).relativeScale(factor);
            else if (selected instanceof ShapeComponent) ((ShapeComponent) selected).relativeScale(factor);
        } catch (Throwable ignored) { }
    }

    private static void showThemeMediaMenu(final MainActivity activity) {
        final String[] actions = {"选择全局主题", "从本地导入图片"};
        new AlertDialog.Builder(activity)
            .setTitle("全局外观与素材")
            .setItems(actions, (dialog, which) -> {
                if (which == 0) showThemePicker(activity);
                else if (which == 1) openImagePicker(activity);
            })
            .setNegativeButton("关闭", null)
            .show();
    }

    private static void showThemePicker(final MainActivity activity) {
        int selected = activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getInt(THEME_KEY, 0);
        new AlertDialog.Builder(activity)
            .setTitle("全局主题（背景 / 图标 / 文字 / 组件）")
            .setSingleChoiceItems(THEME_NAMES, selected, (dialog, which) -> {
                activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putInt(THEME_KEY, which).apply();
                dialog.dismiss();
                applyTheme(activity);
            })
            .setNegativeButton("取消", null)
            .show();
    }

    private static void openImagePicker(MainActivity activity) {
        try {
            Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
            intent.addCategory(Intent.CATEGORY_OPENABLE);
            intent.setType("image/*");
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
            activity.startActivityForResult(intent, MainActivity.GET_IMAGE_BG_GALLERY);
        } catch (android.content.ActivityNotFoundException noDocumentPicker) {
            try {
                Intent legacy = new Intent(Intent.ACTION_GET_CONTENT);
                legacy.addCategory(Intent.CATEGORY_OPENABLE);
                legacy.setType("image/*");
                activity.startActivityForResult(legacy, MainActivity.GET_IMAGE_BG_GALLERY);
            } catch (Throwable t) {
                Toast.makeText(activity, "无法打开系统图片选择器", Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable t) {
            Toast.makeText(activity, "无法打开系统图片选择器", Toast.LENGTH_SHORT).show();
        }
    }

    private static void showFxPresets(final MainActivity activity) {
        final String[] presets = {"霓虹辉光", "金属浮雕", "厚重 3D", "柔和投影", "清除预设特效"};
        new AlertDialog.Builder(activity)
            .setTitle("文字特效预设（应用于当前选中对象）")
            .setItems(presets, (dialog, which) -> applyFx(activity, which))
            .setNegativeButton("取消", null)
            .show();
    }

    private static void applyFx(MainActivity activity, int which) {
        if (activity.textContain == null) return;
        try {
            com.imaginstudio.imagetools.pixellab.AbstractComponent selected = activity.textContain.getSelectedComponent();
            if (selected instanceof TextComponent) {
                TextComponent text = (TextComponent) selected;
                activity.saveCurrTextState(text);
                switch (which) {
                    case 0:
                        text.setEmboss(false, 315, 0, 0, 0, 0);
                        text.setOuterShadow(true, false, 15f, 0, 0, 0xFF54DFFF);
                        break;
                    case 1:
                        text.setOuterShadow(false, false, 0f, 0, 0, Color.TRANSPARENT);
                        text.setEmboss(true, 315, 88, 38, 65, 42);
                        break;
                    case 2:
                        text.setEmboss(false, 315, 0, 0, 0, 0);
                        text.setShadow3d(true, 0xFF55506F, 70, 16, 48);
                        break;
                    case 3:
                        text.setEmboss(false, 315, 0, 0, 0, 0);
                        text.setOuterShadow(true, false, 8f, 3, 5, 0x99000000);
                        break;
                    default:
                        text.setEmboss(false, 315, 0, 0, 0, 0);
                        text.setOuterShadow(false, false, 0f, 0, 0, Color.TRANSPARENT);
                        text.setShadow3d(false, Color.TRANSPARENT, 0, 0, 0);
                }
                Toast.makeText(activity, "特效已应用到当前文字对象", Toast.LENGTH_SHORT).show();
            } else if (selected instanceof ShapeComponent) {
                ShapeComponent shape = (ShapeComponent) selected;
                activity.saveCurrShapeState(shape);
                switch (which) {
                    case 0: shape.setShadow(true, 14f, 0, 0, 0xFF54DFFF); break;
                    case 1: shape.setEmboss(true, 315, 88, 38, 65, 42); break;
                    case 2: shape.setEmboss(true, 315, 95, 35, 70, 60); break;
                    case 3: shape.setShadow(true, 8f, 3, 5, 0x99000000); break;
                    default:
                        shape.setEmboss(false, 315, 0, 0, 0, 0);
                        shape.setShadow(false, 0f, 0, 0, Color.TRANSPARENT);
                }
                Toast.makeText(activity, "特效已应用到当前图形对象", Toast.LENGTH_SHORT).show();
            } else {
                Toast.makeText(activity, "请先选中一个文字或图形对象", Toast.LENGTH_SHORT).show();
            }
        } catch (Throwable t) {
            Toast.makeText(activity, "无法应用此特效，请先选中可编辑对象", Toast.LENGTH_LONG).show();
        }
    }

    private static void showReleaseNotes(final Activity activity) {
        final Dialog dialog = new Dialog(activity, android.R.style.Theme_DeviceDefault_Light_NoActionBar);
        LinearLayout frame = new LinearLayout(activity);
        frame.setOrientation(LinearLayout.VERTICAL);
        frame.setPadding(dp(activity, 16), dp(activity, 12), dp(activity, 16), dp(activity, 14));
        frame.setBackground(roundRect(0xFF10182D, 0xFF405A83, dp(activity, 22), dp(activity, 1)));
        WebView page = new WebView(activity);
        page.setBackgroundColor(Color.TRANSPARENT);
        page.setVerticalScrollBarEnabled(false);
        WebSettings settings = page.getSettings();
        settings.setJavaScriptEnabled(false);
        settings.setDefaultTextEncodingName("UTF-8");
        page.loadDataWithBaseURL(null, releaseHtml(), "text/html", "UTF-8", null);
        frame.addView(page, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(activity, 410)));
        Button join = new Button(activity);
        join.setText("加入 PixelLab 官方 QQ 群");
        join.setTextColor(Color.WHITE);
        join.setBackground(roundRect(0xFF4D74FF, 0xFF9BE8FF, dp(activity, 18), dp(activity, 1)));
        join.setOnClickListener(v -> openQqGroup(activity));
        LinearLayout.LayoutParams button = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, dp(activity, 54));
        button.topMargin = dp(activity, 10);
        frame.addView(join, button);
        dialog.setContentView(frame);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
            window.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND);
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            lp.copyFrom(window.getAttributes());
            lp.width = Math.min(activity.getResources().getDisplayMetrics().widthPixels - dp(activity, 28), dp(activity, 520));
            lp.height = WindowManager.LayoutParams.WRAP_CONTENT;
            lp.dimAmount = 0.58f;
            window.setAttributes(lp);
            window.setGravity(Gravity.CENTER);
        }
        dialog.show();
        if (window != null) window.setLayout(Math.min(activity.getResources().getDisplayMetrics().widthPixels - dp(activity, 28), dp(activity, 520)), WindowManager.LayoutParams.WRAP_CONTENT);
    }

    private static String releaseHtml() {
        return "<!doctype html><html lang='zh-CN'><head><meta charset='utf-8'><meta name='viewport' content='width=device-width,initial-scale=1'>" +
            "<style>*{box-sizing:border-box}html,body{margin:0;background:transparent;color:#eef5ff;font-family:system-ui,'Noto Sans CJK SC',sans-serif}" +
            "body{padding:8px}.hero{position:relative;overflow:hidden;border:1px solid #5675a2;border-radius:24px;padding:23px 21px;background:linear-gradient(135deg,rgba(54,84,154,.75),rgba(75,36,122,.56),rgba(23,141,157,.34));box-shadow:0 18px 45px #050917aa;backdrop-filter:blur(22px);animation:float 5s ease-in-out infinite}" +
            ".hero:before{content:'';position:absolute;width:220px;height:220px;right:-90px;top:-110px;border-radius:50%;background:radial-gradient(circle,#84ecff88,transparent 70%);filter:blur(5px)}" +
            ".eyebrow{font-size:11px;letter-spacing:.22em;color:#a8eaff;text-transform:uppercase}h1{position:relative;margin:8px 0 4px;font-size:27px;line-height:1.2;background:linear-gradient(90deg,#d8fbff,#d6c0ff,#fff);color:transparent;background-clip:text;-webkit-background-clip:text;text-shadow:0 0 24px #73cfff55}.by{color:#b9c6e3;font-size:13px;margin-bottom:17px}" +
            ".grid{display:grid;grid-template-columns:1fr;gap:10px}.card{position:relative;padding:14px 15px;border-radius:17px;border:1px solid #ffffff20;background:linear-gradient(135deg,#ffffff12,#ffffff06);box-shadow:inset 0 1px #ffffff18,0 8px 24px #05091755;animation:rise .7s both}.card:nth-child(2){animation-delay:.12s}.tag{font-size:11px;letter-spacing:.08em;color:#81ebdb;margin-bottom:6px;font-weight:700}.card p{margin:0;color:#e5ebfb;font-size:13px;line-height:1.7}.accent{color:#c7b7ff;font-weight:700}.foot{font-size:11px;color:#97a8c9;margin:14px 4px 4px}" +
            "@keyframes rise{from{opacity:0;transform:translateY(12px)}to{opacity:1;transform:none}}@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-3px)}}@media(prefers-reduced-motion:reduce){*,*:before,*:after{animation:none!important}}</style></head><body>" +
            "<main class='hero'><div class='eyebrow'>PIXELLAB PLUS · 版本更新</div><h1>更新与修复</h1><div class='by'>陈淑婷修改 · 持续打磨创作体验</div><section class='grid'>" +
            "<article class='card'><div class='tag'>本次更新</div><p>画布选中对象支持双指缩放；图层面板改为右侧弹出停靠；新增全局主题切换：新粗野、新拟物、液态玻璃、动态卡通、手绘绘制；新增本地图片导入；提供霓虹、金属浮雕、3D 与柔和投影等特效预设。</p></article>" +
            "<article class='card'><div class='tag'>问题修复</div><p>修复文字浮雕特效绘制路径；优化图层收起/展开动画与触控；更新“+”菜单说明及官方社群入口。加群入口仅跳转至 QQ 客户端；未安装 QQ 时会提示，不自动打开浏览器。</p></article></section><div class='foot'>PixelLab Plus · 为创作界面与文字表现带来更多选择</div></main></body></html>";
    }

    private static void openQqGroup(Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        try {
            Uri groupPage = Uri.parse("mqqapi://card/show_pslcard?src_type=internal&version=1&uin=836869262&card_type=group&source=qrcode");
            Intent intent = new Intent(Intent.ACTION_VIEW, groupPage);
            intent.setPackage("com.tencent.mobileqq");
            activity.startActivity(intent);
        } catch (Throwable noQqClient) {
            Toast.makeText(activity, "未检测到 QQ，请安装 QQ 后再加入官方群。", Toast.LENGTH_LONG).show();
        }
    }

    private static void applyTheme(Activity activity) {
        int index = activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getInt(THEME_KEY, 0);
        if (index < 0 || index >= THEME_NAMES.length) index = 0;
        View root = activity.findViewById(android.R.id.content);
        if (root == null) return;
        captureStyle(root);
        // A few bottom-toolbar labels are assigned as literal strings instead of resources.
        // Translate the rendered view tree after inflation as a final locale pass.
        localizeTree(activity, root);
        if (index == 0) {
            restoreTree(root);
            return;
        }
        Palette p = Palette.forIndex(index);
        root.setBackgroundColor(p.background);
        styleTree(activity, root, p, index);
    }

    private static void localizeTree(Activity activity, View view) {
        if (view == null) return;
        if (view instanceof TextView && !(view instanceof EditText)
                && !view.getClass().getName().endsWith("CustomTextView")) {
            TextView textView = (TextView) view;
            CharSequence current = textView.getText();
            if (current != null) {
                String source = current.toString();
                String translated = OfflineLanguageManager.translateText(activity, source);
                if (translated != null && !translated.equals(source)) textView.setText(translated);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) localizeTree(activity, group.getChildAt(i));
        }
    }

    private static void styleTree(Activity activity, View view, Palette p, int index) {
        if (view == null) return;
        captureStyle(view);
        String className = view.getClass().getName();
        boolean canvasText = className.endsWith("CustomTextView");
        if (view instanceof TextView && !canvasText) {
            TextView text = (TextView) view;
            text.setTextColor(p.foreground);
            if (view instanceof Button) {
                text.setBackground(surface(p, activity));
                if (Build.VERSION.SDK_INT >= 21 && index == 4) text.setElevation(dp(activity, 5));
                if (index == 4 && view.isClickable()) {
                    view.animate().cancel();
                    view.setScaleX(0.97f); view.setScaleY(0.97f);
                    view.animate().scaleX(1f).scaleY(1f).setDuration(240).start();
                }
            }
        }
        if (view instanceof ImageView) {
            ImageView image = (ImageView) view;
            int limit = dp(activity, 64);
            if (view instanceof ImageButton || (image.getWidth() <= limit && image.getHeight() <= limit)) image.setColorFilter(p.accent);
        }
        if (view != activity.findViewById(android.R.id.content) && view.getBackground() != null) {
            view.setBackground(surface(p, activity));
        }
        if (view instanceof ViewGroup) {
            if (view != activity.findViewById(android.R.id.content)) view.setBackground(surface(p, activity));
            if (Build.VERSION.SDK_INT >= 21 && (view instanceof LinearLayout || view instanceof ScrollView)) view.setElevation(dp(activity, index == 2 ? 8 : 3));
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) styleTree(activity, group.getChildAt(i), p, index);
        }
    }


    private static void captureStyle(View view) {
        if (view == null || ORIGINAL_STYLES.containsKey(view)) return;
        Drawable original = view.getBackground();
        Drawable copy = null;
        if (original != null) {
            Drawable.ConstantState state = original.getConstantState();
            copy = state == null ? original : state.newDrawable().mutate();
        }
        ColorStateList text = view instanceof TextView ? ((TextView) view).getTextColors() : null;
        ColorFilter filter = view instanceof ImageView ? ((ImageView) view).getColorFilter() : null;
        float elevation = Build.VERSION.SDK_INT >= 21 ? view.getElevation() : 0f;
        ORIGINAL_STYLES.put(view, new StyleSnapshot(copy, text, filter, elevation, view.getScaleX(), view.getScaleY()));
    }

    private static void restoreTree(View view) {
        if (view == null) return;
        StyleSnapshot saved = ORIGINAL_STYLES.get(view);
        if (saved != null) {
            view.setBackground(saved.background);
            if (saved.textColors != null && view instanceof TextView) ((TextView) view).setTextColor(saved.textColors);
            if (view instanceof ImageView) ((ImageView) view).setColorFilter(saved.colorFilter);
            if (Build.VERSION.SDK_INT >= 21) view.setElevation(saved.elevation);
            view.setScaleX(saved.scaleX); view.setScaleY(saved.scaleY);
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) restoreTree(group.getChildAt(i));
        }
    }

    private static final class StyleSnapshot {
        final Drawable background;
        final ColorStateList textColors;
        final ColorFilter colorFilter;
        final float elevation, scaleX, scaleY;
        StyleSnapshot(Drawable background, ColorStateList textColors, ColorFilter colorFilter, float elevation, float scaleX, float scaleY) {
            this.background = background; this.textColors = textColors; this.colorFilter = colorFilter;
            this.elevation = elevation; this.scaleX = scaleX; this.scaleY = scaleY;
        }
    }

    private static GradientDrawable surface(Palette p, Context context) {
        GradientDrawable d = new GradientDrawable(GradientDrawable.Orientation.TL_BR, new int[]{p.surface, p.surface2});
        d.setCornerRadius(dp(context, p.radius));
        if (Build.VERSION.SDK_INT >= 21 && p.dashed) d.setStroke(dp(context, 1), p.border, dp(context, 6), dp(context, 4));
        else d.setStroke(dp(context, 1), p.border);
        return d;
    }

    private static GradientDrawable roundRect(int color, int stroke, int radius, int borderWidth) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color); d.setCornerRadius(radius); d.setStroke(borderWidth, stroke);
        return d;
    }

    private static int dp(Context context, int value) { return Math.round(value * context.getResources().getDisplayMetrics().density); }

    private static final class Palette {
        int background, surface, surface2, foreground, accent, border, radius;
        boolean dashed;
        static Palette forIndex(int i) {
            Palette p = new Palette();
            switch (i) {
                case 1: p.background=0xFFEDE9E1; p.surface=0xFFFFFCF6; p.surface2=0xFFF4EEE3; p.foreground=0xFF171614; p.accent=0xFFFF5638; p.border=0xFF191817; p.radius=9; break;
                case 2: p.background=0xFFE7E9EF; p.surface=0xFFE7E9EF; p.surface2=0xFFF0F1F5; p.foreground=0xFF42495B; p.accent=0xFF526DDB; p.border=0xFFCCD0DC; p.radius=22; break;
                case 3: p.background=0xFF111827; p.surface=0xC832405B; p.surface2=0xA8293750; p.foreground=0xFFF0F5FF; p.accent=0xFF82E8FF; p.border=0x9963D4FF; p.radius=22; break;
                case 4: p.background=0xFFFFF1D6; p.surface=0xFFFFF7E6; p.surface2=0xFFFFDDE7; p.foreground=0xFF492E68; p.accent=0xFFFA477B; p.border=0xFFFF8F54; p.radius=26; break;
                default: p.background=0xFFFBF8EE; p.surface=0xFFFFFDF6; p.surface2=0xFFF3F0E5; p.foreground=0xFF343B34; p.accent=0xFF4D735B; p.border=0xFF667563; p.radius=8; p.dashed=true;
            }
            return p;
        }
    }
}
