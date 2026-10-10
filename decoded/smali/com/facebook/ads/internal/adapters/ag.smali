.class public Lcom/facebook/ads/internal/adapters/ag;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/ads/internal/adapters/af;

.field private c:Lcom/facebook/ads/internal/adapters/ae;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/internal/adapters/af;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->a:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->d:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->f:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->g:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->h:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->i:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->a:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/af;->d(Lcom/facebook/ads/internal/adapters/ae;)V

    return-void

    :cond_0
    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->d:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/internal/adapters/af;->a(Lcom/facebook/ads/internal/adapters/ae;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1
    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/af;->b(Lcom/facebook/ads/internal/adapters/ae;)V

    return-void

    :cond_2
    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->f:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/af;->c(Lcom/facebook/ads/internal/adapters/ae;)V

    return-void

    :cond_3
    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->g:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    invoke-interface {p1}, Lcom/facebook/ads/internal/adapters/af;->a()V

    return-void

    :cond_4
    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->i:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/af;->e(Lcom/facebook/ads/internal/adapters/ae;)V

    return-void

    :cond_5
    sget-object p2, Lcom/facebook/ads/internal/view/e/b/z;->h:Lcom/facebook/ads/internal/view/e/b/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/ag;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/e/b/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/ag;->b:Lcom/facebook/ads/internal/adapters/af;

    iget-object p2, p0, Lcom/facebook/ads/internal/adapters/ag;->c:Lcom/facebook/ads/internal/adapters/ae;

    invoke-interface {p1, p2}, Lcom/facebook/ads/internal/adapters/af;->f(Lcom/facebook/ads/internal/adapters/ae;)V

    :cond_6
    return-void
.end method
