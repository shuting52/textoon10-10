.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "AdViewController.java"


# static fields
.field static final BACKOFF_FACTOR:D = 1.5

.field static final DEFAULT_REFRESH_TIME_MILLISECONDS:I = 0xea60

.field static final MAX_REFRESH_TIME_MILLISECONDS:I = 0x927c0

.field private static final WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveRequest:Lcom/mopub/network/AdRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAdListener:Lcom/mopub/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdResponse:Lcom/mopub/network/AdResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAdWasLoaded:Z

.field mBackoffPower:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mBroadcastIdentifier:J

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentAutoRefreshStatus:Z

.field private mCustomEventClassName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mExpanded:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mIsLoading:Z

.field private mIsTesting:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMillis:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mShouldAllowAutoRefresh:Z

.field private mTimeoutMilliseconds:I

.field private mUrl:Ljava/lang/String;

.field private mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUserDataKeywords:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    .line 82
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    .line 88
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mShouldAllowAutoRefresh:Z

    .line 109
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 p1, -0x1

    .line 113
    iput p1, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    .line 114
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->mBroadcastIdentifier:J

    .line 116
    new-instance p1, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object p2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 119
    new-instance p1, Lcom/mopub/mobileads/AdViewController$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$1;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdListener:Lcom/mopub/network/AdRequest$Listener;

    .line 131
    new-instance p1, Lcom/mopub/mobileads/AdViewController$2;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$2;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    const p1, 0xea60

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 137
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->internalLoadAd()V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method private cancelRefreshTimer()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    .line 624
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 627
    invoke-static {p1}, Lcom/mopub/mobileads/AdViewController;->getShouldHonorServerDimensions(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 628
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result p1

    .line 629
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 631
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    .line 633
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/AdViewController;->WRAP_AND_CENTER_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-object p1
.end method

.method static getErrorCodeFromVolleyError(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 2
    .param p0    # Lcom/mopub/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    .line 203
    instance-of v1, p0, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 204
    sget-object p1, Lcom/mopub/mobileads/AdViewController$4;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    check-cast p0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    .line 210
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 208
    :pswitch_0
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 206
    :pswitch_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->WARMUP:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :cond_0
    if-nez v0, :cond_2

    .line 215
    invoke-static {p1}, Lcom/mopub/common/util/DeviceUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 216
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 218
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 221
    :cond_2
    iget-object p0, p0, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget p0, p0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 p1, 0x190

    if-lt p0, p1, :cond_3

    .line 222
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 225
    :cond_3
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getShouldHonorServerDimensions(Landroid/view/View;)Z
    .locals 1

    .line 105
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private internalLoadAd()V
    .locals 1

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    .line 240
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    .line 241
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Can\'t load an ad because there is no network connectivity."

    .line 247
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->generateAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .line 587
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 597
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 598
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 599
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private setAutoRefreshStatus(Z)V
    .locals 3

    .line 412
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    goto :goto_1

    :cond_1
    const-string v0, "disabled"

    .line 416
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refresh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for ad unit ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 419
    :cond_2
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    .line 420
    iget-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdWasLoaded:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    goto :goto_2

    .line 422
    :cond_3
    iget-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-nez p1, :cond_4

    .line 423
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    :cond_4
    :goto_2
    return-void
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2

    .line 101
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->sViewShouldHonorServerDimensions:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    const-string v0, "Ad failed to load."

    .line 545
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 548
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    .line 554
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->adFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method cleanup()V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    .line 467
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    :cond_1
    const/4 v0, 0x0

    .line 470
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    .line 471
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    .line 476
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 477
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    .line 478
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    return-void
.end method

.method collapse()V
    .locals 1

    const/4 v0, 0x0

    .line 433
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mExpanded:Z

    .line 434
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->resumeRefresh()V

    return-void
.end method

.method expand()V
    .locals 1

    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mExpanded:Z

    .line 429
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->pauseRefresh()V

    return-void
.end method

.method fetchAd(Ljava/lang/String;)V
    .locals 8

    .line 504
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubView()Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance v1, Lcom/mopub/network/AdRequest;

    .line 512
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    iget-object v6, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/mobileads/AdViewController;->mAdListener:Lcom/mopub/network/AdRequest$Listener;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 517
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p1

    .line 518
    invoke-virtual {p1, v1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 519
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    return-void

    :cond_1
    :goto_0
    const-string p1, "Can\'t load an ad in this ad view because it was destroyed."

    .line 506
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    return-void
.end method

.method forceRefresh()V
    .locals 0

    .line 523
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 524
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method generateAdUrl()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 533
    :cond_0
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    .line 535
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    .line 536
    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    .line 537
    invoke-virtual {v2, v3}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 538
    :goto_0
    invoke-virtual {v2, v3}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    .line 539
    :cond_2
    invoke-virtual {v2, v1}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    .line 541
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrlGenerator:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    const-string v1, "ads.mopub.com"

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdReport()Lcom/mopub/common/AdReport;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 440
    new-instance v0, Lcom/mopub/common/AdReport;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getAdTimeoutDelay()Ljava/lang/Integer;
    .locals 1

    .line 485
    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->mBroadcastIdentifier:J

    return-wide v0
.end method

.method public getCurrentAutoRefreshStatus()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    return v0
.end method

.method public getCustomEventClassName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mCustomEventClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getLocalExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 337
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMoPubView()Lcom/mopub/mobileads/MoPubView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method getRefreshTimeMillis()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 640
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .line 446
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsTesting:Z

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .locals 1

    .line 322
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    return-object v0
.end method

.method isDestroyed()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsDestroyed:Z

    return v0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    .line 234
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 235
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->internalLoadAd()V

    return-void
.end method

.method loadCustomEvent(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/MoPubView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p1, "Can\'t load an ad in this ad view because it was destroyed."

    .line 189
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/mopub/mobileads/MoPubView;->loadCustomEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 4

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    const-string v1, "MoPub"

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MoPubErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object p1

    .line 292
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading failover url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 298
    :cond_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return v0
.end method

.method loadNonJavascript(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "javascript:"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    if-eqz v0, :cond_3

    .line 266
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already loading an ad for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wait to finish."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->i(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 272
    :cond_3
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    .line 275
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->fetchAd(Ljava/lang/String;)V

    return-void
.end method

.method onAdLoadError(Lcom/mopub/volley/VolleyError;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 160
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 168
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/AdViewController;->getErrorCodeFromVolleyError(Lcom/mopub/volley/VolleyError;Landroid/content/Context;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    .line 174
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    if-ne p1, v0, :cond_1

    .line 175
    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 179
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->adDidFail(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method onAdLoadSuccess(Lcom/mopub/network/AdResponse;)V
    .locals 2
    .param p1    # Lcom/mopub/network/AdResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    .line 143
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    .line 144
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mCustomEventClassName:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    .line 148
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->mTimeoutMilliseconds:I

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRefreshTimeMillis()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 150
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->setNotLoading()V

    .line 152
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v0, v1, p1}, Lcom/mopub/mobileads/AdViewController;->loadCustomEvent(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;)V

    .line 155
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->scheduleRefreshTimerIfEnabled()V

    return-void
.end method

.method pauseRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    return-void
.end method

.method registerClick()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reload ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->loadNonJavascript(Ljava/lang/String;)V

    return-void
.end method

.method resumeRefresh()V
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mShouldAllowAutoRefresh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 402
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    :cond_0
    return-void
.end method

.method scheduleRefreshTimerIfEnabled()V
    .locals 10

    .line 558
    invoke-direct {p0}, Lcom/mopub/mobileads/AdViewController;->cancelRefreshTimer()V

    .line 559
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mCurrentAutoRefreshStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    .line 563
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    iget v8, p0, Lcom/mopub/mobileads/AdViewController;->mBackoffPower:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    mul-long v4, v4, v6

    .line 562
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 561
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method setAdContentView(Landroid/view/View;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/AdViewController$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/AdViewController$3;-><init>(Lcom/mopub/mobileads/AdViewController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mAdUnitId:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mKeywords:Ljava/lang/String;

    return-void
.end method

.method setLocalExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 568
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mLocalExtras:Ljava/util/Map;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1

    .line 344
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    return-void

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mLocation:Landroid/location/Location;

    return-void
.end method

.method setNotLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->mIsLoading:Z

    .line 305
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    invoke-virtual {v0}, Lcom/mopub/network/AdRequest;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mActiveRequest:Lcom/mopub/network/AdRequest;

    :cond_1
    return-void
.end method

.method setRefreshTimeMillis(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mRefreshTimeMillis:Ljava/lang/Integer;

    return-void
.end method

.method setShouldAllowAutoRefresh(Z)V
    .locals 0

    .line 407
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mShouldAllowAutoRefresh:Z

    .line 408
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdViewController;->setAutoRefreshStatus(Z)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->mIsTesting:Z

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .locals 1

    .line 329
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 330
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    return-void

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->mUserDataKeywords:Ljava/lang/String;

    return-void
.end method

.method trackImpression()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->mAdResponse:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
