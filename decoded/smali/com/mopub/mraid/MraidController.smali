.class public Lcom/mopub/mraid/MraidController;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;,
        Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;,
        Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;,
        Lcom/mopub/mraid/MraidController$UseCustomCloseListener;,
        Lcom/mopub/mraid/MraidController$MraidListener;
    }
.end annotation


# instance fields
.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mAllowOrientationChange:Z

.field private final mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDefaultAdContainer:Landroid/widget/FrameLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

.field private mIsPaused:Z

.field private final mMraidBridge:Lcom/mopub/mraid/MraidBridge;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

.field private mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOriginalActivityOrientation:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPlacementType:Lcom/mopub/mraid/PlacementType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

.field private mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mViewState:Lcom/mopub/mraid/ViewState;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    new-instance v4, Lcom/mopub/mraid/MraidBridge;

    invoke-direct {v4, p2, p3}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v5, Lcom/mopub/mraid/MraidBridge;

    sget-object v0, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    invoke-direct {v5, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V

    new-instance v6, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-direct {v6}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/mraid/MraidBridge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/mraid/MraidBridge;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 111
    new-instance v0, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 120
    sget-object v0, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 184
    new-instance v0, Lcom/mopub/mraid/MraidController$3;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$3;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 255
    new-instance v0, Lcom/mopub/mraid/MraidController$4;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$4;-><init>(Lcom/mopub/mraid/MraidController;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    .line 140
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 141
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    .line 142
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 143
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    .line 150
    :goto_0
    iput-object p3, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    .line 151
    iput-object p4, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    .line 152
    iput-object p5, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    .line 153
    iput-object p6, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    .line 155
    sget-object p1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 157
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 158
    new-instance p2, Lcom/mopub/mraid/MraidScreenMetrics;

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {p2, p3, p1}, Lcom/mopub/mraid/MraidScreenMetrics;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 159
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    .line 160
    new-instance p1, Lcom/mopub/common/CloseableLayout;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    .line 161
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance p2, Lcom/mopub/mraid/MraidController$1;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$1;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p1, p2}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 168
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 169
    new-instance p2, Lcom/mopub/mraid/MraidController$2;

    invoke-direct {p2, p0}, Lcom/mopub/mraid/MraidController$2;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 179
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 180
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V

    .line 181
    new-instance p1, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {p1}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidController$MraidListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/ViewState;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidScreenMetrics;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/mraid/MraidController;)Landroid/view/ViewGroup;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mopub/mraid/MraidController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mopub/mraid/MraidController;)I
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getDisplayRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidBridge;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mopub/mraid/MraidController;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/MraidNativeCommandHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mopub/mraid/MraidController;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->isInlineVideoAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/mopub/mraid/MraidController;)Lcom/mopub/mraid/PlacementType;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    return-object p0
.end method

.method private getAndMemoizeRootView()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 910
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 404
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method private getRootView()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-object v0

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 903
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    :goto_0
    return-object v0
.end method

.method private hydrateMraidWebView(Ljava/lang/Long;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)Z
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 380
    invoke-static {p1}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {p1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    instance-of v0, v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWebView()Lcom/mopub/mobileads/BaseWebView;

    move-result-object v0

    check-cast v0, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 383
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->enablePlugins(Z)V

    if-eqz p2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;->onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    :cond_0
    return v1

    :cond_1
    const-string p1, "WebView cache miss. Creating a new MraidWebView."

    .line 391
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 392
    new-instance p1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz p2, :cond_2

    .line 395
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;->onReady(Lcom/mopub/mraid/MraidBridge$MraidWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isInlineVideoAvailable()Z
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isInlineVideoAvailable(Landroid/app/Activity;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;)V
    .locals 1
    .param p1    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 670
    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID state set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 677
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    .line 678
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 681
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->notifyViewState(Lcom/mopub/mraid/ViewState;)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v1, :cond_3

    .line 686
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne p1, v1, :cond_1

    .line 687
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidController$MraidListener;->onExpand()V

    goto :goto_0

    .line 688
    :cond_1
    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_2

    .line 689
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    goto :goto_0

    .line 690
    :cond_2
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne p1, v0, :cond_3

    .line 691
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidController$MraidListener;->onClose()V

    .line 695
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateScreenMetricsAsync(Ljava/lang/Runnable;)V
    .locals 5
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 562
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 565
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->waitFor([Landroid/view/View;)Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    move-result-object v1

    new-instance v2, Lcom/mopub/mraid/MraidController$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/mopub/mraid/MraidController$7;-><init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->start(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method applyOrientation()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    sget-object v1, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    if-ne v0, v1, :cond_2

    .line 940
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 947
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    const-string v1, "Unable to set MRAID expand orientation to \'none\'; expected passed in Activity Context."

    invoke-direct {v0, v1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    goto :goto_0

    .line 957
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->lockOrientation(I)V

    :goto_0
    return-void
.end method

.method clampInt(III)I
    .locals 0

    .line 699
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 3

    .line 638
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetricsWaiter:Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;->cancelLastRequest()V

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    throw v0

    .line 649
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 650
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidController;->pause(Z)V

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 657
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 658
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 659
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 660
    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    .line 663
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_3

    .line 664
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->destroy()V

    .line 665
    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :cond_3
    return-void
.end method

.method public fillContent(Ljava/lang/Long;Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "htmlData cannot be null"

    .line 349
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0, p1, p3}, Lcom/mopub/mraid/MraidController;->hydrateMraidWebView(Ljava/lang/Long;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)Z

    move-result p1

    .line 352
    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const-string v0, "mMraidWebView cannot be null"

    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 354
    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p3, v0}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 355
    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->handlePageLoad()V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1, p2}, Lcom/mopub/mraid/MraidBridge;->setContentHtml(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAdContainer()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method getAllowOrientationChange()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1167
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    :goto_0
    return-object v0
.end method

.method getExpandedAdContainer()Lcom/mopub/common/CloseableLayout;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    return-object v0
.end method

.method getForceOrientation()Lcom/mopub/mraid/MraidOrientation;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    return-object v0
.end method

.method getMraidWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method getOriginalActivityOrientation()Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method getTwoPartWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1191
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method getViewState()Lcom/mopub/mraid/ViewState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-object v0
.end method

.method getWeakActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method protected handleClose()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    goto :goto_3

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 865
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->unApplyOrientation()V

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 884
    :cond_4
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_7

    .line 885
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 886
    sget-object v0, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    goto :goto_2

    .line 869
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_6

    .line 871
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 872
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->detach()V

    goto :goto_1

    .line 875
    :cond_6
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 876
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 880
    :goto_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 883
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method handleConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1    # Landroid/webkit/ConsoleMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected handleCustomClose(Z)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1011
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0}, Lcom/mopub/common/CloseableLayout;->isCloseVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 1017
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    if-eqz v0, :cond_1

    .line 1018
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    invoke-interface {v0, p1}, Lcom/mopub/mraid/MraidController$UseCustomCloseListener;->useCustomCloseChanged(Z)V

    :cond_1
    return-void
.end method

.method handleExpand(Ljava/net/URI;Z)V
    .locals 5
    .param p1    # Ljava/net/URI;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 795
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Unable to expand after the WebView is destroyed"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_1

    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_2

    return-void

    .line 806
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 813
    new-instance v1, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 814
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1, v2}, Lcom/mopub/mraid/MraidBridge;->attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V

    .line 817
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mopub/mraid/MraidBridge;->setContentUrl(Ljava/lang/String;)V

    .line 821
    :cond_4
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 823
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    const/4 v4, 0x4

    if-ne v2, v3, :cond_6

    if-eqz v0, :cond_5

    .line 825
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 827
    :cond_5
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 828
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 831
    :goto_1
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 833
    :cond_6
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v2, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 837
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1}, Lcom/mopub/common/CloseableLayout;->removeView(Landroid/view/View;)V

    .line 838
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->handleCustomClose(Z)V

    .line 849
    sget-object p1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    return-void
.end method

.method handleJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/JsResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidWebViewDebugListener;->onJsAlert(Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 421
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1
.end method

.method handleOpen(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidController$MraidListener;->onOpen()V

    .line 1110
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    .line 1112
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    if-eqz v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-virtual {v1}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    .line 1116
    :cond_1
    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method handleOrientationChange(I)V
    .locals 0

    const/4 p1, 0x0

    .line 610
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method handlePageLoad()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 516
    sget-object v0, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    new-instance v1, Lcom/mopub/mraid/MraidController$5;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidController$5;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0, v1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;Ljava/lang/Runnable;)V

    .line 532
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mraid/MraidController$MraidListener;->onLoaded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method handleResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V
    .locals 6
    .param p5    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 708
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Unable to resize after the WebView is destroyed"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->LOADING:Lcom/mopub/mraid/ViewState;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->HIDDEN:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object v1, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-ne v0, v1, :cond_2

    .line 717
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Not allowed to resize from an already expanded ad"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v1, :cond_3

    .line 721
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Not allowed to resize from an interstitial ad"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    int-to-float v0, p1

    .line 725
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    int-to-float v1, p2

    .line 726
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    int-to-float v2, p3

    .line 727
    iget-object v3, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    int-to-float v3, p4

    .line 728
    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 729
    iget-object v4, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v4}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    .line 730
    iget-object v2, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v2}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 731
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v0, v4

    add-int v5, v2, v1

    invoke-direct {v3, v4, v2, v0, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    if-nez p6, :cond_6

    .line 735
    iget-object p6, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {p6}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object p6

    .line 736
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gt v0, v2, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v0, v2, :cond_4

    goto :goto_0

    .line 746
    :cond_4
    iget v0, p6, Landroid/graphics/Rect;->left:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v4, p6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v0, v2, v4}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result v0

    .line 747
    iget v2, p6, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget p6, p6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr p6, v5

    invoke-virtual {p0, v2, v4, p6}, Lcom/mopub/mraid/MraidController;->clampInt(III)I

    move-result p6

    .line 748
    invoke-virtual {v3, v0, p6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 737
    :cond_5
    :goto_0
    new-instance p5, Lcom/mopub/mraid/MraidCommandException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizeProperties specified a size ("

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and offset ("

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") that doesn\'t allow the ad to appear within the max allowed size ("

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 741
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 742
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p5

    .line 752
    :cond_6
    :goto_1
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    .line 753
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v0, p5, v3, p6}, Lcom/mopub/common/CloseableLayout;->applyCloseRegionBounds(Lcom/mopub/common/CloseableLayout$ClosePosition;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 754
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 755
    new-instance p5, Lcom/mopub/mraid/MraidCommandException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizeProperties specified a size ("

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and offset ("

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") that doesn\'t allow the close region to appear within the max allowed size ("

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 759
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    .line 760
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p5

    .line 763
    :cond_7
    invoke-virtual {v3, p6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 764
    new-instance p2, Lcom/mopub/mraid/MraidCommandException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "resizeProperties specified a size ("

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and offset ("

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") that don\'t allow the close region to appear within the resized ad."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 771
    :cond_8
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 772
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p1, p5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 775
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 776
    iget p2, v3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {p3}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 777
    iget p2, v3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    invoke-virtual {p3}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRect()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 778
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object p3, Lcom/mopub/mraid/ViewState;->DEFAULT:Lcom/mopub/mraid/ViewState;

    if-ne p2, p3, :cond_9

    .line 779
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 780
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mDefaultAdContainer:Landroid/widget/FrameLayout;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 781
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p6, -0x1

    invoke-direct {p4, p6, p6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Lcom/mopub/common/CloseableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 783
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController;->getAndMemoizeRootView()Landroid/view/ViewGroup;

    move-result-object p2

    iget-object p3, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 784
    :cond_9
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object p3, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    if-ne p2, p3, :cond_a

    .line 785
    iget-object p2, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p2, p1}, Lcom/mopub/common/CloseableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mCloseableAdContainer:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {p1, p5}, Lcom/mopub/common/CloseableLayout;->setClosePosition(Lcom/mopub/common/CloseableLayout$ClosePosition;)V

    .line 789
    sget-object p1, Lcom/mopub/mraid/ViewState;->RESIZED:Lcom/mopub/mraid/ViewState;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidController;->setViewState(Lcom/mopub/mraid/ViewState;)V

    return-void

    :cond_b
    :goto_3
    return-void
.end method

.method handleSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0, p2}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to force orientation to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1092
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidController;->mAllowOrientationChange:Z

    .line 1093
    iput-object p2, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 1095
    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    sget-object p2, Lcom/mopub/mraid/ViewState;->EXPANDED:Lcom/mopub/mraid/ViewState;

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/mopub/mraid/MraidController;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object p2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne p1, p2, :cond_2

    .line 1096
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mraid/MraidController;->applyOrientation()V

    :cond_2
    return-void
.end method

.method handleShowVideo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method handleTwoPartPageLoad()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 539
    new-instance v0, Lcom/mopub/mraid/MraidController$6;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$6;-><init>(Lcom/mopub/mraid/MraidController;)V

    invoke-direct {p0, v0}, Lcom/mopub/mraid/MraidController;->updateScreenMetricsAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1031
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidBridge:Lcom/mopub/mraid/MraidBridge;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method lockOrientation(I)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 924
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 925
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    invoke-virtual {p0, v1}, Lcom/mopub/mraid/MraidController;->shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 931
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    .line 934
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    .line 926
    :cond_2
    :goto_0
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to lock orientation to unsupported value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mForceOrientation:Lcom/mopub/mraid/MraidOrientation;

    .line 927
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidOrientation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pause(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 617
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/util/WebViews;->onPause(Landroid/webkit/WebView;Z)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 626
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidController;->mIsPaused:Z

    .line 629
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mTwoPartWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->onResume()V

    :cond_1
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 332
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    return-void
.end method

.method public setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mraid/MraidController$MraidListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 324
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mMraidListener:Lcom/mopub/mraid/MraidController$MraidListener;

    return-void
.end method

.method setOrientationBroadcastReceiver(Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1179
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOrientationBroadcastReceiver:Lcom/mopub/mraid/MraidController$OrientationBroadcastReceiver;

    return-void
.end method

.method setRootView(Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method setRootViewSize(II)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1155
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mScreenMetrics:Lcom/mopub/mraid/MraidScreenMetrics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/mopub/mraid/MraidScreenMetrics;->setRootViewPosition(IIII)V

    return-void
.end method

.method public setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mraid/MraidController$UseCustomCloseListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 328
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mOnCloseButtonListener:Lcom/mopub/mraid/MraidController$UseCustomCloseListener;

    return-void
.end method

.method setViewStateForTesting(Lcom/mopub/mraid/ViewState;)V
    .locals 0
    .param p1    # Lcom/mopub/mraid/ViewState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1136
    iput-object p1, p0, Lcom/mopub/mraid/MraidController;->mViewState:Lcom/mopub/mraid/ViewState;

    return-void
.end method

.method shouldAllowForceOrientation(Lcom/mopub/mraid/MraidOrientation;)Z
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 973
    sget-object v0, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 985
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    .line 986
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 985
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 994
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidOrientation;->getActivityInfoOrientation()I

    move-result p1

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 999
    :cond_3
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v3, 0x80

    .line 1000
    invoke-static {p1, v3}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1003
    iget p1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x400

    .line 1004
    invoke-static {p1, v0}, Lcom/mopub/common/util/Utils;->bitMaskContainsFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1

    :catch_0
    return v2
.end method

.method unApplyOrientation()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/mopub/mraid/MraidController;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 964
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 v0, 0x0

    .line 967
    iput-object v0, p0, Lcom/mopub/mraid/MraidController;->mOriginalActivityOrientation:Ljava/lang/Integer;

    return-void
.end method
