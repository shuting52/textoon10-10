.class Lcom/mopub/mobileads/RewardedMraidActivity$1;
.super Ljava/lang/Object;
.source "RewardedMraidActivity.java"

# interfaces
.implements Lcom/mopub/mraid/MraidController$MraidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/RewardedMraidActivity;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

.field final synthetic val$shouldRewardOnClick:Z


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/RewardedMraidActivity;Z)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    iput-boolean p2, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->val$shouldRewardOnClick:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_CLOSE:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v1}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/RewardedMraidController;->loadJavascript(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    return-void
.end method

.method public onExpand()V
    .locals 0

    return-void
.end method

.method public onFailedToLoad()V
    .locals 4

    const-string v0, "RewardedMraidActivity failed to load. Finishing the activity"

    .line 97
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.fail"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->finish()V

    return-void
.end method

.method public onLoaded(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-static {p1}, Lcom/mopub/mobileads/RewardedMraidActivity;->access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;

    move-result-object p1

    sget-object v0, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->WEB_VIEW_DID_APPEAR:Lcom/mopub/common/util/JavaScriptWebViewCallbacks;

    invoke-virtual {v0}, Lcom/mopub/common/util/JavaScriptWebViewCallbacks;->getJavascript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/RewardedMraidController;->loadJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen()V
    .locals 4

    .line 115
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->val$shouldRewardOnClick:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-static {v0}, Lcom/mopub/mobileads/RewardedMraidActivity;->access$000(Lcom/mopub/mobileads/RewardedMraidActivity;)Lcom/mopub/mraid/RewardedMraidController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mraid/RewardedMraidController;->showPlayableCloseButton()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedMraidActivity$1;->this$0:Lcom/mopub/mobileads/RewardedMraidActivity;

    invoke-virtual {v1}, Lcom/mopub/mobileads/RewardedMraidActivity;->getBroadcastIdentifier()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.mopub.action.interstitial.click"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method
