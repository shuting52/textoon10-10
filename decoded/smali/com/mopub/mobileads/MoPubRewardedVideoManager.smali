.class public Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;,
        Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x1

.field private static final CURRENCIES_JSON_REWARDS_MAP_KEY:Ljava/lang/String; = "rewards"

.field private static final CURRENCIES_JSON_REWARD_AMOUNT_KEY:Ljava/lang/String; = "amount"

.field private static final CURRENCIES_JSON_REWARD_NAME_KEY:Ljava/lang/String; = "name"

.field static final CUSTOM_DATA_MAX_LENGTH_BYTES:I = 0x2000
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final CUSTOM_EVENT_PREF_NAME:Ljava/lang/String; = "mopubCustomEventSettings"

.field private static final DEFAULT_LOAD_TIMEOUT:I = 0x7530

.field private static sCustomEventSharedPrefs:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;


# instance fields
.field private final mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCallbackHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCustomEventTimeoutHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGlobalMediationSettings:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceMediationSettings:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainActivity:Ljava/lang/ref/WeakReference;
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

.field private final mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTimeoutMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 148
    new-instance p1, Lcom/mopub/mobileads/RewardedAdData;

    invoke-direct {p1}, Lcom/mopub/mobileads/RewardedAdData;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 149
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    .line 150
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    .line 151
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-static {p1, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 152
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 153
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    .line 154
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    .line 156
    new-instance p1, Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-direct {p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 158
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    const-string p2, "mopubCustomEventSettings"

    .line 159
    invoke-static {p1, p2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/MoPubRewardedVideoListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->cancelTimeouts(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStartedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClickedAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosedAction(Ljava/lang/String;)V

    return-void
.end method

.method private cancelTimeouts(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 707
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static chooseReward(Lcom/mopub/common/MoPubReward;Lcom/mopub/common/MoPubReward;)Lcom/mopub/common/MoPubReward;
    .locals 1
    .param p0    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 956
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 693
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 694
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getFailoverUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v1, p1}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markFail(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 699
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/MoPubErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    invoke-static {p1, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_1

    .line 702
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static getAdRequestStatusMapping()Lcom/mopub/mobileads/AdRequestStatusMapping;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1022
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 1023
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
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

    .line 473
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 476
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 477
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 250
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-object v1

    .line 254
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mGlobalMediationSettings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MediationSettings;

    .line 256
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-object v1

    .line 281
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    .line 282
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    return-object v1

    .line 287
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_3
    return-object v1
.end method

.method static getRewardedAdData()Lcom/mopub/mobileads/RewardedAdData;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 1013
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 404
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v0

    .line 406
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z

    move-result p0

    return p0

    .line 408
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    const/4 p0, 0x0

    return p0
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    goto :goto_0

    :cond_0
    const-string p0, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect."

    .line 225
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 221
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initNetworks(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/mopub/mobileads/CustomEventRewardedVideo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 167
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v1, :cond_0

    .line 170
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    .line 171
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 175
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 178
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 179
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "fetched init settings for %s networks: %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 180
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 179
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 183
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 186
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 187
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 191
    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    invoke-static {v4}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 196
    const-class v6, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    .line 197
    invoke-static {v3, v6}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    .line 201
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Initializing %s with params %s"

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v3, v11, v8

    aput-object v4, v11, v9

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 204
    invoke-virtual {v6, p0, v7, v4}, Lcom/mopub/mobileads/CustomEventRewardedVideo;->checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z

    .line 209
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 211
    :catch_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error fetching init settings for network "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Init settings not found for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 218
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 165
    monitor-exit v0

    throw p0
.end method

.method private static isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z
    .locals 1
    .param p1    # Lcom/mopub/mobileads/CustomEventRewardedAd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 460
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 461
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->canPlay(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Lcom/mopub/mobileads/CustomEventRewardedAd;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs loadVideo(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 3
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

    .line 323
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-void

    .line 330
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 331
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 333
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "Did not queue rewarded ad request for ad unit %s. The ad is already showing."

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->canPlay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show."

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 341
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void

    .line 356
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 357
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 358
    sget-object p2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p2, p2, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mInstanceMediationSettings:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move-object v0, p2

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 361
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 362
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/RewardedAdData;->setCustomerId(Ljava/lang/String;)V

    .line 365
    :cond_4
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;Z)V

    .line 366
    invoke-virtual {v0, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    if-nez p1, :cond_5

    move-object v1, p2

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 367
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    if-eqz p1, :cond_7

    .line 369
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    goto :goto_3

    :cond_7
    :goto_2
    move-object v1, p2

    .line 368
    :goto_3
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    iget-object p2, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;->mLocation:Landroid/location/Location;

    .line 370
    :goto_4
    invoke-virtual {v0, p2}, Lcom/mopub/common/AdUrlGenerator;->withLocation(Landroid/location/Location;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object p1

    const-string p2, "ads.mopub.com"

    .line 371
    invoke-virtual {p1, p2}, Lcom/mopub/common/AdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 373
    invoke-static {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->loadVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static loadVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->isLoading(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 383
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "Did not queue rewarded ad request for ad unit %s. A request is already pending."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 389
    :cond_1
    new-instance v0, Lcom/mopub/network/AdRequest;

    sget-object v5, Lcom/mopub/common/AdFormat;->REWARDED_VIDEO:Lcom/mopub/common/AdFormat;

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v7, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    invoke-direct {v8, v3, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RewardedVideoRequestListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/mopub/network/AdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V

    .line 396
    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v3

    .line 397
    invoke-virtual {v3, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 398
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markLoading(Ljava/lang/String;)V

    .line 399
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Loading rewarded ad request for ad unit %s with URL %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static logErrorNotInitialized()V
    .locals 1

    const-string v0, "MoPub rewarded ad was not initialized. You must call MoPub.initializeRewardedVideo() before loading or attempting to play rewarded ads."

    .line 975
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private onAdError(Lcom/mopub/volley/VolleyError;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/mopub/volley/VolleyError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 636
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 637
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 638
    move-object v0, p1

    check-cast v0, Lcom/mopub/network/MoPubNetworkError;

    .line 639
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$15;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 647
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 642
    :pswitch_0
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 650
    :cond_0
    :goto_0
    instance-of p1, p1, Lcom/mopub/volley/NoConnectionError;

    if-eqz p1, :cond_1

    .line 651
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 653
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onAdSuccess(Lcom/mopub/network/AdResponse;Ljava/lang/String;)V
    .locals 11

    .line 498
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 499
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getFailoverUrl()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrl()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getClickTrackingUrl()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdTimeoutMillis()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/16 v0, 0x7530

    .line 505
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 508
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getCustomEventClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "Couldn\'t create custom event, class name was null."

    .line 511
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 512
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 518
    :cond_2
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v2, p2}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 521
    invoke-virtual {v2}, Lcom/mopub/mobileads/CustomEventRewardedAd;->onInvalidate()V

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 526
    :try_start_0
    const-class v4, Lcom/mopub/mobileads/CustomEventRewardedAd;

    .line 527
    invoke-static {v1, v4}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/CustomEventRewardedAd;

    .line 532
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const-string v6, "com_mopub_ad_unit_id"

    .line 533
    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Rewarded-Ad-Currency-Name"

    .line 535
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v7

    .line 534
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Rewarded-Ad-Currency-Value-String"

    .line 537
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v7

    .line 536
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Rewarded-Ad-Duration"

    .line 539
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedDuration()Ljava/lang/Integer;

    move-result-object v7

    .line 538
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Should-Reward-On-Click"

    .line 541
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->shouldRewardOnClick()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 540
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "mopub-intent-ad-report"

    .line 542
    new-instance v7, Lcom/mopub/common/AdReport;

    iget-object v8, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 543
    invoke-static {v8}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v8

    invoke-direct {v7, p2, v8, p1}, Lcom/mopub/common/AdReport;-><init>(Ljava/lang/String;Lcom/mopub/common/ClientMetadata;Lcom/mopub/network/AdResponse;)V

    .line 542
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "broadcastIdentifier"

    .line 544
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Rewarded-Ad-Customer-Id"

    .line 546
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 547
    invoke-virtual {v7}, Lcom/mopub/mobileads/RewardedAdData;->getCustomerId()Ljava/lang/String;

    move-result-object v7

    .line 546
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedCurrencies()Ljava/lang/String;

    move-result-object v6

    .line 553
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v7, p2}, Lcom/mopub/mobileads/RewardedAdData;->resetAvailableRewards(Ljava/lang/String;)V

    .line 556
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v7, p2}, Lcom/mopub/mobileads/RewardedAdData;->resetSelectedReward(Ljava/lang/String;)V

    .line 560
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 561
    iget-object v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 562
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyName()Ljava/lang/String;

    move-result-object v7

    .line 563
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCurrencyAmount()Ljava/lang/String;

    move-result-object v8

    .line 561
    invoke-virtual {v6, p2, v7, v8}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 566
    :cond_4
    :try_start_1
    invoke-direct {p0, p2, v6}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->parseMultiCurrencyJson(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 575
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRewardedVideoCompletionUrl()Ljava/lang/String;

    move-result-object v7

    .line 574
    invoke-virtual {v6, p2, v7}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitToServerCompletionUrlMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v6, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    if-nez v6, :cond_5

    const-string p1, "Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads."

    .line 579
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 584
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markFail(Ljava/lang/String;)V

    return-void

    .line 589
    :cond_5
    new-instance v7, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;

    invoke-direct {v7, p0, v4}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$2;-><init>(Lcom/mopub/mobileads/MoPubRewardedVideoManager;Lcom/mopub/mobileads/CustomEventRewardedAd;)V

    .line 598
    iget-object v8, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCustomEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 599
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mTimeoutMap:Ljava/util/Map;

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getServerExtras()Ljava/util/Map;

    move-result-object p1

    .line 607
    instance-of v0, v4, Lcom/mopub/mobileads/CustomEventRewardedVideo;

    if-eqz v0, :cond_6

    .line 608
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Updating init settings for custom event %s with params %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v3

    aput-object v0, v9, v2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 615
    sget-object v7, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    .line 616
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 617
    invoke-interface {v7, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 622
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Loading custom event with class name %s"

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v4, v6, v5, p1}, Lcom/mopub/mobileads/CustomEventRewardedAd;->loadCustomEvent(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V

    .line 626
    invoke-virtual {v4}, Lcom/mopub/mobileads/CustomEventRewardedAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object p1

    .line 627
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p2, v4, p1}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitCustomEventMapping(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;Ljava/lang/String;)V

    goto :goto_1

    .line 568
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error parsing rewarded currencies JSON header: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 569
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->REWARDED_CURRENCIES_PARSING_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 629
    :catch_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "Couldn\'t create custom event with class name %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {p1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 631
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, p2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_1
    return-void
.end method

.method public static onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 811
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 812
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$9;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 821
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$10;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static onRewardedVideoClickedAction(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 831
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 833
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 834
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClicked(Ljava/lang/String;)V

    .line 837
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 838
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getClickTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 837
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 840
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearClickUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 845
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 846
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$11;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 855
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$12;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    .line 862
    :goto_0
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method private static onRewardedVideoClosedAction(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 866
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 867
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 868
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 877
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 878
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-static {p0, p1, p2, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    .line 881
    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->rewardOnServer(Ljava/lang/String;)V

    return-void
.end method

.method public static onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .line 739
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$4;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 726
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    .line 782
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 783
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 784
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$7;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 792
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;

    invoke-direct {p0, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$8;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static onRewardedVideoPlaybackErrorAction(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/MoPubErrorCode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 802
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 803
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 804
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 805
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public static onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 750
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 751
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedAdData;->getCurrentlyShowingAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 752
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 760
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;

    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$6;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static onRewardedVideoStartedAction(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 770
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 771
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedVideoListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    .line 774
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    .line 775
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->getImpressionTrackerUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mContext:Landroid/content/Context;

    .line 774
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 777
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->clearImpressionUrl(Ljava/lang/String;)V

    return-void
.end method

.method private parseMultiCurrencyJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 669
    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "rewards"

    .line 671
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 674
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 675
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 676
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const-string v3, "name"

    .line 678
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "amount"

    .line 679
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 676
    invoke-virtual {v2, p1, v3, v0}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitRewardMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :cond_0
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 684
    invoke-static {v2}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 685
    iget-object v3, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    const-string v4, "name"

    .line 687
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "amount"

    .line 688
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 685
    invoke-virtual {v3, p1, v4, v2}, Lcom/mopub/mobileads/RewardedAdData;->addAvailableReward(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static postToInstance(Ljava/lang/Runnable;)V
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 969
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 970
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static rewardOnClient(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/mopub/common/MoPubReward;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 928
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$14;-><init>(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static rewardOnServer(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 885
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getServerCompletionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 888
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$13;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->postToInstance(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/MoPubReward;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 489
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 490
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    :goto_0
    return-void
.end method

.method static setCustomEventSharedPrefs(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1031
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 1033
    sput-object p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sCustomEventSharedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static setVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 1
    .param p0    # Lcom/mopub/mobileads/MoPubRewardedVideoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 302
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mVideoListener:Lcom/mopub/mobileads/MoPubRewardedVideoListener;

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    :goto_0
    return-void
.end method

.method public static showVideo(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 414
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->showVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 419
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_1

    .line 425
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 429
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 425
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 432
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdData;->getCustomEvent(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventRewardedAd;

    move-result-object v0

    .line 433
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->isPlayable(Ljava/lang/String;Lcom/mopub/mobileads/CustomEventRewardedAd;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 436
    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v1

    if-nez v1, :cond_2

    .line 437
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 441
    :cond_2
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v3, v3, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    .line 443
    invoke-virtual {v3, p0}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubReward(Ljava/lang/String;)Lcom/mopub/common/MoPubReward;

    move-result-object v3

    .line 441
    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/RewardedAdData;->updateCustomEventLastShownRewardMapping(Ljava/lang/Class;Lcom/mopub/common/MoPubReward;)V

    .line 444
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {v1, p0, p1}, Lcom/mopub/mobileads/RewardedAdData;->updateAdUnitToCustomDataMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mRewardedAdData:Lcom/mopub/mobileads/RewardedAdData;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/RewardedAdData;->setCurrentlyShowingAdUnitId(Ljava/lang/String;)V

    .line 446
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->markPlayed(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventRewardedAd;->show()V

    goto :goto_1

    .line 449
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mAdRequestStatus:Lcom/mopub/mobileads/AdRequestStatusMapping;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/AdRequestStatusMapping;->isLoading(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Rewarded ad is not ready to be shown yet."

    .line 450
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "No rewarded ad loading or loaded."

    .line 452
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 455
    :goto_0
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->failover(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_1
    return-void
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 232
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->sInstance:Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->mMainActivity:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->logErrorNotInitialized()V

    :goto_0
    return-void
.end method
