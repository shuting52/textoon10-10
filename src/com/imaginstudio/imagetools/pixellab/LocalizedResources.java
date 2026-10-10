package com.imaginstudio.imagetools.pixellab;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import java.util.Locale;

/** Delegating Resources wrapper that resolves app text through bundled offline catalogs. */
public final class LocalizedResources extends Resources {
    private final Resources delegate;
    private final Context context;

    public LocalizedResources(Context context, Resources base) {
        super(base.getAssets(), base.getDisplayMetrics(), localeConfiguration(base.getConfiguration(), context));
        this.delegate = base;
        this.context = context;
    }

    private static Configuration localeConfiguration(Configuration source, Context context) {
        Configuration config = new Configuration(source);
        Locale locale = OfflineLanguageManager.getJavaLocale(context);
        if (Build.VERSION.SDK_INT >= 17) {
            config.setLocale(locale);
            config.setLayoutDirection(locale);
        } else {
            config.locale = locale;
        }
        return config;
    }

    Resources getDelegate() { return delegate; }

    @Override public CharSequence getText(int id) {
        CharSequence original = delegate.getText(id);
        String translated = OfflineLanguageManager.translateResource(context, id);
        if (translated != null) return translated;
        String fallback = OfflineLanguageManager.translateText(context, original.toString());
        return fallback != null && !fallback.equals(original.toString()) ? fallback : original;
    }

    @Override public CharSequence getText(int id, CharSequence def) {
        try { return getText(id); } catch (Resources.NotFoundException e) { return def; }
    }

    @Override public String getString(int id) {
        return getText(id).toString();
    }

    @Override public String getString(int id, Object... formatArgs) {
        String format = getString(id);
        if (formatArgs == null || formatArgs.length == 0) return format;
        try {
            return String.format(OfflineLanguageManager.getJavaLocale(context), format, formatArgs);
        } catch (RuntimeException e) {
            return delegate.getString(id, formatArgs);
        }
    }

    @Override public String[] getStringArray(int id) {
        String[] source = delegate.getStringArray(id);
        return OfflineLanguageManager.translateArray(context, id, source);
    }

    @Override public CharSequence[] getTextArray(int id) {
        CharSequence[] source = delegate.getTextArray(id);
        String[] values = new String[source.length];
        for (int i = 0; i < source.length; i++) values[i] = source[i].toString();
        String[] translated = OfflineLanguageManager.translateArray(context, id, values);
        CharSequence[] result = new CharSequence[source.length];
        for (int i = 0; i < result.length; i++) result[i] = translated[i];
        return result;
    }

    @Override public CharSequence getQuantityText(int id, int quantity) {
        CharSequence source = delegate.getQuantityText(id, quantity);
        return OfflineLanguageManager.translateText(context, source.toString());
    }

    @Override public String getQuantityString(int id, int quantity) {
        String source = delegate.getQuantityString(id, quantity);
        return OfflineLanguageManager.translateText(context, source);
    }

    @Override public String getQuantityString(int id, int quantity, Object... formatArgs) {
        String format = getQuantityString(id, quantity);
        if (formatArgs == null || formatArgs.length == 0) return format;
        try {
            return String.format(OfflineLanguageManager.getJavaLocale(context), format, formatArgs);
        } catch (RuntimeException e) {
            return delegate.getQuantityString(id, quantity, formatArgs);
        }
    }
}
