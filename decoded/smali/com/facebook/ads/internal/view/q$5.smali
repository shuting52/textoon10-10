.class Lcom/facebook/ads/internal/view/q$5;
.super Lcom/facebook/ads/internal/view/e/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/q;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/q;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/l;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/q$5;->a(Lcom/facebook/ads/internal/view/e/b/l;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/l;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/q;->e(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/q;->e(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/view/e/a/a;->b:Lcom/facebook/ads/internal/view/e/a/a;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/e/b;->a(Lcom/facebook/ads/internal/view/e/a/a;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/q;->f(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/internal/r/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/r/a;->a()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/q;->g(Lcom/facebook/ads/internal/view/q;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/q;->e(Lcom/facebook/ads/internal/view/q;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/q$5;->a:Lcom/facebook/ads/internal/view/q;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/q;->h(Lcom/facebook/ads/internal/view/q;)V

    :cond_0
    return-void
.end method
