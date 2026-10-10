.class public Lcom/facebook/ads/internal/adapters/p;
.super Lcom/facebook/ads/internal/adapters/ae;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/facebook/ads/internal/adapters/af;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/facebook/ads/internal/adapters/ad;

.field private k:Lcom/facebook/ads/internal/adapters/ag;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/ae;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/p;)Lcom/facebook/ads/internal/adapters/af;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/p;->e:Lcom/facebook/ads/internal/adapters/af;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/p;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/p;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/p;)Lcom/facebook/ads/internal/adapters/ad;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/adapters/ag;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/adapters/ag;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ag;->a()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/adapters/ag;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/adapters/ag;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->a:Lcom/facebook/ads/RewardData;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/facebook/ads/AdSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "https://www.%s.facebook.com/audience_network/server_side_reward"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "https://www.facebook.com/audience_network/server_side_reward"

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "puid"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->a:Lcom/facebook/ads/RewardData;

    invoke-virtual {v2}, Lcom/facebook/ads/RewardData;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "pc"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->a:Lcom/facebook/ads/RewardData;

    invoke-virtual {v2}, Lcom/facebook/ads/RewardData;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "ptid"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "appid"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->m()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/af;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/af;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/p;->e:Lcom/facebook/ads/internal/adapters/af;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Z

    const-string v1, "placementId"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->h:Ljava/lang/String;

    const-string v1, "requestTime"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/internal/adapters/p;->i:J

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/p;->h:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->g:Ljava/lang/String;

    const-string v0, "data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/facebook/ads/internal/adapters/ad;->a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/adapters/ad;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/ad;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->e:Lcom/facebook/ads/internal/adapters/af;

    sget-object p2, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, p0, p2}, Lcom/facebook/ads/internal/adapters/af;->a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1
    new-instance p3, Lcom/facebook/ads/internal/adapters/ag;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    invoke-direct {p3, v0, p0, p2}, Lcom/facebook/ads/internal/adapters/ag;-><init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/internal/adapters/af;)V

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/p;->k:Lcom/facebook/ads/internal/adapters/ag;

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/p;->c()V

    new-instance p2, Lcom/facebook/ads/internal/d/b;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/d/b;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ad;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ad;->i()Ljava/lang/String;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3, p3}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ad;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p3}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ad;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p3}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ad;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0, p3, p3}, Lcom/facebook/ads/internal/d/b;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/facebook/ads/internal/adapters/p$1;

    invoke-direct {p1, p0, p4, p2}, Lcom/facebook/ads/internal/adapters/p$1;-><init>(Lcom/facebook/ads/internal/adapters/p;ZLcom/facebook/ads/internal/d/b;)V

    invoke-virtual {p2, p1}, Lcom/facebook/ads/internal/d/b;->a(Lcom/facebook/ads/internal/d/a;)V

    return-void
.end method

.method public b()Z
    .locals 5

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/p;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/p;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/internal/adapters/ad;->a(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    const-class v4, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "viewType"

    sget-object v4, Lcom/facebook/ads/internal/settings/a$a;->g:Lcom/facebook/ads/internal/settings/a$a;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "rewardedVideoAdDataBundle"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/p;->j:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "uniqueId"

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "rewardServerURL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "placementId"

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/p;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "requestTime"

    iget-wide v3, p0, Lcom/facebook/ads/internal/adapters/p;->i:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v0, p0, Lcom/facebook/ads/internal/adapters/p;->b:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1

    const-string v0, "predefinedOrientationKey"

    iget v1, p0, Lcom/facebook/ads/internal/adapters/p;->b:I

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/l/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "predefinedOrientationKey"

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/p;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v4
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/p;->d()V

    return-void
.end method
