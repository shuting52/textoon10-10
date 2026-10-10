.class public Lcom/mopub/mobileads/BaseHtmlWebView;
.super Lcom/mopub/mobileads/BaseWebView;
.source "BaseHtmlWebView.java"

# interfaces
.implements Lcom/mopub/mobileads/ViewGestureDetector$UserClickListener;


# instance fields
.field private mClicked:Z

.field private final mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->disableScrollingAndZoom()V

    .line 25
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 27
    new-instance v0, Lcom/mopub/mobileads/ViewGestureDetector;

    invoke-direct {v0, p1, p0, p2}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V

    iput-object v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    .line 28
    iget-object p1, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/ViewGestureDetector;->setUserClickListener(Lcom/mopub/mobileads/ViewGestureDetector$UserClickListener;)V

    .line 30
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/BaseHtmlWebView;->enablePlugins(Z)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/BaseHtmlWebView;)Lcom/mopub/mobileads/ViewGestureDetector;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mViewGestureDetector:Lcom/mopub/mobileads/ViewGestureDetector;

    return-object p0
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setVerticalScrollBarEnabled(Z)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setVerticalScrollbarOverlay(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method


# virtual methods
.method public init(Z)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView;->initializeOnTouchListener(Z)V

    return-void
.end method

.method initializeOnTouchListener(Z)V
    .locals 1

    .line 84
    new-instance v0, Lcom/mopub/mobileads/BaseHtmlWebView$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/BaseHtmlWebView$1;-><init>(Lcom/mopub/mobileads/BaseHtmlWebView;Z)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/BaseHtmlWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method loadHtmlResponse(Ljava/lang/String;)V
    .locals 8

    .line 79
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

    invoke-virtual/range {v2 .. v7}, Lcom/mopub/mobileads/BaseHtmlWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "javascript:"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-super {p0, p1}, Lcom/mopub/mobileads/BaseWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onResetUserClick()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mClicked:Z

    return-void
.end method

.method public onUserClick()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mClicked:Z

    return-void
.end method

.method public stopLoading()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#stopLoading() called after destroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseHtmlWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#getSettings() returned null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    invoke-super {p0}, Lcom/mopub/mobileads/BaseWebView;->stopLoading()V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public wasClicked()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/mopub/mobileads/BaseHtmlWebView;->mClicked:Z

    return v0
.end method
