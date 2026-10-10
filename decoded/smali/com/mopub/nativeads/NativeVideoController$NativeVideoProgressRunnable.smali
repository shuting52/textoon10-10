.class Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "NativeVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/NativeVideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeVideoProgressRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentPosition:J

.field private mDuration:J

.field private mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStopRequested:Z

.field private mTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVisibilityTrackingEvents:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .line 522
    new-instance v4, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    invoke-direct {v4}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .line 532
    invoke-direct {p0, p2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 533
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 534
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 535
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 536
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    .line 539
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    .line 540
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    .line 541
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const-wide/16 p1, -0x1

    .line 542
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    const/4 p1, 0x0

    .line 543
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    return-void
.end method


# virtual methods
.method checkImpressionTrackers(Z)V
    .locals 9

    .line 576
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;

    .line 577
    iget-boolean v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 581
    iget-object v3, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityChecker:Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    iget v6, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumPercentageVisible:I

    iget-object v7, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->minimumVisiblePx:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/mopub/nativeads/VisibilityTracker$VisibilityChecker;->isVisible(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    :cond_2
    iget v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    add-long v7, v3, v5

    long-to-int v3, v7

    iput v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    if-nez p1, :cond_3

    .line 584
    iget v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalQualifiedPlayCounter:I

    iget v4, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->totalRequiredPlayTimeMs:I

    if-lt v3, v4, :cond_0

    .line 586
    :cond_3
    iget-object v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->strategy:Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;

    invoke-interface {v3}, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent$OnTrackedStrategy;->execute()V

    const/4 v3, 0x1

    .line 587
    iput-boolean v3, v2, Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;->isTracked:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_4
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVisibilityTrackingEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_5

    iget-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    if-eqz p1, :cond_5

    .line 593
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->stop()V

    :cond_5
    return-void
.end method

.method public doWork()V
    .locals 4

    .line 599
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    .line 604
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    .line 608
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    if-eqz v0, :cond_1

    .line 609
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    .line 610
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    float-to-int v0, v0

    invoke-interface {v1, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;->updateProgress(I)V

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    long-to-int v1, v1

    iget-wide v2, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    long-to-int v2, v2

    .line 614
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    .line 616
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 618
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastTracker;

    .line 619
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 622
    :cond_2
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method getCurrentPosition()J
    .locals 2

    .line 563
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .line 567
    iget-wide v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mDuration:J

    return-wide v0
.end method

.method requestStop()V
    .locals 1

    const/4 v0, 0x1

    .line 571
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mStopRequested:Z

    return-void
.end method

.method seekTo(J)V
    .locals 0

    .line 559
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mCurrentPosition:J

    return-void
.end method

.method setExoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ExoPlayer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 547
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-void
.end method

.method setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .locals 0
    .param p1    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 555
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mProgressListener:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;

    return-void
.end method

.method setTextureView(Landroid/view/TextureView;)V
    .locals 0
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 551
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method setUpdateIntervalMillis(J)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 632
    iput-wide p1, p0, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->mUpdateIntervalMillis:J

    return-void
.end method
