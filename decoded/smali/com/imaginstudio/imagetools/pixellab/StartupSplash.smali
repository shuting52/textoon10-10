.class public final Lcom/imaginstudio/imagetools/pixellab/StartupSplash;
.super Ljava/lang/Object;
.source "StartupSplash.java"


# static fields
.field private static final PAGE:Ljava/lang/String; = "<!doctype html><html lang=\'zh-CN\'><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no\'><style>*{box-sizing:border-box}html,body{margin:0;width:100%;height:100%;overflow:hidden}body{display:flex;align-items:center;justify-content:center;color:#eff4ff;background:radial-gradient(ellipse at 50% 43%,#172047 0%,#0a1025 43%,#050711 100%);font-family:system-ui,-apple-system,\'Noto Sans CJK SC\',sans-serif;text-align:center}.wrap{width:100%;padding:24px;animation:arrive 1.1s cubic-bezier(.2,.8,.2,1) both}.eyebrow{font-size:11px;letter-spacing:.48em;color:#a5b5dc;text-transform:uppercase;opacity:.88}h1{margin:20px 0 18px;font-size:clamp(34px,10vw,54px);font-weight:800;letter-spacing:.06em;line-height:1.12;color:#d9f7ff;background:linear-gradient(100deg,#a9f7ff,#c7a7ff 46%,#f1d5ff 70%,#8bf5dc);-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;filter:drop-shadow(0 0 17px rgba(124,205,255,.44));animation:glow 2.8s ease-in-out infinite alternate}.rule{height:1px;width:min(230px,60vw);margin:0 auto 23px;background:linear-gradient(90deg,transparent,#8deaff,#c5a9ff,transparent);box-shadow:0 0 18px rgba(141,234,255,.58)}.caption{font-size:13px;letter-spacing:.16em;color:#c0cbed;margin:0 0 28px}.timer{font-variant-numeric:tabular-nums;font-size:14px;letter-spacing:.12em;color:#b9c9ef}.timer b{display:inline-block;min-width:1.2em;font-size:25px;color:#f2eaff;text-shadow:0 0 14px #a98aff}.track{width:min(180px,48vw);height:2px;margin:17px auto 0;background:#202843;overflow:hidden}.bar{height:100%;width:100%;transform-origin:left;transform:scaleX(0);background:linear-gradient(90deg,#83f2ee,#c19bff);box-shadow:0 0 9px #9edcff;animation:progress 5s linear forwards}@keyframes arrive{from{opacity:0;transform:translateY(18px) scale(.97)}to{opacity:1;transform:none}}@keyframes glow{from{filter:drop-shadow(0 0 9px rgba(124,205,255,.28))}to{filter:drop-shadow(0 0 23px rgba(174,150,255,.7))}}@keyframes progress{to{transform:scaleX(1)}}@media(prefers-reduced-motion:reduce){*,*::before,*::after{animation-duration:.01ms!important;animation-iteration-count:1!important}}</style></head><body><main class=\'wrap\'><div class=\'eyebrow\'>WELCOME TO</div><h1>\u9648\u6dd1\u5a77PixelLab</h1><div class=\'rule\'></div><p class=\'caption\'>\u50cf\u7d20 \u00b7 \u521b\u610f \u00b7 \u7075\u611f</p><div class=\'timer\'><b id=\'seconds\'>5</b><span> \u79d2\u540e\u8fdb\u5165\u8f6f\u4ef6</span></div><div class=\'track\'><div class=\'bar\'></div></div></main><script>(function(){var n=5,e=document.getElementById(\'seconds\');setInterval(function(){n=Math.max(0,n-1);e.textContent=String(n);},1000);})();</script></body></html>"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 11

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    .line 60
    :cond_19
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x103000a

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 61
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    const/16 v1, 0x11

    const/4 v8, 0x7

    const/4 v9, 0x5

    invoke-static {v9, v8, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 63
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 64
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 65
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 66
    const-string v4, "<!doctype html><html lang=\'zh-CN\'><head><meta charset=\'utf-8\'><meta name=\'viewport\' content=\'width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no\'><style>*{box-sizing:border-box}html,body{margin:0;width:100%;height:100%;overflow:hidden}body{display:flex;align-items:center;justify-content:center;color:#eff4ff;background:radial-gradient(ellipse at 50% 43%,#172047 0%,#0a1025 43%,#050711 100%);font-family:system-ui,-apple-system,\'Noto Sans CJK SC\',sans-serif;text-align:center}.wrap{width:100%;padding:24px;animation:arrive 1.1s cubic-bezier(.2,.8,.2,1) both}.eyebrow{font-size:11px;letter-spacing:.48em;color:#a5b5dc;text-transform:uppercase;opacity:.88}h1{margin:20px 0 18px;font-size:clamp(34px,10vw,54px);font-weight:800;letter-spacing:.06em;line-height:1.12;color:#d9f7ff;background:linear-gradient(100deg,#a9f7ff,#c7a7ff 46%,#f1d5ff 70%,#8bf5dc);-webkit-background-clip:text;background-clip:text;-webkit-text-fill-color:transparent;filter:drop-shadow(0 0 17px rgba(124,205,255,.44));animation:glow 2.8s ease-in-out infinite alternate}.rule{height:1px;width:min(230px,60vw);margin:0 auto 23px;background:linear-gradient(90deg,transparent,#8deaff,#c5a9ff,transparent);box-shadow:0 0 18px rgba(141,234,255,.58)}.caption{font-size:13px;letter-spacing:.16em;color:#c0cbed;margin:0 0 28px}.timer{font-variant-numeric:tabular-nums;font-size:14px;letter-spacing:.12em;color:#b9c9ef}.timer b{display:inline-block;min-width:1.2em;font-size:25px;color:#f2eaff;text-shadow:0 0 14px #a98aff}.track{width:min(180px,48vw);height:2px;margin:17px auto 0;background:#202843;overflow:hidden}.bar{height:100%;width:100%;transform-origin:left;transform:scaleX(0);background:linear-gradient(90deg,#83f2ee,#c19bff);box-shadow:0 0 9px #9edcff;animation:progress 5s linear forwards}@keyframes arrive{from{opacity:0;transform:translateY(18px) scale(.97)}to{opacity:1;transform:none}}@keyframes glow{from{filter:drop-shadow(0 0 9px rgba(124,205,255,.28))}to{filter:drop-shadow(0 0 23px rgba(174,150,255,.7))}}@keyframes progress{to{transform:scaleX(1)}}@media(prefers-reduced-motion:reduce){*,*::before,*::after{animation-duration:.01ms!important;animation-iteration-count:1!important}}</style></head><body><main class=\'wrap\'><div class=\'eyebrow\'>WELCOME TO</div><h1>\u9648\u6dd1\u5a77PixelLab</h1><div class=\'rule\'></div><p class=\'caption\'>\u50cf\u7d20 \u00b7 \u521b\u610f \u00b7 \u7075\u611f</p><div class=\'timer\'><b id=\'seconds\'>5</b><span> \u79d2\u540e\u8fdb\u5165\u8f6f\u4ef6</span></div><div class=\'track\'><div class=\'bar\'></div></div></main><script>(function(){var n=5,e=document.getElementById(\'seconds\');setInterval(function(){n=Math.max(0,n-1);e.textContent=String(n);},1000);})();</script></body></html>"

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 70
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_6f

    .line 72
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v9, v8, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/16 v1, 0x400

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 74
    const/16 v1, 0x77

    invoke-virtual {v2, v1}, Landroid/view/Window;->setGravity(I)V

    .line 76
    :cond_6f
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    if-eqz v2, :cond_81

    .line 78
    const/4 v1, -0x1

    invoke-virtual {v2, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 79
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 80
    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 82
    :cond_81
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;

    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/StartupSplash$1;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_94
    .catchall {:try_start_0 .. :try_end_94} :catchall_95

    .line 91
    goto :goto_96

    .line 89
    :catchall_95
    move-exception v0

    .line 92
    :goto_96
    return-void
.end method
