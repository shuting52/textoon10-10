.class public Lcom/facebook/ads/internal/view/t;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/facebook/ads/internal/view/t;->a:I

    iput p1, p0, Lcom/facebook/ads/internal/view/t;->b:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget p1, p0, Lcom/facebook/ads/internal/view/t;->b:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/facebook/ads/internal/view/t;->b:I

    if-le p1, p2, :cond_0

    iget p1, p0, Lcom/facebook/ads/internal/view/t;->b:I

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/internal/view/t;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/t;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/facebook/ads/internal/view/t;->a:I

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/facebook/ads/internal/view/t;->a:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/t;->b:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/t;->a:I

    return-void
.end method
