.class public Lcom/mopub/mobileads/RewardedMraidActivity;
.super Lcom/mopub/mobileads/MraidActivity;
.source "RewardedMraidActivity.java"


# instance fields
.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-object p0
.end method

.method protected static createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "Html-Response-Body"

    .line 55
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "broadcastIdentifier"

    .line 56
    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "mopub-intent-ad-report"

    .line 57
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "Rewarded-Ad-Duration"

    .line 58
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "Should-Reward-On-Click"

    .line 59
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static start(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-static/range {p0 .. p6}, Lcom/mopub/mobileads/RewardedMraidActivity;->createIntent(Landroid/content/Context;Lcom/mopub/common/AdReport;Ljava/lang/String;JIZ)Landroid/content/Intent;

    move-result-object p1

    .line 43
    :try_start_0
    invoke-static {p0, p1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "RewardedMraidActivity"

    const-string p1, "RewardedMraidActivity.class not found. Did you declare RewardedMraidActivity in your manifest?"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 11

    .line 65
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Html-Response-Body"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "RewardedMraidActivity received a null HTML body. Finishing the activity."

    .line 68
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    .line 70
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "RewardedMraidActivity received a null broadcast id. Finishing the activity."

    .line 72
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    .line 74
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const-string v2, "Rewarded-Ad-Duration"

    const/16 v3, 0x1e

    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v2, "Should-Reward-On-Click"

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    new-instance v2, Lcom/mopub/mraid/RewardedMraidController;

    iget-object v6, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mAdReport:Lcom/mopub/common/AdReport;

    sget-object v7, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 84
    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/mopub/mraid/RewardedMraidController;-><init>(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;IJ)V

    iput-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    .line 86
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    iget-object v3, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/RewardedMraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 87
    iget-object v2, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    new-instance v3, Lcom/mopub/mobileads/RewardedMraidActivity$1;

    invoke-direct {v3, p0, v0}, Lcom/mopub/mobileads/RewardedMraidActivity$1;-><init>(Lcom/mopub/mobileads/RewardedMraidActivity;Z)V

    invoke-virtual {v2, v3}, Lcom/mopub/mraid/RewardedMraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/mopub/mraid/RewardedMraidController;->fillContent(Ljava/lang/Long;Ljava/lang/String;Lcom/mopub/mraid/MraidController$MraidWebViewCacheListener;)V

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->getAdContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedMraidController()Lcom/mopub/mraid/RewardedMraidController;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->backButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    invoke-super {p0, p1}, Lcom/mopub/mobileads/MraidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {p0}, Lcom/mopub/mobileads/RewardedMraidActivity;->getCloseableLayout()Lcom/mopub/common/CloseableLayout;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/mopub/mraid/RewardedMraidController;->create(Landroid/content/Context;Lcom/mopub/common/CloseableLayout;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->destroy()V

    .line 158
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->pause()V

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/mopub/mobileads/MraidActivity;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->resume()V

    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity;->mRewardedMraidController:Lcom/mopub/mraid/RewardedMraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/RewardedMraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    :cond_0
    return-void
.end method
