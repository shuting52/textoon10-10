.class public Lcom/facebook/ads/internal/view/component/b;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/facebook/ads/internal/view/r;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/n/e;Lcom/facebook/ads/internal/n/h;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/b;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/b;->setVerticalGravity(I)V

    new-instance v0, Lcom/facebook/ads/internal/view/r;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/view/r;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/n/h;->h()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/r;->setMinTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/e;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/r;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    invoke-static {v0, p3}, Lcom/facebook/ads/internal/view/p;->a(Landroid/widget/TextView;Lcom/facebook/ads/internal/n/h;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/component/b;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/e;->l()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/facebook/ads/internal/view/component/b;->b:I

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/internal/view/p;->a(Landroid/content/Context;Lcom/facebook/ads/internal/n/e;Lcom/facebook/ads/internal/n/h;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/component/b;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMinVisibleTitleCharacters()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/component/b;->b:I

    return v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/b;->a:Lcom/facebook/ads/internal/view/r;

    return-object v0
.end method
