.class public Lcom/mopub/mobileads/MoPubActivity;
.super Lcom/mopub/mobileads/BaseInterstitialActivity;
.source "MoPubActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;
    }
.end annotation


# instance fields
.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubActivity;)Lcom/mopub/mobileads/HtmlInterstitialWebView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object p0
.end method

.method static createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/MoPubActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "Html-Response-Body"

    .line 61
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "Scrollable"

    .line 62
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "Clickthrough-Url"

    .line 63
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "Redirect-Url"

    .line 64
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "broadcastIdentifier"

    .line 65
    invoke-virtual {v0, p0, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "mopub-intent-ad-report"

    .line 66
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "com_mopub_orientation"

    .line 67
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 68
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static preRenderHtml(Lcom/mopub/mobileads/Interstitial;Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object p2

    const/4 p5, 0x0

    .line 85
    invoke-virtual {p2, p5}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enablePlugins(Z)V

    .line 86
    invoke-virtual {p2}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enableJavascriptCaching()V

    .line 88
    new-instance p5, Lcom/mopub/mobileads/MoPubActivity$1;

    invoke-direct {p5, p3}, Lcom/mopub/mobileads/MoPubActivity$1;-><init>(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V

    invoke-virtual {p2, p5}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    new-instance p3, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {p3, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x1

    .line 103
    invoke-virtual {p3, p1, p2, p5}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    .line 105
    invoke-virtual {p2, p4}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 106
    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1, p0, p2, p3}, Lcom/mopub/mobileads/WebViewCacheService;->storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)V
    .locals 0

    .line 48
    invoke-static/range {p0 .. p8}, Lcom/mopub/mobileads/MoPubActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/AdReport;ZLjava/lang/String;Ljava/lang/String;Lcom/mopub/common/CreativeOrientation;J)Landroid/content/Intent;

    move-result-object p1

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MoPubActivity"

    const-string p1, "MoPubActivity not found - did you declare it in AndroidManifest.xml?"

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 9

    .line 112
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Scrollable"

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "Redirect-Url"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "Clickthrough-Url"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "Html-Response-Body"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 124
    invoke-static {v1}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {v1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v3

    instance-of v3, v3, Lcom/mopub/mobileads/HtmlInterstitialWebView;

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/HtmlInterstitialWebView;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 127
    iget-object v3, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    new-instance v4, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    .line 128
    invoke-virtual {v0}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    .line 127
    invoke-virtual/range {v3 .. v8}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->init(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->enablePlugins(Z)V

    .line 130
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v2, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v2}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0

    :cond_1
    const-string v1, "WebView cache miss. Recreating the WebView."

    .line 138
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/MoPubActivity;->mAdReport:Lcom/mopub/common/AdReport;

    new-instance v5, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;

    invoke-direct {v5, p0}, Lcom/mopub/mobileads/MoPubActivity$BroadcastingInterstitialListener;-><init>(Lcom/mopub/mobileads/MoPubActivity;)V

    invoke-static/range {v3 .. v8}, Lcom/mopub/mobileads/factories/HtmlInterstitialWebViewFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;ZLjava/lang/String;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlInterstitialWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    .line 142
    new-instance v1, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v1, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 143
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v1, p0, v3, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)V

    .line 144
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadHtmlResponse(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com_mopub_orientation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    instance-of v0, p1, Lcom/mopub/common/CreativeOrientation;

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    check-cast p1, Lcom/mopub/common/CreativeOrientation;

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    sget-object p1, Lcom/mopub/common/CreativeOrientation;->UNDEFINED:Lcom/mopub/common/CreativeOrientation;

    .line 160
    :goto_1
    invoke-static {p0, p1}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 162
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p1, p0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p1, "com.mopub.action.interstitial.show"

    invoke-static {p0, v0, v1, p1}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->loadUrl(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubActivity;->mHtmlInterstitialWebView:Lcom/mopub/mobileads/HtmlInterstitialWebView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/HtmlInterstitialWebView;->destroy()V

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.mopub.action.interstitial.dismiss"

    invoke-static {p0, v0, v1, v2}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 179
    invoke-super {p0}, Lcom/mopub/mobileads/BaseInterstitialActivity;->onDestroy()V

    return-void
.end method
