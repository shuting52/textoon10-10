.class Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardedVideoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V
    .locals 0

    .line 525
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 553
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 554
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 548
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 538
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FacebookAdapter"

    .line 540
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v1, p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$500(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/AdError;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoClosed()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public onRewardedVideoCompleted()V
    .locals 5

    .line 533
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    new-instance v2, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    return-void
.end method
