.class public Lcom/mopub/mobileads/util/WebViews;
.super Ljava/lang/Object;
.source "WebViews.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static manageThirdPartyCookies(Landroid/webkit/WebView;)V
    .locals 3
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 89
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 93
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public static manageWebCookies()V
    .locals 3

    .line 68
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 71
    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 77
    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 81
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 84
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :goto_0
    return-void
.end method

.method public static onPause(Landroid/webkit/WebView;Z)V
    .locals 0
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    const-string p1, ""

    .line 24
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public static setDisableJSChromeClient(Landroid/webkit/WebView;)V
    .locals 1
    .param p0    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    new-instance v0, Lcom/mopub/mobileads/util/WebViews$1;

    invoke-direct {v0}, Lcom/mopub/mobileads/util/WebViews$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method
