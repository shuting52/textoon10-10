.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;
.super Landroid/widget/ScrollView;
.source "AdaptableScrollView.java"


# instance fields
.field maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    .line 18
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->AdaptableScrollView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x64

    .line 19
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 24
    const/4 v3, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    if-lez v0, :cond_3

    const/4 v3, 0x2

    .line 25
    const/4 v3, 0x3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 26
    const/4 v3, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    const/4 v3, 0x0

    .line 36
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    const/4 v3, 0x3

    .line 33
    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    const/4 v3, 0x2

    .line 30
    const/4 v3, 0x3

    :cond_2
    const/4 v3, 0x0

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/AdaptableScrollView;->maxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 41
    const/4 v3, 0x1

    :cond_3
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void

    const/4 v1, 0x3
.end method
