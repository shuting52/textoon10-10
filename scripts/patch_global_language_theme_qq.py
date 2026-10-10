#!/usr/bin/env python3
"""Patch the existing PixelLab Plus smali/locale project for global UI fixes."""
from pathlib import Path
import json

ROOT = Path('/workspace/pixellabplus_custom')
SMALI = ROOT / 'decoded/smali/com/imaginstudio/imagetools/pixellab'
PLUS = SMALI / 'PlusEnhancements.smali'
LANG = SMALI / 'OfflineLanguageManager.smali'


def replace_method(path: Path, signature: str, body: str):
    text = path.read_text(encoding='utf-8')
    start = text.index(signature)
    end = text.index('.end method', start) + len('.end method')
    text = text[:start] + body.rstrip() + text[end:]
    path.write_text(text, encoding='utf-8')


plus = PLUS.read_text(encoding='utf-8')
# Stop retaining the obsolete browser-share URL in the extension class.
plus = '\n'.join(line for line in plus.split('\n') if not line.startswith('.field private static final QQ_GROUP_URL:'))
# Correct the release panel's group-join instructions.
plus = plus.replace(
    '群聊链接可在手机上通过浏览器或兼容应用打开并加入。',
    '加群入口仅跳转至 QQ 客户端；未安装 QQ 时会提示，不自动打开浏览器。',
)
# Apply the translation fallback to every rendered label, including literal bottom-toolbar labels.
needle = '    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->captureStyle(Landroid/view/View;)V\n'
if '->localizeTree(Landroid/app/Activity;Landroid/view/View;)V' not in plus:
    assert plus.count(needle) == 1
    plus = plus.replace(needle, needle + '    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->localizeTree(Landroid/app/Activity;Landroid/view/View;)V\n', 1)

localize_method = r'''.method public static localizeTree(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5
    if-eqz p1, :tree_localize_done
    instance-of v0, p1, Landroid/widget/TextView;
    if-eqz v0, :tree_localize_children
    instance-of v0, p1, Landroid/widget/EditText;
    if-eqz v0, :tree_check_canvas_text
    goto :tree_localize_children
    :tree_check_canvas_text
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v0
    const-string v1, "CustomTextView"
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :tree_translate_text
    goto :tree_localize_children
    :tree_translate_text
    move-object v0, p1
    check-cast v0, Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    if-eqz v1, :tree_localize_children
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    if-eqz v2, :tree_localize_children
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :tree_localize_children
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :tree_localize_children
    instance-of v0, p1, Landroid/view/ViewGroup;
    if-eqz v0, :tree_localize_done
    move-object v0, p1
    check-cast v0, Landroid/view/ViewGroup;
    const/4 v1, 0x0
    :tree_localize_loop
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I
    move-result v2
    if-ge v1, v2, :tree_localize_done
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
    move-result-object v2
    invoke-static {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->localizeTree(Landroid/app/Activity;Landroid/view/View;)V
    add-int/lit8 v1, v1, 0x1
    goto :tree_localize_loop
    :tree_localize_done
    return-void
.end method'''
if '.method private static localizeTree(Landroid/app/Activity;Landroid/view/View;)V' in plus:
    plus = plus.replace('.method private static localizeTree(Landroid/app/Activity;Landroid/view/View;)V', '.method public static localizeTree(Landroid/app/Activity;Landroid/view/View;)V', 1)

watch_method = r'''.method private static watchLocaleTree(Landroid/app/Activity;)V
    .registers 4
    if-eqz p0, :locale_watch_done
    const v0, 0x1020002
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
    move-result-object v0
    if-eqz v0, :locale_watch_done
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
    move-result-object v1
    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;
    if-nez v2, :locale_watch_done
    if-eqz v1, :locale_watch_create
    goto :locale_watch_done
    :locale_watch_create
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;
    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;-><init>(Landroid/app/Activity;)V
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    move-result-object v2
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z
    move-result v3
    if-eqz v3, :locale_watch_done
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :locale_watch_done
    return-void
.end method'''
if '.method private static watchLocaleTree(Landroid/app/Activity;)V' not in plus:
    insertion = '.method public static localizeTree(Landroid/app/Activity;Landroid/view/View;)V'
    pos = plus.index(insertion)
    plus = plus[:pos] + watch_method + '\n\n' + plus[pos:]

if '.method private static localizeTree(Landroid/app/Activity;Landroid/view/View;)V' not in plus and '.method public static localizeTree(Landroid/app/Activity;Landroid/view/View;)V' not in plus:
    insertion = '.method private static captureStyle(Landroid/view/View;)V'
    pos = plus.index(insertion)
    plus = plus[:pos] + localize_method + '\n\n' + plus[pos:]

# Recursively style leaf backgrounds and include ImageButtons outside the small-icon size limit.
old_icons = '''    .line 381
    :cond_6e
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_8c

    .line 382
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 383
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    .line 384
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-gt v3, v1, :cond_8c

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-gt v3, v1, :cond_8c

    iget v1, p2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 386
    :cond_8c
'''
new_icons = '''    .line 381
    :cond_6e
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :plus_theme_image_done

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :plus_theme_check_image_size

    goto :plus_theme_tint_image

    :plus_theme_check_image_size
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    if-gt v3, v1, :plus_theme_image_done

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-gt v3, v1, :plus_theme_image_done

    :plus_theme_tint_image
    iget v1, p2, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;->accent:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :plus_theme_image_done
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_8c

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-static {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->surface(Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$Palette;Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    :cond_8c
'''
if old_icons in plus:
    assert plus.count(old_icons) == 1, 'styleTree icon/background block changed unexpectedly'
    plus = plus.replace(old_icons, new_icons, 1)
else:
    assert 'plus_theme_tint_image' in plus, 'styleTree icon/background block changed unexpectedly'

# Re-localize newly inflated editor controls after layout changes. The root tag
# prevents duplicate listeners when the activity resumes more than once.
resume_start = plus.index('.method public static onMainResume(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V')
resume_end = plus.index('.end method', resume_start) + len('.end method')
resume = plus[resume_start:resume_end]
watch_call = '    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->watchLocaleTree(Landroid/app/Activity;)V'
if '->watchLocaleTree(' not in resume:
    apply_call = '    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->applyTheme(Landroid/app/Activity;)V'
    assert resume.count(apply_call) == 1, 'onMainResume theme call changed unexpectedly'
    resume = resume.replace(apply_call, apply_call + '\n' + watch_call, 1)
    plus = plus[:resume_start] + resume + plus[resume_end:]

qq_method = r'''.method private static openQqGroup(Landroid/app/Activity;)V
    .registers 5
    if-eqz p0, :group_link_done
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z
    move-result v0
    if-nez v0, :group_link_done
    :try_start_qq
    new-instance v0, Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"
    const-string v2, "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=836869262&card_type=group&source=qrcode"
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v2
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    const-string v1, "com.tencent.mobileqq"
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_qq
    .catchall {:try_start_qq .. :try_end_qq} :group_link_failed
    goto :group_link_done
    :group_link_failed
    move-exception v0
    const-string v1, "未检测到 QQ，请安装 QQ 后再加入官方群。"
    const/4 v2, 0x1
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :group_link_done
    return-void
.end method'''
PLUS.write_text(plus, encoding='utf-8')
replace_method(PLUS, '.method private static openQqGroup(Landroid/app/Activity;)V', qq_method)

watcher_path = SMALI / 'PlusEnhancements$LocaleWatcher.smali'
watcher_path.write_text(r'''.class final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

# instance fields
.field private final activity:Landroid/app/Activity;

# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;->activity:Landroid/app/Activity;
    return-void
.end method

# virtual methods
.method public onGlobalLayout()V
    .registers 3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$LocaleWatcher;->activity:Landroid/app/Activity;
    if-eqz v0, :locale_layout_done
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onThemeLayout(Landroid/app/Activity;)V
    :locale_layout_done
    return-void
.end method
''', encoding='utf-8')

# Case-insensitive fallback lets labels such as TEXT and DRAW match lowercase catalog keys.
lang_method = r'''.method public static translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    if-nez p1, :text_translate_start
    const/4 p0, 0x0
    return-object p0
    :text_translate_start
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->catalog(Landroid/content/Context;)Lorg/json/JSONObject;
    move-result-object v0
    const-string v1, "texts"
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    move-result-object v0
    if-nez v0, :text_map_ready
    return-object p1
    :text_map_ready
    const/4 v1, 0x0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :text_case_fallback
    return-object v1
    :text_case_fallback
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :text_no_translation
    return-object v1
    :text_no_translation
    return-object p1
.end method'''
replace_method(LANG, '.method public static translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;', lang_method)

# Supplement labels sometimes written directly by the bottom toolbar instead of using string resources.
locale_path = ROOT / 'locale_assets/pixellab_locales/zh-CN.json'
data = json.loads(locale_path.read_text(encoding='utf-8'))
extra = {
    'undo': '撤销', 'redo': '重做', 'layer': '图层', 'layers': '图层',
    'history': '历史记录', 'tools': '工具', 'shape': '形状', 'shapes': '形状',
    'effects': '特效', 'background': '背景', 'brush': '画笔', 'erase': '擦除',
    'more': '更多', 'text': '文本', 'draw': '绘图', 'sticker': '贴纸',
}
data.setdefault('texts', {}).update(extra)
# Keep resource-ID lookups consistent for the existing background control label.
source = json.loads((ROOT / 'string_resources.json').read_text(encoding='utf-8'))
for rid, item in source.items():
    if item.get('text', '').strip().lower() in extra:
        data.setdefault('resources', {})[str(int(rid, 16))] = extra[item['text'].strip().lower()]
locale_path.write_text(json.dumps(data, ensure_ascii=False, separators=(',', ':')) + '\n', encoding='utf-8')
print('Patched rendered-text fallback, case-insensitive translation, live layout theme/localization refresh, border-free scoped background theming, direct QQ deep link, and zh-CN toolbar terms.')
