.class public Lcom/mopub/nativeads/NativeVideoController;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;,
        Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;,
        Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;,
        Lcom/mopub/nativeads/NativeVideoController$Listener;
    }
.end annotation


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x20

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field public static final RESUME_FINISHED_THRESHOLD:J = 0x2eeL

.field public static final STATE_BUFFERING:I = 0x2

.field public static final STATE_CLEARED:I = 0x5

.field public static final STATE_ENDED:I = 0x4

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_READY:I = 0x3

.field private static final sManagerMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/mopub/nativeads/NativeVideoController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppAudioEnabled:Z

.field private mAudioEnabled:Z

.field private mAudioManager:Landroid/media/AudioManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private volatile mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mExoPlayerStateStartedFromIdle:Z

.field private mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMoPubExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOwnerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayWhenReady:Z

.field private mPreviousExoPlayerState:I

.field private mSurface:Landroid/view/Surface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTextureView:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/media/AudioManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    .line 101
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    .line 168
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 170
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 171
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    .line 174
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p2, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 176
    iput-object p3, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    .line 177
    iput-object p4, p0, Lcom/mopub/nativeads/NativeVideoController;->mMoPubExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

    .line 178
    iput-object p5, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")V"
        }
    .end annotation

    .line 154
    new-instance v3, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    new-instance v0, Landroid/os/Handler;

    .line 156
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p1, v0, p2, p3}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V

    new-instance v4, Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

    invoke-direct {v4}, Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;-><init>()V

    const-string p2, "audio"

    .line 160
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/media/AudioManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/NativeVideoController;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private clearExistingPlayer()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    .line 387
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 388
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    .line 389
    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 390
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->stop()V

    .line 391
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setExoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    return-void
.end method

.method public static createForId(JLandroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)Lcom/mopub/nativeads/NativeVideoController;
    .locals 7
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/media/AudioManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 129
    new-instance v6, Lcom/mopub/nativeads/NativeVideoController;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;Landroid/media/AudioManager;)V

    .line 131
    sget-object p2, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public static createForId(JLandroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)Lcom/mopub/nativeads/NativeVideoController;
    .locals 1
    .param p2    # Landroid/content/Context;
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
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/NativeVideoController$VisibilityTrackingEvent;",
            ">;",
            "Lcom/mopub/mobileads/VastVideoConfig;",
            ")",
            "Lcom/mopub/nativeads/NativeVideoController;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/mopub/nativeads/NativeVideoController;

    invoke-direct {v0, p2, p3, p4}, Lcom/mopub/nativeads/NativeVideoController;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 117
    sget-object p2, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getForId(J)Lcom/mopub/nativeads/NativeVideoController;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 143
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeVideoController;

    return-object p0
.end method

.method private preparePlayer()V
    .locals 9

    .line 395
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;I)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    .line 398
    new-instance v0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 399
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;

    const/high16 v1, 0x10000

    const/16 v2, 0x20

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    .line 402
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mMoPubExoPlayerFactory:Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/exoplayer2/Renderer;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    aput-object v4, v2, v3

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer2/upstream/DefaultAllocator;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/mopub/nativeads/NativeVideoController$MoPubExoPlayerFactory;->newInstance([Lcom/google/android/exoplayer2/Renderer;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 407
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setExoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;)V

    .line 408
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/ExoPlayer$EventListener;)V

    .line 410
    new-instance v3, Lcom/mopub/nativeads/NativeVideoController$1;

    invoke-direct {v3, p0}, Lcom/mopub/nativeads/NativeVideoController$1;-><init>(Lcom/mopub/nativeads/NativeVideoController;)V

    .line 417
    new-instance v4, Lcom/mopub/nativeads/NativeVideoController$2;

    invoke-direct {v4, p0}, Lcom/mopub/nativeads/NativeVideoController$2;-><init>(Lcom/mopub/nativeads/NativeVideoController;)V

    .line 424
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 425
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/mopub/nativeads/NativeVideoController;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$EventListener;)V

    .line 432
    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 433
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->startRepeating(J)V

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio()V

    .line 437
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoPlayWhenReady()V

    return-void
.end method

.method public static remove(J)Lcom/mopub/nativeads/NativeVideoController;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 148
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/NativeVideoController;

    return-object p0
.end method

.method private setExoAudio()V
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio(F)V

    return-void
.end method

.method private setExoAudio(F)V
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 453
    :goto_0
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 454
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_1

    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-array v2, v2, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    new-instance v3, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v4, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioRenderer:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    const/4 v5, 0x2

    .line 459
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v3, v2, v1

    .line 458
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method private setExoPlayWhenReady()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iget-boolean v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method private setExoSurface(Landroid/view/Surface;)V
    .locals 6
    .param p1    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 464
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    iget-object v5, p0, Lcom/mopub/nativeads/NativeVideoController;->mVideoRenderer:Lcom/google/android/exoplayer2/video/MediaCodecVideoRenderer;

    invoke-direct {v4, v5, v1, p1}, Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    return-void
.end method

.method public static setForId(JLcom/mopub/nativeads/NativeVideoController;)V
    .locals 1
    .param p2    # Lcom/mopub/nativeads/NativeVideoController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 138
    sget-object v0, Lcom/mopub/nativeads/NativeVideoController;->sManagerMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/NativeVideoController;->setPlayWhenReady(Z)V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    .line 276
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFinalFrame()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public handleCtaClick(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 364
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeVideoController;->triggerImpressionTrackers()V

    .line 365
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleClickWithoutResult(Landroid/content/Context;I)V

    return-void
.end method

.method public hasFinalFrame()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$Listener;->onError(Ljava/lang/Exception;)V

    .line 348
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->requestStop()V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mFinalFrame:Landroid/graphics/drawable/BitmapDrawable;

    .line 309
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->requestStop()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "onPlayerStateChanged called afer view has been recycled."

    .line 304
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_2
    :goto_1
    iput p2, p0, Lcom/mopub/nativeads/NativeVideoController;->mPreviousExoPlayerState:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 316
    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayerStateStartedFromIdle:Z

    .line 319
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController$Listener;->onStateChanged(ZI)V

    :cond_5
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    return-void
.end method

.method public prepare(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    .line 265
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    .line 266
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->preparePlayer()V

    .line 267
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public release(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 283
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mOwnerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-ne v0, p1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->clearExistingPlayer()V

    :cond_1
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mExoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 330
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->seekTo(J)V

    return-void
.end method

.method public setAppAudioEnabled(Z)V
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 219
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    .line 221
    iget-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAppAudioEnabled:Z

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :goto_0
    return-void
.end method

.method public setAudioEnabled(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    .line 212
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio()V

    return-void
.end method

.method public setAudioVolume(F)V
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mAudioEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoAudio(F)V

    return-void
.end method

.method public setListener(Lcom/mopub/nativeads/NativeVideoController$Listener;)V
    .locals 0
    .param p1    # Lcom/mopub/nativeads/NativeVideoController$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 182
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mListener:Lcom/mopub/nativeads/NativeVideoController$Listener;

    return-void
.end method

.method public setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 0
    .param p1    # Landroid/media/AudioManager$OnAudioFocusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mPlayWhenReady:Z

    .line 199
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeVideoController;->setExoPlayWhenReady()V

    return-void
.end method

.method public setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setProgressListener(Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable$ProgressListener;)V

    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 249
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    .line 252
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    .line 253
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v0}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->setTextureView(Landroid/view/TextureView;)V

    .line 254
    iget-object p1, p0, Lcom/mopub/nativeads/NativeVideoController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeVideoController;->setExoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method triggerImpressionTrackers()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/mopub/nativeads/NativeVideoController;->mNativeVideoProgressRunnable:Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeVideoController$NativeVideoProgressRunnable;->checkImpressionTrackers(Z)V

    return-void
.end method
