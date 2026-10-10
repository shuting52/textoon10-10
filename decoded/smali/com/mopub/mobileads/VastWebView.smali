.class Lcom/mopub/mobileads/VastWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "VastWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;,
        Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
    }
.end annotation


# instance fields
.field mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/mopub/mobileads/VastWebView;->disableScrollingAndZoom()V

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->enablePlugins(Z)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setBackgroundColor(I)V

    .line 35
    new-instance p1, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/VastWebView$VastWebViewOnTouchListener;-><init>(Lcom/mopub/mobileads/VastWebView;)V

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 36
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastWebView;->setId(I)V

    return-void
.end method

.method static createView(Landroid/content/Context;Lcom/mopub/mobileads/VastResource;)Lcom/mopub/mobileads/VastWebView;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/VastResource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 67
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    new-instance v0, Lcom/mopub/mobileads/VastWebView;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/VastWebView;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastResource;->initializeWebView(Lcom/mopub/mobileads/VastWebView;)V

    return-object v0
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setVerticalScrollBarEnabled(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setVerticalScrollbarOverlay(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastWebView;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method getVastWebViewClickListener()Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    return-object v0
.end method

.method loadData(Ljava/lang/String;)V
    .locals 8

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/mobileads/VastWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    iput-object p1, p0, Lcom/mopub/mobileads/VastWebView;->mVastWebViewClickListener:Lcom/mopub/mobileads/VastWebView$VastWebViewClickListener;

    return-void
.end method
