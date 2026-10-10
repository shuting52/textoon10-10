.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;
.super Landroid/view/View;
.source "ShapeChoiceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;
    }
.end annotation


# instance fields
.field changeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;

.field currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

.field indicatorArea:Landroid/graphics/RectF;

.field indicatorPath:Landroid/graphics/Path;

.field pnt2:Landroid/graphics/Paint;

.field pnt3:Landroid/graphics/Paint;

.field pnt4:Landroid/graphics/Paint;

.field shapeArea:Landroid/graphics/RectF;

.field shapeArea1:Landroid/graphics/RectF;

.field shapeAreaPadding:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 3

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 29
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->dpToPixels(I)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeAreaPadding:F

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea1:Landroid/graphics/RectF;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt2:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt3:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt3:Landroid/graphics/Paint;

    const-string v2, "#575757"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt4:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt4:Landroid/graphics/Paint;

    const-string v2, "#4a8eab"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt4:Landroid/graphics/Paint;

    const/16 v2, 0xbe

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    .line 58
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-direct {v0, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;Z)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    .line 59
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setClickable(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07019e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    invoke-direct {p2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method dist(FFFF)F
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    sub-float/2addr p2, p4

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 116
    const/4 v0, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    const/4 v0, 0x0
.end method

.method dpToPixels(I)F
    .locals 3

    const/4 v2, 0x1

    .line 119
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 120
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
    .locals 3

    const/4 v2, 0x1

    .line 81
    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 83
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v2, 0x1

    .line 86
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 88
    const/4 v2, 0x3

    :cond_1
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea1:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->getPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt4:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    const/4 v7, 0x2

    .line 94
    const/4 v7, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 95
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->getHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeAreaPadding:F

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeAreaPadding:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 97
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->pnt2:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/RadialGradient;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p0, p3, v0, p4, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->dist(FFFF)F

    move-result v3

    const-string p3, "#f0f0f0"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string p3, "#d2d2d2"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 98
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea1:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 99
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea1:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeAreaPadding:F

    const/high16 p3, 0x40400000    # 3.0f

    mul-float p2, p2, p3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeAreaPadding:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 100
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->shapeArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, p4, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 101
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 103
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    div-float/2addr p1, p2

    mul-float p1, p1, p3

    const/high16 p2, 0x40800000    # 4.0f

    div-float p2, p1, p2

    mul-float p2, p2, p3

    .line 106
    const/4 v7, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    invoke-virtual {p3, p4, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 107
    const/4 v7, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    invoke-virtual {p3, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    const/4 v7, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    div-float/2addr p1, v1

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    const/4 v7, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 111
    const/4 v7, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorPath:Landroid/graphics/Path;

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    sub-float/2addr p4, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->indicatorArea:Landroid/graphics/RectF;

    .line 112
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    .line 111
    const/4 v7, 0x2

    invoke-virtual {p3, p4, p1}, Landroid/graphics/Path;->offset(FF)V

    return-void

    const/4 v1, 0x3
.end method

.method public setChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->changeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 2

    const/4 v1, 0x3

    .line 38
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
