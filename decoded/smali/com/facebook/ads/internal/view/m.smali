.class public abstract Lcom/facebook/ads/internal/view/m;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/view/a;


# static fields
.field protected static final a:I


# instance fields
.field protected final b:Lcom/facebook/ads/internal/m/c;

.field protected final c:Lcom/facebook/ads/internal/view/g;

.field protected d:Lcom/facebook/ads/internal/adapters/j;

.field protected e:Lcom/facebook/ads/internal/adapters/j;

.field private f:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/facebook/ads/internal/q/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/q/a/v;->b:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/m;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/m;->b:Lcom/facebook/ads/internal/m/c;

    new-instance p1, Lcom/facebook/ads/internal/view/g;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/ads/internal/view/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    new-instance p1, Lcom/facebook/ads/internal/q/a/q;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/q/a/q;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/q/a/q;

    return-void
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->removeAllViews()V

    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/v;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;ZI)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/q/a/q;

    sget-object v1, Lcom/facebook/ads/internal/q/a/q$a;->a:Lcom/facebook/ads/internal/q/a/q$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/q/a/q;->a(Lcom/facebook/ads/internal/q/a/q$a;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/m;->a()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    sget v3, Lcom/facebook/ads/internal/view/m;->a:I

    :goto_0
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/facebook/ads/internal/view/m;->a:I

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/facebook/ads/internal/view/m;->d:Lcom/facebook/ads/internal/adapters/j;

    invoke-virtual {p3, p2}, Lcom/facebook/ads/internal/adapters/j;->d(Z)I

    move-result p3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->d:Lcom/facebook/ads/internal/adapters/j;

    :goto_1
    invoke-virtual {v0, v1, p2}, Lcom/facebook/ads/internal/view/g;->a(Lcom/facebook/ads/internal/adapters/j;Z)V

    goto :goto_2

    :cond_1
    iget-object p3, p0, Lcom/facebook/ads/internal/view/m;->e:Lcom/facebook/ads/internal/adapters/j;

    invoke-virtual {p3, p2}, Lcom/facebook/ads/internal/adapters/j;->d(Z)I

    move-result p3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->e:Lcom/facebook/ads/internal/adapters/j;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/internal/view/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0, p3}, Lcom/facebook/ads/internal/q/a/v;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/m;->f:Lcom/facebook/ads/internal/view/a$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/m;->f:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {p1, p0}, Lcom/facebook/ads/internal/view/a$a;->a(Landroid/view/View;)V

    if-eqz p2, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/q/a/q;

    sget-object p2, Lcom/facebook/ads/internal/q/a/q$a;->b:Lcom/facebook/ads/internal/q/a/q$a;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/q/a/q;->a(Lcom/facebook/ads/internal/q/a/q$a;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/v;)V
    .locals 8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/q/a/q;

    invoke-virtual {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/q/a/q;->a(Landroid/view/Window;)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->h()Lcom/facebook/ads/internal/adapters/j;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->d:Lcom/facebook/ads/internal/adapters/j;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->i()Lcom/facebook/ads/internal/adapters/j;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/m;->e:Lcom/facebook/ads/internal/adapters/j;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/internal/adapters/d;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/adapters/d;->l()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/ads/internal/view/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    new-instance v0, Lcom/facebook/ads/internal/view/m$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/view/m$1;-><init>(Lcom/facebook/ads/internal/view/m;Lcom/facebook/ads/AudienceNetworkActivity;)V

    invoke-virtual {p2, v0}, Lcom/facebook/ads/internal/view/g;->setToolbarListener(Lcom/facebook/ads/internal/view/g$a;)V

    return-void
.end method

.method getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->f:Lcom/facebook/ads/internal/view/a$a;

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/g;->d()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/m;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/facebook/ads/internal/view/m$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/view/m$2;-><init>(Lcom/facebook/ads/internal/view/m;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->g:Lcom/facebook/ads/internal/q/a/q;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/q/a/q;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/m;->c:Lcom/facebook/ads/internal/view/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/g;->setToolbarListener(Lcom/facebook/ads/internal/view/g$a;)V

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/m;->a()V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/m;->f:Lcom/facebook/ads/internal/view/a$a;

    return-void
.end method
