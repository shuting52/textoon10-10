package com.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

/** Offline application-language selector and string-catalog loader. */
public final class OfflineLanguageManager {
    private static final String PREFS = "pixellabplus_offline_language";
    private static final String KEY_LOCALE = "locale";
    private static final String DEFAULT_LOCALE = "zh-CN";
    private static final String[] CODES = {
        "zh-CN", "zh-TW", "en", "fi", "ja", "ko", "fr", "de", "es",
        "pt", "ru", "ar", "hi", "id", "th", "vi", "it", "tr"
    };
    private static final String[] LABELS = {
        "简体中文", "繁體中文", "English", "Suomi", "日本語", "한국어",
        "Français", "Deutsch", "Español", "Português", "Русский", "العربية",
        "हिन्दी", "Bahasa Indonesia", "ไทย", "Tiếng Việt", "Italiano", "Türkçe"
    };
    private static final String[] MENU_LABELS = {
        "语言", "語言", "Language", "Kieli", "言語", "언어", "Langue", "Sprache",
        "Idioma", "Idioma", "Язык", "اللغة", "भाषा", "Bahasa", "ภาษา", "Ngôn ngữ", "Lingua", "Dil"
    };
    private static final String[] DIALOG_TITLES = {
        "应用语言", "應用程式語言", "App language", "Sovelluksen kieli", "アプリの言語", "앱 언어",
        "Langue de l’application", "App-Sprache", "Idioma de la aplicación", "Idioma do aplicativo",
        "Язык приложения", "لغة التطبيق", "ऐप की भाषा", "Bahasa aplikasi", "ภาษาของแอป",
        "Ngôn ngữ ứng dụng", "Lingua dell’app", "Uygulama dili"
    };
    private static final String[] CANCEL_LABELS = {
        "取消", "取消", "Cancel", "Peruuta", "キャンセル", "취소", "Annuler", "Abbrechen",
        "Cancelar", "Cancelar", "Отмена", "إلغاء", "रद्द करें", "Batal", "ยกเลิก", "Hủy", "Annulla", "İptal"
    };
    private static final Map<String, JSONObject> CATALOGS = new ConcurrentHashMap<String, JSONObject>();
    private static final Map<Context, Resources> WRAPPERS = new WeakHashMap<Context, Resources>();

    private OfflineLanguageManager() {}

    public static Resources wrap(Context context, Resources base) {
        if (context == null || base == null || base instanceof LocalizedResources) return base;
        synchronized (WRAPPERS) {
            Resources cached = WRAPPERS.get(context);
            if (cached instanceof LocalizedResources && ((LocalizedResources) cached).getDelegate() == base) return cached;
            Context app = context.getApplicationContext();
            if (app == null) app = context;
            Resources wrapped = new LocalizedResources(app, base);
            WRAPPERS.put(context, wrapped);
            return wrapped;
        }
    }

    public static String getLocale(Context context) {
        if (context == null) return DEFAULT_LOCALE;
        String code = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(KEY_LOCALE, DEFAULT_LOCALE);
        return isSupported(code) ? code : DEFAULT_LOCALE;
    }

    private static boolean isSupported(String code) {
        return Arrays.asList(CODES).contains(code);
    }

    private static int selectedIndex(Context context) {
        String current = getLocale(context);
        for (int i = 0; i < CODES.length; i++) if (CODES[i].equals(current)) return i;
        return 0;
    }

    public static String getLanguageMenuLabel(Context context) {
        return MENU_LABELS[selectedIndex(context)];
    }

    public static Locale getJavaLocale(Context context) {
        String code = getLocale(context);
        String[] parts = code.split("-", 2);
        return parts.length > 1 ? new Locale(parts[0], parts[1]) : new Locale(parts[0]);
    }

    public static String translateResource(Context context, int resourceId) {
        JSONObject values = catalog(context).optJSONObject("resources");
        if (values == null) return null;
        String value = values.optString(Integer.toString(resourceId), null);
        return value == null || value.length() == 0 ? null : value;
    }

    public static String translateText(Context context, String source) {
        if (source == null) return null;
        JSONObject values = catalog(context).optJSONObject("texts");
        if (values == null) return source;
        String translated = values.optString(source, null);
        if (translated != null) return translated;
        int start = 0;
        int end = source.length();
        while (start < end && Character.isWhitespace(source.charAt(start))) start++;
        while (end > start && Character.isWhitespace(source.charAt(end - 1))) end--;
        String key = source.substring(start, end).toLowerCase(Locale.ROOT);
        translated = values.optString(key, null);
        if (translated == null) return source;
        return source.substring(0, start) + translated + source.substring(end);
    }

    public static String[] translateArray(Context context, int resourceId, String[] source) {
        if (source == null) return null;
        JSONObject values = catalog(context).optJSONObject("arrays");
        JSONArray translated = values == null ? null : values.optJSONArray(Integer.toString(resourceId));
        String[] result = new String[source.length];
        if (translated != null && translated.length() == source.length) {
            for (int i = 0; i < source.length; i++) result[i] = translated.optString(i, source[i]);
        } else {
            for (int i = 0; i < source.length; i++) result[i] = translateText(context, source[i]);
        }
        return result;
    }

    private static JSONObject catalog(Context context) {
        if (context == null) return new JSONObject();
        String locale = getLocale(context);
        JSONObject cached = CATALOGS.get(locale);
        if (cached != null) return cached;
        JSONObject loaded = new JSONObject();
        if (!"en".equals(locale)) {
            InputStream in = null;
            try {
                in = context.getAssets().open("pixellab_locales/" + locale + ".json");
                ByteArrayOutputStream out = new ByteArrayOutputStream();
                byte[] buffer = new byte[8192];
                int n;
                while ((n = in.read(buffer)) != -1) out.write(buffer, 0, n);
                loaded = new JSONObject(new String(out.toByteArray(), "UTF-8"));
            } catch (Throwable ignored) {
                loaded = new JSONObject();
            } finally {
                if (in != null) try { in.close(); } catch (Throwable ignored) {}
            }
        }
        JSONObject prior = CATALOGS.putIfAbsent(locale, loaded);
        return prior == null ? loaded : prior;
    }

    public static void showPicker(final Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        final int checked = selectedIndex(activity);
        new AlertDialog.Builder(activity)
            .setTitle(DIALOG_TITLES[checked])
            .setSingleChoiceItems(LABELS, checked, new DialogInterface.OnClickListener() {
                @Override public void onClick(DialogInterface dialog, int which) {
                    if (which < 0 || which >= CODES.length) return;
                    String selected = CODES[which];
                    String old = getLocale(activity);
                    if (!selected.equals(old)) {
                        SharedPreferences.Editor editor = activity.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit();
                        editor.putString(KEY_LOCALE, selected).apply();
                        synchronized (WRAPPERS) { WRAPPERS.remove(activity); }
                        CATALOGS.remove(selected);
                        dialog.dismiss();
                        if (!activity.isFinishing()) activity.recreate();
                    } else {
                        dialog.dismiss();
                    }
                }
            })
            .setNegativeButton(CANCEL_LABELS[checked], null)
            .show();
    }
}
