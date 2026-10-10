.class public abstract Lcom/mopub/mobileads/MoPubRewardedAd;
.super Lcom/mopub/mobileads/CustomEventRewardedAd;
.source "MoPubRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    }
.end annotation


# instance fields
.field protected mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mIsLoaded:Z

.field private mRewardedAdCurrencyAmount:I

.field private mRewardedAdCurrencyName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedAd;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/mobileads/MoPubRewardedAd;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return p1
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method createListener(Ljava/lang/Class;)Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/MoPubRewardedAd;",
            ">;)",
            "Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    new-instance v0, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAd$MoPubRewardedAdListener;-><init>(Lcom/mopub/mobileads/MoPubRewardedAd;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRewardedAdCurrencyAmount()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    return v0
.end method

.method protected getRewardedAdCurrencyName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    return-object v0
.end method

.method protected isReady()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return v0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "activity cannot be null"

    .line 49
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "localExtras cannot be null"

    .line 50
    invoke-static {p2, p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "serverExtras cannot be null"

    .line 51
    invoke-static {p3, p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Rewarded-Ad-Currency-Name"

    .line 53
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 56
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "No currency name specified for rewarded video. Using the default name."

    .line 58
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    const-string p1, ""

    .line 59
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyName:Ljava/lang/String;

    :goto_0
    const-string p1, "Rewarded-Ad-Currency-Value-String"

    .line 62
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    instance-of p3, p1, Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 66
    :try_start_0
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to convert currency amount: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Using the default reward amount: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 73
    iput v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    goto :goto_1

    :cond_1
    const-string p1, "No currency amount specified for rewarded ad. Using the default reward amount: 0"

    .line 76
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 79
    iput v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    .line 82
    :goto_1
    iget p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    if-gez p1, :cond_2

    const-string p1, "Negative currency amount specified for rewarded ad. Using the default reward amount: 0"

    .line 83
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 86
    iput v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mRewardedAdCurrencyAmount:I

    :cond_2
    const-string p1, "com_mopub_ad_unit_id"

    .line 89
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 90
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 91
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mAdUnitId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p1, "Unable to set ad unit for rewarded ad."

    .line 93
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onInvalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return-void
.end method

.method setIsLoaded(Z)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/mopub/mobileads/MoPubRewardedAd;->mIsLoaded:Z

    return-void
.end method
