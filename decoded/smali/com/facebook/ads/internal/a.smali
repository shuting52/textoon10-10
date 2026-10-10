.class public Lcom/facebook/ads/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/o/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/a$b;,
        Lcom/facebook/ads/internal/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/ads/internal/o/c;

.field private final d:Lcom/facebook/ads/internal/protocol/f;

.field private final e:Lcom/facebook/ads/internal/protocol/d;

.field private final f:Lcom/facebook/ads/AdSize;

.field private final g:I

.field private h:Z

.field private final i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;

.field private final k:Lcom/facebook/ads/internal/m/c;

.field private l:Lcom/facebook/ads/internal/a$a;

.field private m:Lcom/facebook/ads/internal/h/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/internal/q/a/d;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/AdSize;Lcom/facebook/ads/internal/protocol/d;ILjava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/protocol/f;",
            "Lcom/facebook/ads/AdSize;",
            "Lcom/facebook/ads/internal/protocol/d;",
            "I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/NativeAd$MediaCacheFlag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/a;->d:Lcom/facebook/ads/internal/protocol/f;

    iput-object p4, p0, Lcom/facebook/ads/internal/a;->f:Lcom/facebook/ads/AdSize;

    iput-object p5, p0, Lcom/facebook/ads/internal/a;->e:Lcom/facebook/ads/internal/protocol/d;

    iput p6, p0, Lcom/facebook/ads/internal/a;->g:I

    new-instance p2, Lcom/facebook/ads/internal/o/c;

    invoke-direct {p2, p1}, Lcom/facebook/ads/internal/o/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/a;->c:Lcom/facebook/ads/internal/o/c;

    iget-object p2, p0, Lcom/facebook/ads/internal/a;->c:Lcom/facebook/ads/internal/o/c;

    invoke-virtual {p2, p0}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/c$a;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/facebook/ads/internal/a;->h:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/a;->i:Landroid/os/Handler;

    new-instance p2, Lcom/facebook/ads/internal/a$b;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/a$b;-><init>(Lcom/facebook/ads/internal/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/a;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/facebook/ads/internal/m/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/m/c;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/a;->k:Lcom/facebook/ads/internal/m/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/i/a;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/a;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/a;->i:Landroid/os/Handler;

    return-object p0
.end method

.method private d()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/adapters/ab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/a;->m:Lcom/facebook/ads/internal/h/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->d()Lcom/facebook/ads/internal/h/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->c()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/a;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-static {v3, v4}, Lcom/facebook/ads/internal/adapters/f;->a(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/facebook/ads/internal/adapters/AdAdapter;->getPlacementType()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v4

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v4, v5, :cond_0

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v4, "data"

    invoke-virtual {v1}, Lcom/facebook/ads/internal/h/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v10, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "definition"

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v4

    invoke-interface {v10, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Lcom/facebook/ads/internal/adapters/ab;

    iget-object v7, p0, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    new-instance v8, Lcom/facebook/ads/internal/a$1;

    invoke-direct {v8, p0, v2}, Lcom/facebook/ads/internal/a$1;-><init>(Lcom/facebook/ads/internal/a;Ljava/util/List;)V

    iget-object v9, p0, Lcom/facebook/ads/internal/a;->k:Lcom/facebook/ads/internal/m/c;

    invoke-static {}, Lcom/facebook/ads/NativeAd;->getViewTraversalPredicate()Lcom/facebook/ads/internal/n/e$d;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/ads/internal/adapters/ab;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/c;->d()Lcom/facebook/ads/internal/h/a;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 19

    move-object/from16 v1, p0

    :try_start_0
    new-instance v14, Lcom/facebook/ads/internal/protocol/h;

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3, v3, v3}, Lcom/facebook/ads/internal/protocol/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/protocol/f;)V
    :try_end_0
    .catch Lcom/facebook/ads/internal/protocol/b; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v15, Lcom/facebook/ads/internal/o/b;

    iget-object v4, v1, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    new-instance v5, Lcom/facebook/ads/internal/i/c;

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/facebook/ads/internal/i/c;-><init>(Landroid/content/Context;Z)V

    iget-object v6, v1, Lcom/facebook/ads/internal/a;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->f:Lcom/facebook/ads/AdSize;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/facebook/ads/internal/q/a/k;

    iget-object v3, v1, Lcom/facebook/ads/internal/a;->f:Lcom/facebook/ads/AdSize;

    invoke-virtual {v3}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v3

    iget-object v7, v1, Lcom/facebook/ads/internal/a;->f:Lcom/facebook/ads/AdSize;

    invoke-virtual {v7}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v7

    invoke-direct {v2, v3, v7}, Lcom/facebook/ads/internal/q/a/k;-><init>(II)V

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    iget-object v8, v1, Lcom/facebook/ads/internal/a;->d:Lcom/facebook/ads/internal/protocol/f;

    iget-object v9, v1, Lcom/facebook/ads/internal/a;->e:Lcom/facebook/ads/internal/protocol/d;

    const/4 v10, 0x0

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->d:Lcom/facebook/ads/internal/protocol/f;

    invoke-static {v2}, Lcom/facebook/ads/internal/protocol/c;->a(Lcom/facebook/ads/internal/protocol/f;)Lcom/facebook/ads/internal/protocol/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/c;->a()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/f;->a(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Ljava/lang/String;

    move-result-object v11

    iget v12, v1, Lcom/facebook/ads/internal/a;->g:I

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v13

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isChildDirected()Z

    move-result v16

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/ads/internal/l/a;->m(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/n;->a(I)Ljava/lang/String;

    move-result-object v17

    move-object v2, v15

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-direct/range {v2 .. v15}, Lcom/facebook/ads/internal/o/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/i/c;Ljava/lang/String;Lcom/facebook/ads/internal/q/a/k;Lcom/facebook/ads/internal/protocol/f;Lcom/facebook/ads/internal/protocol/d;Ljava/lang/String;Ljava/lang/String;IZZLcom/facebook/ads/internal/protocol/h;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/facebook/ads/internal/a;->c:Lcom/facebook/ads/internal/o/c;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/o/c;->a(Lcom/facebook/ads/internal/o/b;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-static {v2}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/b;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a$a;

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/o/g;)V
    .locals 5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/o/g;->a()Lcom/facebook/ads/internal/h/c;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no placement in response"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/a;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/h/c;->a()Lcom/facebook/ads/internal/h/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/h/d;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/32 v0, 0x1b7740

    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/internal/a;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/ads/internal/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iput-object p1, p0, Lcom/facebook/ads/internal/a;->m:Lcom/facebook/ads/internal/h/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/a;->d()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a$a;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a$a;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/a$a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/a$a;->a(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/protocol/a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/facebook/ads/internal/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/a;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/a;->l:Lcom/facebook/ads/internal/a$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/a$a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/a;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
