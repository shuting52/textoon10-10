.class public Lcom/facebook/ads/internal/view/component/h;
.super Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/n/e;Lcom/facebook/ads/internal/n/h;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/facebook/ads/internal/q/a/v;->b:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41700000    # 15.0f

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/component/h;->addView(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/e;->m()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/e;->l()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, p3}, Lcom/facebook/ads/internal/view/p;->a(Landroid/widget/TextView;Lcom/facebook/ads/internal/n/h;)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/component/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/facebook/ads/internal/n/e;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/view/p;->b(Landroid/widget/TextView;Lcom/facebook/ads/internal/n/h;)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
