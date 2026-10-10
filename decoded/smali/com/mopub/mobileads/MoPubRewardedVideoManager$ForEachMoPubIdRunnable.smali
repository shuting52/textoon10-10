.class abstract Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;
.super Ljava/lang/Object;
.source "MoPubRewardedVideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubRewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ForEachMoPubIdRunnable"
.end annotation


# instance fields
.field private final mCustomEventClass:Ljava/lang/Class;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private final mThirdPartyId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/mobileads/CustomEventRewardedAd;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 991
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 992
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    .line 993
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract forEach(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public run()V
    .locals 3

    .line 1000
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$200()Lcom/mopub/mobileads/MoPubRewardedVideoManager;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->access$1000(Lcom/mopub/mobileads/MoPubRewardedVideoManager;)Lcom/mopub/mobileads/RewardedAdData;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mCustomEventClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->mThirdPartyId:Ljava/lang/String;

    .line 1001
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RewardedAdData;->getMoPubIdsForAdNetwork(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1002
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1003
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$ForEachMoPubIdRunnable;->forEach(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
