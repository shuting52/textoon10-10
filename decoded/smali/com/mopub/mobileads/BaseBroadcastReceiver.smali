.class public abstract Lcom/mopub/mobileads/BaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseBroadcastReceiver.java"


# instance fields
.field private final mBroadcastIdentifier:J

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mBroadcastIdentifier:J

    return-void
.end method

.method public static broadcastAction(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "context cannot be null"

    .line 24
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action cannot be null"

    .line 25
    invoke-static {p3, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "broadcastIdentifier"

    .line 27
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public abstract getIntentFilter()Landroid/content/IntentFilter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    iput-object p2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 36
    iget-object p2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p2

    .line 37
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 36
    invoke-virtual {p2, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public shouldConsumeBroadcast(Landroid/content/Intent;)Z
    .locals 4
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "intent cannot be null"

    .line 54
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastIdentifier"

    const-wide/16 v1, -0x1

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mBroadcastIdentifier:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public unregister(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1    # Landroid/content/BroadcastReceiver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/mopub/mobileads/BaseBroadcastReceiver;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
