.class Lcom/facebook/ads/RewardedVideoAd$1;
.super Lcom/facebook/ads/internal/adapters/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/RewardedVideoAd;->b(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/RewardedVideoAd;


# direct methods
.method constructor <init>(Lcom/facebook/ads/RewardedVideoAd;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdClicked(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V
    .locals 1

    check-cast p1, Lcom/facebook/ads/internal/adapters/ae;

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->b(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/ae;->a(Lcom/facebook/ads/RewardData;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ae;->a()I

    move-result p1

    invoke-static {v0, p1}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;I)I

    iget-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {p1}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {p1}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {p1, v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {p1}, Lcom/facebook/ads/AdError;->getAdErrorFromWrapper(Lcom/facebook/ads/internal/protocol/a;)Lcom/facebook/ads/AdError;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/RewardedVideoAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-interface {v0, v1}, Lcom/facebook/ads/RewardedVideoAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/RewardedVideoAdListener;->onRewardedVideoClosed()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerFailed()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/RewardedVideoAd$1;->a:Lcom/facebook/ads/RewardedVideoAd;

    invoke-static {v0}, Lcom/facebook/ads/RewardedVideoAd;->a(Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/S2SRewardedVideoAdListener;

    invoke-interface {v0}, Lcom/facebook/ads/S2SRewardedVideoAdListener;->onRewardServerSuccess()V

    :cond_0
    return-void
.end method
