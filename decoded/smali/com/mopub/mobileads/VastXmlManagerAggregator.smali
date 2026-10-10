.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;,
        Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field private static final AREA_WEIGHT:D = 30.0

.field private static final ASPECT_RATIO_WEIGHT:D = 70.0

.field static final MAX_TIMES_TO_FOLLOW_VAST_REDIRECT:I = 0xa

.field private static final MINIMUM_COMPANION_AD_HEIGHT:I = 0xfa

.field private static final MINIMUM_COMPANION_AD_WIDTH:I = 0x12c

.field private static final MOPUB:Ljava/lang/String; = "MoPub"

.field public static final SOCIAL_ACTIONS_AD_SLOT_ID:Ljava/lang/String; = "socialActions"

.field private static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenAreaDp:I

.field private final mScreenAspectRatio:D

.field private mTimesFollowedVastRedirect:I

.field private final mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "video/mp4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "video/3gpp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    .line 102
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    .line 103
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAreaDp:I

    .line 104
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculateFitness(II)D
    .locals 4

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    mul-int p1, p1, p2

    .line 791
    iget-wide v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    div-double/2addr v0, v2

    int-to-double p1, p1

    .line 792
    iget v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAreaDp:I

    int-to-double v2, v2

    div-double/2addr p1, v2

    .line 793
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4051800000000000L    # 70.0

    mul-double v0, v0, v2

    .line 794
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 4
    .param p1    # Lcom/mopub/mobileads/VastInLineXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastInLineXmlManager;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .line 301
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 302
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 308
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getMediaXmlManagers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 312
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 313
    invoke-direct {p0, v1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 318
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v1

    .line 323
    sget-object v2, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 324
    invoke-virtual {p0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 326
    invoke-virtual {p0, v1, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v3

    .line 323
    invoke-virtual {v0, v2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 328
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 330
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-virtual {v0, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 333
    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/mopub/mobileads/VastWrapperXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastWrapperXmlManager;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 404
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->followVastRedirect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to follow VAST redirect"

    .line 406
    invoke-static {v1, p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 408
    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v0, v0, v1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManager;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 497
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 500
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    if-lez p2, :cond_0

    sget-object p2, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    :goto_0
    const/4 v0, 0x0

    .line 499
    invoke-static {p1, p2, v0, v0, p3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private followVastRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 825
    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 826
    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 831
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 832
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 834
    :try_start_2
    invoke-static {v0}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 836
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_0

    .line 838
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v0, p1

    move-object p1, v1

    .line 836
    :goto_0
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    .line 838
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method static isValidSequenceNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 808
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 812
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    return v1
.end method

.method private populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1    # Lcom/mopub/mobileads/VastLinearXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "linearXmlManager cannot be null"

    .line 426
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    .line 427
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getAbsoluteProgressTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 431
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getFractionalProgressTrackers()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 432
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getPauseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    .line 433
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    .line 434
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 435
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCloseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    .line 436
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoSkipTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 437
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 440
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getIconXmlManagers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    :cond_1
    return-void
.end method

.method private populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1    # Lcom/mopub/mobileads/VastXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "xmlManager cannot be null"

    .line 461
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastVideoConfig cannot be null"

    .line 462
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getMoPubImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 466
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 472
    :cond_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    .line 475
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->isCustomForceOrientationSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V

    :cond_3
    return-void
.end method

.method private populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 3
    .param p1    # Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 345
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 356
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    const-string v1, "MoPub"

    .line 358
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object p1

    .line 359
    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    :cond_2
    return-void
.end method

.method private populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1    # Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 371
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastExtensionXmlManager;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getAvidJavaScriptResources()Ljava/util/Set;

    move-result-object v1

    .line 378
    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addAvidJavascriptResources(Ljava/util/Set;)V

    .line 380
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getMoatImpressionPixels()Ljava/util/Set;

    move-result-object v0

    .line 381
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addMoatImpressionPixels(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 3
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 116
    array-length v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    :try_start_0
    aget-object p1, p1, v1

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to generate VastVideoConfig."

    .line 124
    invoke-static {v1, p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    return-object p1
.end method

.method evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    const-string v0, "vastXml cannot be null"

    .line 167
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorTrackers cannot be null"

    .line 168
    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/mopub/mobileads/VastXmlManager;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastXmlManager;-><init>()V

    const/4 v1, 0x0

    .line 172
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastXmlManager;->parseVastXml(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastXmlManager;->getAdXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 183
    iget-object v2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 187
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastAdXmlManager;

    .line 188
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastAdXmlManager;->getSequence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->isValidSequenceNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastAdXmlManager;->getInLineXmlManager()Lcom/mopub/mobileads/VastInLineXmlManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 196
    invoke-direct {p0, v3, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 200
    invoke-direct {p0, v0, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v3

    .line 207
    :cond_3
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastAdXmlManager;->getWrapperXmlManager()Lcom/mopub/mobileads/VastWrapperXmlManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-direct {p0, v2, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 217
    :cond_4
    invoke-virtual {p0, v4, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 231
    :cond_5
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object p1

    .line 230
    invoke-virtual {v3, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 233
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 235
    invoke-direct {p0, p2, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1

    .line 237
    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 238
    invoke-direct {p0, v2, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 241
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object p1

    .line 244
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result p2

    if-nez p2, :cond_7

    .line 245
    sget-object p2, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    sget-object v1, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 248
    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    .line 245
    invoke-virtual {v3, p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    goto :goto_3

    :cond_7
    const/4 p2, 0x2

    .line 252
    invoke-virtual {v3, p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object p2

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v3, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v1

    if-eqz p2, :cond_9

    if-eqz v1, :cond_9

    .line 257
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 258
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->hasResources()Z

    move-result v5

    if-nez v5, :cond_8

    .line 260
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v5

    .line 259
    invoke-virtual {p2, v5}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 262
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v5

    .line 261
    invoke-virtual {p2, v5}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 264
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v5

    .line 263
    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 266
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v4

    .line 265
    invoke-virtual {v1, v4}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    goto :goto_2

    .line 272
    :cond_9
    :goto_3
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getSocialActionsCompanionAds()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 274
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 273
    invoke-virtual {v3, p1}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 277
    :cond_a
    invoke-direct {p0, v0, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    return-object v3

    :cond_b
    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "Failed to parse VAST XML"

    .line 174
    invoke-static {v0, p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    sget-object p1, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v1, v1, v0}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-object v1
.end method

.method getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 23
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;",
            ")",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "managers cannot be null"

    .line 550
    invoke-static {v1, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "orientation cannot be null"

    .line 551
    invoke-static {v2, v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 561
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    array-length v4, v1

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v8, 0x0

    move-wide v10, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v4, :cond_8

    aget-object v12, v1, v8

    .line 563
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 564
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 565
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 567
    invoke-virtual {v14}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v15

    .line 568
    invoke-virtual {v14}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v15, :cond_4

    move-object/from16 v16, v1

    .line 569
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v17, v3

    const/16 v3, 0x12c

    if-lt v1, v3, :cond_5

    if-eqz v5, :cond_5

    .line 570
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0xfa

    if-ge v1, v3, :cond_0

    goto :goto_4

    .line 574
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v3, v12, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;

    move-result-object v1

    .line 576
    invoke-virtual {v14}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v3

    move/from16 v18, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v19, v7

    iget v7, v1, Landroid/graphics/Point;->y:I

    .line 575
    invoke-static {v3, v12, v4, v7}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_5

    .line 583
    :cond_1
    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    if-ne v3, v2, :cond_2

    .line 584
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v3

    goto :goto_2

    .line 586
    :cond_2
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v3

    :goto_2
    cmpg-double v5, v3, v10

    if-gez v5, :cond_3

    move-object v9, v1

    move-wide v10, v3

    move-object v6, v14

    goto :goto_3

    :cond_3
    move-object/from16 v7, v19

    :goto_3
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_1

    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    :cond_5
    :goto_4
    move/from16 v18, v4

    move-object/from16 v19, v7

    :goto_5
    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v7, v19

    goto/16 :goto_1

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v7

    if-eqz v6, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v7, v19

    goto/16 :goto_0

    :cond_8
    move-object/from16 v19, v7

    :goto_6
    if-eqz v6, :cond_9

    .line 601
    new-instance v1, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v2, v9, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 605
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v20

    .line 606
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v21

    .line 607
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v22

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v16 .. v22}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;
    .locals 19
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/VastIconConfig;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "managers cannot be null"

    .line 739
    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 744
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 745
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 746
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 748
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v7

    .line 749
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_0

    .line 752
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x12c

    if-gt v9, v10, :cond_0

    if-eqz v8, :cond_0

    .line 753
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v10, :cond_1

    goto :goto_1

    .line 758
    :cond_1
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 757
    invoke-static {v9, v4, v7, v8}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v15

    if-nez v15, :cond_2

    goto :goto_1

    .line 764
    :cond_2
    new-instance v0, Lcom/mopub/mobileads/VastIconConfig;

    .line 765
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 766
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 767
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getOffsetMS()Ljava/lang/Integer;

    move-result-object v13

    .line 768
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getDurationMS()Ljava/lang/Integer;

    move-result-object v14

    .line 770
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickTrackingUris()Ljava/util/List;

    move-result-object v16

    .line 771
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickThroughUri()Ljava/lang/String;

    move-result-object v17

    .line 772
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastIconXmlManager;->getViewTrackingUris()Ljava/util/List;

    move-result-object v18

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastMediaXmlManager;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "managers cannot be null"

    .line 513
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 518
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v2, 0x0

    .line 519
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 520
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastMediaXmlManager;

    .line 522
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getType()Ljava/lang/String;

    move-result-object v4

    .line 523
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v5

    .line 524
    sget-object v6, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v5, :cond_1

    goto :goto_1

    .line 529
    :cond_1
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v4

    .line 530
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastMediaXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v4, :cond_0

    .line 531
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gtz v6, :cond_2

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v4, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v3

    cmpg-double v6, v3, v0

    if-gez v6, :cond_0

    move-wide v0, v3

    move-object v2, v5

    goto :goto_0

    .line 525
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 682
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 683
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 684
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 686
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float p1, p1

    .line 688
    iget-object v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    int-to-float p2, p2

    .line 689
    iget-object v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p2

    .line 692
    sget-object v3, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    if-ne v3, p4, :cond_0

    .line 693
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 694
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 696
    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 697
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    add-int/lit8 v2, p4, -0x10

    if-gt p1, v2, :cond_1

    add-int/lit8 v2, v1, -0x10

    if-gt p2, v2, :cond_1

    return-object v0

    .line 706
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 707
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne v3, p3, :cond_2

    .line 708
    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 709
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_2
    int-to-float p1, p1

    int-to-float p3, p4

    div-float p3, p1, p3

    int-to-float p2, p2

    int-to-float v3, v1

    div-float v3, p2, v3

    cmpl-float v4, p3, v3

    if-ltz v4, :cond_3

    .line 715
    iput p4, v2, Landroid/graphics/Point;->x:I

    div-float/2addr p2, p3

    float-to-int p1, p2

    .line 716
    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    div-float/2addr p1, v3

    float-to-int p1, p1

    .line 718
    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 719
    iput v1, v2, Landroid/graphics/Point;->y:I

    .line 723
    :goto_1
    iget p1, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 p1, p1, -0x10

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 724
    iget p1, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 p1, p1, -0x10

    iput p1, v2, Landroid/graphics/Point;->y:I

    .line 726
    iget p1, v2, Landroid/graphics/Point;->x:I

    if-ltz p1, :cond_5

    iget p1, v2, Landroid/graphics/Point;->y:I

    if-gez p1, :cond_4

    goto :goto_2

    .line 730
    :cond_4
    iget p1, v2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 731
    iget p1, v2, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :cond_5
    :goto_2
    return-object v0
.end method

.method getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "managers cannot be null"

    move-object/from16 v1, p1

    .line 617
    invoke-static {v1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 622
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 623
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v3

    .line 624
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getAdSlotId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "adsBy"

    .line 630
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0xa

    const/16 v8, 0x32

    if-eqz v6, :cond_2

    .line 632
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x19

    if-lt v6, v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x4b

    if-gt v6, v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v8, :cond_3

    goto :goto_0

    :cond_2
    const-string v6, "socialActions"

    .line 635
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v9, 0x96

    if-gt v6, v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v8, :cond_3

    goto :goto_0

    .line 646
    :cond_3
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v6

    sget-object v7, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 647
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 645
    invoke-static {v6, v7, v8, v9}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v13

    if-nez v13, :cond_4

    goto :goto_0

    .line 652
    :cond_4
    new-instance v6, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 654
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 655
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 657
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v14

    .line 658
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v15

    .line 659
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v16

    move-object v10, v6

    invoke-direct/range {v10 .. v16}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 652
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 141
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 131
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

.method setTimesFollowedVastRedirect(I)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    iput p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    return-void
.end method
