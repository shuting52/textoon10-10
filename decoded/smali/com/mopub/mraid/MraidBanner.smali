.class Lcom/mopub/mraid/MraidBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "MraidBanner.java"


# instance fields
.field private mBannerImpressionPixelCountEnabled:Z

.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMraidController:Lcom/mopub/mraid/MraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerImpressionPixelCountEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mopub/mraid/MraidBanner;Lcom/mopub/common/ExternalViewabilitySessionManager;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidBanner;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerImpressionPixelCountEnabled:Z

    return p0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Html-Response-Body"

    .line 150
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method isBannerImpressionPixelCountEnabled()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 163
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerImpressionPixelCountEnabled:Z

    return v0
.end method

.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p2, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 41
    invoke-direct {p0, p4}, Lcom/mopub/mraid/MraidBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Html-Response-Body"

    .line 42
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p4, "Banner-Impression-Pixel-Count-Enabled"

    .line 48
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 50
    instance-of v0, p4, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 51
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    iput-boolean p4, p0, Lcom/mopub/mraid/MraidBanner;->mBannerImpressionPixelCountEnabled:Z

    :cond_0
    :try_start_0
    const-string p4, "mopub-intent-ad-report"

    .line 55
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mopub/common/AdReport;

    .line 56
    sget-object p4, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    invoke-static {p1, p3, p4}, Lcom/mopub/mobileads/factories/MraidControllerFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)Lcom/mopub/mraid/MraidController;

    move-result-object p3

    iput-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    iget-object p4, p0, Lcom/mopub/mraid/MraidBanner;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {p3, p4}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 65
    iget-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance p4, Lcom/mopub/mraid/MraidBanner$1;

    invoke-direct {p4, p0}, Lcom/mopub/mraid/MraidBanner$1;-><init>(Lcom/mopub/mraid/MraidBanner;)V

    invoke-virtual {p3, p4}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 95
    iget-object p3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    const/4 p4, 0x0

    new-instance v0, Lcom/mopub/mraid/MraidBanner$2;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mraid/MraidBanner$2;-><init>(Lcom/mopub/mraid/MraidBanner;Landroid/content/Context;)V

    invoke-virtual {p3, p4, p2, v0}, Lcom/mopub/mraid/MraidController;->fillContent(Ljava/lang/Long;Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MRAID banner creating failed:"

    .line 59
    invoke-static {p2, p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 118
    iput-object v1, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 122
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->destroy()V

    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 156
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    :cond_0
    return-void
.end method

.method protected trackMpxAndThirdPartyImpressions()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->loadJavascript(Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerImpressionPixelCountEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->getWeakActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/mopub/mraid/MraidBanner;->mExternalViewabilitySessionManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v1, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startDeferredDisplaySession(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string v0, "Lost the activity for deferred Viewability tracking. Dropping session."

    .line 144
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
