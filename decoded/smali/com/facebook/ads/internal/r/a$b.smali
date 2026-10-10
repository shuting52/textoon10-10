.class final Lcom/facebook/ads/internal/r/a$b;
.super Lcom/facebook/ads/internal/q/a/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/q/a/w<",
        "Lcom/facebook/ads/internal/r/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/r/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/q/a/w;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-virtual {p0}, Lcom/facebook/ads/internal/r/a$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/r/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->b(Lcom/facebook/ads/internal/r/a;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/internal/r/a$a;

    if-eqz v1, :cond_b

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->c(Lcom/facebook/ads/internal/r/a;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/facebook/ads/internal/r/a;->a(Landroid/view/View;I)Lcom/facebook/ads/internal/r/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->d(Lcom/facebook/ads/internal/r/a;)I

    goto :goto_0

    :cond_2
    invoke-static {v0, v4}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;I)I

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->e(Lcom/facebook/ads/internal/r/a;)I

    move-result v3

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->f(Lcom/facebook/ads/internal/r/a;)I

    move-result v5

    const/4 v6, 0x1

    if-le v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->g(Lcom/facebook/ads/internal/r/a;)Lcom/facebook/ads/internal/r/b;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->g(Lcom/facebook/ads/internal/r/a;)Lcom/facebook/ads/internal/r/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-nez v3, :cond_5

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/b;->a()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/r/b;)Lcom/facebook/ads/internal/r/b;

    :cond_6
    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_7
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->h(Lcom/facebook/ads/internal/r/a;)Ljava/util/Map;

    move-result-object v7

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_8

    if-nez v5, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/internal/r/a;->a(Lcom/facebook/ads/internal/r/a;J)J

    invoke-virtual {v2}, Lcom/facebook/ads/internal/r/a$a;->a()V

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->i(Lcom/facebook/ads/internal/r/a;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_8
    if-nez v3, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Lcom/facebook/ads/internal/r/a$a;->b()V

    :cond_9
    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->j(Lcom/facebook/ads/internal/r/a;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->k(Lcom/facebook/ads/internal/r/a;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->m(Lcom/facebook/ads/internal/r/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->k(Lcom/facebook/ads/internal/r/a;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0}, Lcom/facebook/ads/internal/r/a;->l(Lcom/facebook/ads/internal/r/a;)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_b
    return-void
.end method
