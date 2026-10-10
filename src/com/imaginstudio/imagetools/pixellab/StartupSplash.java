package com.imaginstudio.imagetools.pixellab;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;

/** Full-screen, text-only animated launch overlay. */
public final class StartupSplash {
    private static final String PAGE = "<!doctype html>"
            + "<html lang='zh-CN'><head><meta charset='utf-8'>"
            + "<meta name='viewport' content='width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no'>"
            + "<style>"
            + "*{box-sizing:border-box}html,body{margin:0;width:100%;height:100%;overflow:hidden}"
            + "body{display:flex;align-items:center;justify-content:center;color:#eff4ff;"
            + "background:radial-gradient(ellipse at 50% 43%,#172047 0%,#0a1025 43%,#050711 100%);"
            + "font-family:system-ui,-apple-system,'Noto Sans CJK SC',sans-serif;text-align:center}"
            + ".wrap{width:100%;padding:24px;animation:arrive 1.1s cubic-bezier(.2,.8,.2,1) both}"
            + ".eyebrow{font-size:11px;letter-spacing:.48em;color:#a5b5dc;text-transform:uppercase;opacity:.88}"
            + "h1{margin:20px 0 18px;font-size:clamp(34px,10vw,54px);font-weight:800;letter-spacing:.06em;"
            + "line-height:1.12;color:#d9f7ff;background:linear-gradient(100deg,#a9f7ff,#c7a7ff 46%,#f1d5ff 70%,#8bf5dc);"
            + "-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;"
            + "filter:drop-shadow(0 0 17px rgba(124,205,255,.44));animation:glow 2.8s ease-in-out infinite alternate}"
            + ".rule{height:1px;width:min(230px,60vw);margin:0 auto 23px;background:linear-gradient(90deg,transparent,#8deaff,#c5a9ff,transparent);"
            + "box-shadow:0 0 18px rgba(141,234,255,.58)}"
            + ".caption{font-size:13px;letter-spacing:.16em;color:#c0cbed;margin:0 0 28px}"
            + ".timer{font-variant-numeric:tabular-nums;font-size:14px;letter-spacing:.12em;color:#b9c9ef}"
            + ".timer b{display:inline-block;min-width:1.2em;font-size:25px;color:#f2eaff;text-shadow:0 0 14px #a98aff}"
            + ".track{width:min(180px,48vw);height:2px;margin:17px auto 0;background:#202843;overflow:hidden}"
            + ".bar{height:100%;width:100%;transform-origin:left;transform:scaleX(0);background:linear-gradient(90deg,#83f2ee,#c19bff);"
            + "box-shadow:0 0 9px #9edcff;animation:progress 5s linear forwards}"
            + "@keyframes arrive{from{opacity:0;transform:translateY(18px) scale(.97)}to{opacity:1;transform:none}}"
            + "@keyframes glow{from{filter:drop-shadow(0 0 9px rgba(124,205,255,.28))}to{filter:drop-shadow(0 0 23px rgba(174,150,255,.7))}}"
            + "@keyframes progress{to{transform:scaleX(1)}}"
            + "@media(prefers-reduced-motion:reduce){*,*::before,*::after{animation-duration:.01ms!important;animation-iteration-count:1!important}}"
            + "</style></head><body><main class='wrap'><div class='eyebrow'>WELCOME TO</div>"
            + "<h1>陈淑婷PixelLab</h1><div class='rule'></div>"
            + "<p class='caption'>像素 · 创意 · 灵感</p>"
            + "<div class='timer'><b id='seconds'>5</b><span> 秒后进入软件</span></div>"
            + "<div class='track'><div class='bar'></div></div></main>"
            + "<script>(function(){var n=5,e=document.getElementById('seconds');"
            + "setInterval(function(){n=Math.max(0,n-1);e.textContent=String(n);},1000);})();</script>"
            + "</body></html>";

    private StartupSplash() {}

    public static void show(final Activity activity) {
        try {
            Intent entry = activity.getIntent();
            if (entry != null && entry.getAction() != null && !Intent.ACTION_MAIN.equals(entry.getAction())) return;
            final Dialog dialog = new Dialog(activity, android.R.style.Theme_Black_NoTitleBar_Fullscreen);
            WebView web = new WebView(activity);
            web.setBackgroundColor(Color.rgb(5, 7, 17));
            WebSettings settings = web.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setDefaultTextEncodingName("UTF-8");
            web.loadDataWithBaseURL(null, PAGE, "text/html", "UTF-8", null);
            dialog.setContentView(web);
            dialog.setCancelable(false);
            dialog.setCanceledOnTouchOutside(false);
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(Color.rgb(5, 7, 17)));
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
                window.setGravity(Gravity.FILL);
            }
            dialog.show();
            if (window != null) {
                window.setLayout(WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.MATCH_PARENT);
                View decor = window.getDecorView();
                decor.setSystemUiVisibility(5894);
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                @Override public void run() {
                    try {
                        if (!activity.isFinishing() && dialog.isShowing()) dialog.dismiss();
                    } catch (Throwable ignored) { }
                }
            }, 5000L);
        } catch (Throwable ignored) {
            // Never block the original app if WebView or window creation fails.
        }
    }
}
