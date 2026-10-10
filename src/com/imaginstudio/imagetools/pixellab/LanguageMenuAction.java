package com.imaginstudio.imagetools.pixellab;

import android.app.Activity;

public final class LanguageMenuAction implements Runnable {
    private final Activity activity;
    public LanguageMenuAction(Activity activity) { this.activity = activity; }
    @Override public void run() { OfflineLanguageManager.showPicker(activity); }
}
