.class public Lcom/mopub/mobileads/MoPubRewardedVideos;
.super Ljava/lang/Object;
.source "MoPubRewardedVideos.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 128
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 105
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->hasVideo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static initializeRewardedVideo(Landroid/app/Activity;Lcom/mopub/common/SdkConfiguration;)V
    .locals 5
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/SdkConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getNetworksToInit()Ljava/util/List;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 63
    const-class v4, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to cast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to Class<? extends CustomEventRewardedVideo>."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring unknown class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getMediationSettings()[Lcom/mopub/common/MediationSettings;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->initializeRewardedVideo(Landroid/app/Activity;Ljava/util/List;[Lcom/mopub/common/MediationSettings;)V

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getMediationSettings()[Lcom/mopub/common/MediationSettings;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    :goto_1
    return-void
.end method

.method private static varargs initializeRewardedVideo(Landroid/app/Activity;Ljava/util/List;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;>;[",
            "Lcom/mopub/common/MediationSettings;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    invoke-static {p0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    .line 41
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->initNetworks(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method private static varargs initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 28
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 98
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 89
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V

    return-void
.end method

.method public static selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    return-void
.end method

.method public static setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 0
    .param p0    # Lcom/mopub/mobileads/MoPubRewardedVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 112
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->showVideo(Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->showVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
