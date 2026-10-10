.class public Lcom/mopub/mobileads/VastVideoConfig;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final mAbsoluteTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvidJavascriptResources:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThroughUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mClickTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompleteTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomCloseIconUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCustomCtaText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCustomSkipText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDiskMediaFileUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDspCreativeId:Ljava/lang/String;

.field private final mErrorTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mExternalViewabilityTrackers:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFractionalTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpressionTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForceOrientationSet:Z

.field private mIsRewardedVideo:Z

.field private mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMoatImpressionPixels:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkMediaFileUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPauseTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResumeTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipOffset:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSkipTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialActionsCompanionAds:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mExternalViewabilityTrackers:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAvidJavascriptResources:Ljava/util/Set;

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mMoatImpressionPixels:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-object p0
.end method

.method private addCompanionAdClickTrackersForUrls(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 887
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 889
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 891
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 892
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private addCompanionAdViewTrackersForUrls(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 877
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 879
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 881
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 882
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private addCompleteTrackersForUrls(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 850
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    return-void
.end method

.method private addFractionalTrackersForUrls(Ljava/util/List;F)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .line 867
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 871
    new-instance v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v2, v1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    return-void
.end method

.method private addStartTrackersForUrls(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 856
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 858
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 860
    new-instance v2, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    return-void
.end method

.method private createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 840
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    new-instance v2, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleClick(Landroid/content/Context;ILjava/lang/Integer;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 571
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    .line 576
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 573
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 581
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 585
    :cond_0
    new-instance p2, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p2}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    .line 586
    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    sget-object v0, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    const/4 v2, 0x0

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v3, v1, v2

    .line 587
    invoke-virtual {p2, v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    new-instance v0, Lcom/mopub/mobileads/VastVideoConfig$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/mopub/mobileads/VastVideoConfig$1;-><init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V

    .line 595
    invoke-virtual {p2, v0}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 632
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p2

    .line 633
    invoke-virtual {p2}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p2

    iget-object p3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 822
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 828
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 829
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 830
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "%%VIDEO_EVENT%%"

    .line 834
    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addAbsoluteTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "absoluteTrackers cannot be null"

    .line 133
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public addAvidJavascriptResources(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAvidJavascriptResources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickTrackers cannot be null"

    .line 174
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "closeTrackers cannot be null"

    .line 164
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completeTrackers cannot be null"

    .line 139
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "errorTrackers cannot be null"

    .line 184
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addExternalViewabilityTrackers(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mExternalViewabilityTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fractionalTrackers cannot be null"

    .line 124
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "impressionTrackers cannot be null"

    .line 115
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addMoatImpressionPixels(Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mMoatImpressionPixels:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pauseTrackers cannot be null"

    .line 149
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "resumeTrackers cannot be null"

    .line 159
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "skipTrackers cannot be null"

    .line 169
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addVideoTrackers(Lorg/json/JSONObject;)V
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "urls"

    .line 212
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "events"

    .line 213
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 219
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-direct {p0, v2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 221
    invoke-static {v2}, Lcom/mopub/mobileads/VideoTrackingEvent;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v4

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    sget-object v5, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    invoke-virtual {v4}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unknown video tracking event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addCompanionAdClickTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 243
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addCompanionAdViewTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 240
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    :pswitch_3
    const/high16 v2, 0x3f400000    # 0.75f

    .line 237
    invoke-direct {p0, v3, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    :pswitch_4
    const/high16 v2, 0x3f000000    # 0.5f

    .line 234
    invoke-direct {p0, v3, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    :pswitch_5
    const/high16 v2, 0x3e800000    # 0.25f

    .line 231
    invoke-direct {p0, v3, v2}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 228
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/VastVideoConfig;->addStartTrackersForUrls(Ljava/util/List;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvidJavascriptResources()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAvidJavascriptResources:Ljava/util/Set;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 403
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCloseIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCtaText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomSkipText:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDiskMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExternalViewabilityTrackers()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mExternalViewabilityTrackers:Ljava/util/Map;

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMoatImpressionPixels()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mMoatImpressionPixels:Ljava/util/Set;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemainingProgressTrackerCount()I
    .locals 1

    const v0, 0x7fffffff

    .line 780
    invoke-virtual {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResumeTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkipOffsetMillis(I)Ljava/lang/Integer;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 795
    :try_start_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v3}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 796
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v3}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 797
    :cond_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v3}, Lcom/mopub/common/util/Strings;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 798
    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    const-string v4, "%"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    int-to-float v4, p1

    mul-float v4, v4, v3

    .line 799
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    .line 807
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_1

    return-object v3

    .line 810
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "Invalid VAST skipoffset format: %s"

    .line 801
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 802
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "Failed to parse skipoffset %s"

    .line 814
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public getSkipOffsetString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSocialActionsCompanionAds()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    return-object v0
.end method

.method public getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 739
    :goto_0
    invoke-static {v1}, Lcom/mopub/common/Preconditions$NoThrow;->checkArgument(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-ltz p1, :cond_7

    int-to-float v1, p1

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 741
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 743
    new-instance v2, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const-string v3, ""

    invoke-direct {v2, v3, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    .line 745
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_3

    .line 747
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .line 748
    invoke-virtual {v4, v2}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_2

    .line 751
    :cond_1
    invoke-virtual {v4}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isTracked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 752
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 756
    :cond_3
    :goto_2
    new-instance p1, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    const-string v2, ""

    invoke-direct {p1, v2, v1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    .line 757
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_6

    .line 759
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    .line 760
    invoke-virtual {v2, p1}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_4

    .line 763
    :cond_4
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->isTracked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 764
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-object p2

    .line 770
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 424
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object p1

    .line 422
    :pswitch_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object p1

    .line 420
    :pswitch_1
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-object v0
.end method

.method public handleClickForResult(Landroid/app/Activity;II)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    return-void
.end method

.method public handleClickWithoutResult(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 556
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    return-void
.end method

.method public handleClose(Landroid/content/Context;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 677
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    .line 681
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    const/4 v3, 0x0

    .line 678
    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 686
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    .line 689
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 686
    invoke-static {v0, v3, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleComplete(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 702
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    .line 706
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 703
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastErrorCode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 721
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    .line 725
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 722
    invoke-static {v0, p2, p3, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleImpression(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 523
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 527
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 524
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handlePause(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 660
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    .line 664
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 661
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public handleResume(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 643
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    .line 647
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    const/4 v2, 0x0

    .line 644
    invoke-static {v0, v2, p2, v1, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public hasCompanionAd()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCustomForceOrientationSet()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsForceOrientationSet:Z

    return v0
.end method

.method public isRewardedVideo()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 275
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 315
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCloseIconUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 303
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCtaText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V
    .locals 1
    .param p1    # Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 320
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    if-eq p1, v0, :cond_0

    .line 321
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    const/4 p1, 0x1

    .line 322
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsForceOrientationSet:Z

    :cond_0
    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 309
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomSkipText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDiskMediaFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setDspCreativeId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-void
.end method

.method public setIsRewardedVideo(Z)V
    .locals 0

    .line 339
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 279
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 328
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSocialActionsCompanionAds(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;)V"
        }
    .end annotation

    .line 294
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    return-void
.end method

.method public setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 288
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 289
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    return-void
.end method

.method public setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VastIconConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 298
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    return-void
.end method

.method public setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/VideoViewabilityTracker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 334
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    :cond_0
    return-void
.end method
