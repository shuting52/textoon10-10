.class public Lcom/facebook/ads/internal/m/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/m/c;


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static b:D

.field private static c:Ljava/lang/String;

.field private static volatile d:Z

.field private static h:Lcom/facebook/ads/internal/m/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final e:Lcom/facebook/ads/internal/m/b;

.field private final f:Lcom/facebook/ads/internal/e/d;

.field private final g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/m/d;->g:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/internal/e/d;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/e/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/d;->f:Lcom/facebook/ads/internal/e/d;

    new-instance v0, Lcom/facebook/ads/internal/m/b;

    new-instance v1, Lcom/facebook/ads/internal/m/g;

    iget-object v2, p0, Lcom/facebook/ads/internal/m/d;->f:Lcom/facebook/ads/internal/e/d;

    invoke-direct {v1, p1, v2}, Lcom/facebook/ads/internal/m/g;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/e/d;)V

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/internal/m/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/b$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/m/d;->e:Lcom/facebook/ads/internal/m/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/m/d;->e:Lcom/facebook/ads/internal/m/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/b;->b()V

    invoke-static {p1}, Lcom/facebook/ads/internal/m/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/m/d;)Lcom/facebook/ads/internal/m/b;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/m/d;->e:Lcom/facebook/ads/internal/m/b;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/facebook/ads/internal/m/c;
    .locals 2

    const-class v0, Lcom/facebook/ads/internal/m/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/ads/internal/m/d;->h:Lcom/facebook/ads/internal/m/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/facebook/ads/internal/m/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/m/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/facebook/ads/internal/m/d;->h:Lcom/facebook/ads/internal/m/c;

    :cond_0
    sget-object p0, Lcom/facebook/ads/internal/m/d;->h:Lcom/facebook/ads/internal/m/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/facebook/ads/internal/m/a;)V
    .locals 12

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/m/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to log an invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->i()Lcom/facebook/ads/internal/m/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " event."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/internal/m/d;->f:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->h()Lcom/facebook/ads/internal/m/e;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/internal/m/e;->c:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->i()Lcom/facebook/ads/internal/m/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->b()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->c()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a;->e()Ljava/util/Map;

    move-result-object v10

    new-instance v11, Lcom/facebook/ads/internal/m/d$1;

    invoke-direct {v11, p0, p1}, Lcom/facebook/ads/internal/m/d$1;-><init>(Lcom/facebook/ads/internal/m/d;Lcom/facebook/ads/internal/m/a;)V

    invoke-virtual/range {v1 .. v11}, Lcom/facebook/ads/internal/e/d;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/facebook/ads/internal/m/d;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/facebook/ads/internal/m/d;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/internal/i/a;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/i/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/a;->a()V

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->a()V

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->b()D

    move-result-wide v1

    sput-wide v1, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-static {}, Lcom/facebook/ads/internal/q/a/m;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/facebook/ads/internal/m/d;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/facebook/ads/internal/q/c/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/m/d;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/q/c/e;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/q/c/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->d:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/internal/m/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/m/e;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-static {p3}, Lcom/facebook/ads/internal/m/f;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->e:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->h:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->j:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->b:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->i:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->b:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->b:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->a:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->f:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/m/a$a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/m/a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-wide v0, Lcom/facebook/ads/internal/m/d;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/facebook/ads/internal/m/a$a;->a(D)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/m/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/m/a$a;->b(Ljava/lang/String;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Ljava/util/Map;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/e;->b:Lcom/facebook/ads/internal/m/e;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/e;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/m/f;->c:Lcom/facebook/ads/internal/m/f;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Lcom/facebook/ads/internal/m/f;)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/m/a$a;->a(Z)Lcom/facebook/ads/internal/m/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/m/a$a;->a()Lcom/facebook/ads/internal/m/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/m/d;->a(Lcom/facebook/ads/internal/m/a;)V

    return-void
.end method
