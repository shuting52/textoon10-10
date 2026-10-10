.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;
.super Landroid/view/View;
.source "aspectButton.java"


# instance fields
.field aspectText:Ljava/lang/String;

.field public aspectX:I

.field public aspectY:I

.field bounds:Landroid/graphics/RectF;

.field drawColor:I

.field iconBounds:Landroid/graphics/RectF;

.field iconPadding:F

.field iconRect:Landroid/graphics/RectF;

.field pnt:Landroid/graphics/Paint;

.field pntIcon:Landroid/graphics/Paint;

.field textBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    .line 18
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    const/high16 p1, 0x40800000    # 4.0f

    .line 21
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->dpToPixels(F)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconPadding:F

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->bounds:Landroid/graphics/RectF;

    .line 23
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->textBounds:Landroid/graphics/RectF;

    .line 24
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    .line 25
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    const-string p1, "#d5d5d5"

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->drawColor:I

    .line 30
    invoke-virtual {p0, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    .line 32
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    .line 34
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->drawColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pntIcon:Landroid/graphics/Paint;

    .line 36
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pntIcon:Landroid/graphics/Paint;

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->drawColor:I

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pntIcon:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pntIcon:Landroid/graphics/Paint;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p0, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->dpToPixels(F)F

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method dpToPixels(F)F
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 75
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    .line 44
    const/4 v5, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 47
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 48
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectText:Ljava/lang/String;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->textBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->textBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 50
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pntIcon:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    const/4 v5, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v1, 0x0

    .line 57
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 58
    const/4 v1, 0x2

    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->bounds:Landroid/graphics/RectF;

    .line 60
    const/4 v1, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->pnt:Landroid/graphics/Paint;

    const v0, 0x40866666    # 4.2f

    div-float v0, p2, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    const/4 v1, 0x0

    new-instance p3, Landroid/graphics/RectF;

    const/high16 v0, 0x40a00000    # 5.0f

    div-float v0, p2, v0

    sub-float v0, p2, v0

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->textBounds:Landroid/graphics/RectF;

    .line 62
    const/4 v1, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->textBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 64
    const/4 v1, 0x2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3, p4, p4, p2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    .line 65
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->textBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    sub-float/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 67
    const/4 v1, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    if-eq p1, p2, :cond_0

    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 68
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 69
    const/4 v1, 0x2

    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectX:I

    int-to-float p3, p3

    mul-float p3, p3, p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->aspectY:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-direct {p2, p4, p4, p3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    .line 70
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconPadding:F

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconPadding:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 71
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/aspectButton;->iconRect:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method
