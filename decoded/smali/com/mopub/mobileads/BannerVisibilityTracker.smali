.class Lcom/mopub/mobileads/BannerVisibilityTracker;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;,
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;,
        Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    }
.end annotation


# static fields
.field private static final VISIBILITY_THROTTLE_MILLIS:I = 0x64


# instance fields
.field private mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsImpTrackerFired:Z

.field private mIsVisibilityScheduled:Z

.field final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTrackedView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mRootView:Landroid/view/View;

    .line 91
    iput-object p3, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    .line 93
    new-instance p2, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    invoke-direct {p2, p4, p5}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;-><init>(II)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    .line 94
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    .line 95
    new-instance p2, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;-><init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    .line 97
    new-instance p2, Lcom/mopub/mobileads/BannerVisibilityTracker$1;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$1;-><init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 105
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 106
    iget-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/BannerVisibilityTracker;->setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/BannerVisibilityTracker;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mopub/mobileads/BannerVisibilityTracker;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/BannerVisibilityTracker;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mTrackedView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/BannerVisibilityTracker;)Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-object p0
.end method

.method private setViewTreeObserver(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {p1, p2}, Lcom/mopub/common/util/Views;->getTopmostView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Unable to set Visibility Tracker due to no available root view."

    .line 117
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p1, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    .line 123
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    .line 129
    iget-object p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    iput-boolean v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mWeakViewTreeObserver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-void
.end method

.method getBannerVisibilityChecker()Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityChecker:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;

    return-object v0
.end method

.method getBannerVisibilityTrackerListener()Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-object v0
.end method

.method getVisibilityHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    return-object v0
.end method

.method isImpTrackerFired()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsImpTrackerFired:Z

    return v0
.end method

.method isVisibilityScheduled()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    return v0
.end method

.method scheduleVisibilityCheck()V
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mIsVisibilityScheduled:Z

    .line 166
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mVisibilityRunnable:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityRunnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setBannerVisibilityTrackerListener(Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    iput-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker;->mBannerVisibilityTrackerListener:Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;

    return-void
.end method
