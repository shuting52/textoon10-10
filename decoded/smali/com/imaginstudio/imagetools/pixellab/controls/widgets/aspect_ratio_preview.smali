.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;
.super Landroid/view/View;
.source "aspect_ratio_preview.java"


# instance fields
.field bounds:Landroid/graphics/RectF;

.field height:I

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->width:I

    .line 19
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->height:I

    return-void
.end method


# virtual methods
.method dpToPixels(I)F
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 55
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method public getAspectX()I
    .locals 2

    const/4 v1, 0x3

    .line 70
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->width:I

    return v0

    const/4 v1, 0x1
.end method

.method public getAspectY()I
    .locals 2

    const/4 v1, 0x2

    .line 74
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->height:I

    return v0

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    .line 29
    const/4 v5, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 30
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 31
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    .line 32
    const/4 v5, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 33
    const/4 v5, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->height:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 34
    const/4 v5, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->width:I

    int-to-float v2, v2

    mul-float v0, v0, v2

    .line 35
    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    .line 36
    const/4 v5, 0x1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 37
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 38
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const-string v1, "#ffc107"

    .line 39
    const/4 v5, 0x0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 42
    const/4 v5, 0x2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x2

    .line 43
    const/4 v5, 0x3

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string v2, "#e91e63"

    .line 44
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    const/4 v5, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->dpToPixels(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->dpToPixels(I)F

    move-result v1

    div-float/2addr v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 49
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 51
    const/4 v5, 0x3

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setAspectX(I)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->width:I

    .line 62
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setAspectY(I)V
    .locals 1

    const/4 v0, 0x1

    .line 65
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->height:I

    .line 66
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspect_ratio_preview;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
