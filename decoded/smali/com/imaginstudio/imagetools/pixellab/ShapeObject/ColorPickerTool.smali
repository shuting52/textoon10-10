.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;
.super Landroid/view/View;
.source "ColorPickerTool.java"


# instance fields
.field currPickedColor:I

.field drawingPaint:Landroid/graphics/Paint;

.field handleRad:I

.field margin:I

.field pickedColorCoordinates:Landroid/graphics/Point;

.field previewRad:I

.field shapeArea:Landroid/graphics/RectF;

.field shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    const/16 p1, 0xa

    .line 26
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    const/16 v0, 0x19

    .line 27
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method clipPointToShapeArea(FF)Landroid/graphics/Point;
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 142
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v3, 0x2

    .line 143
    const/4 v3, 0x3

    new-instance p1, Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 145
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    .line 146
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    .line 147
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public disable()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 49
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    const/16 v1, 0x8

    .line 50
    const/4 v2, 0x3

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->setVisibility(I)V

    .line 51
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 52
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->restoreRotations()V

    .line 54
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void

    const/4 v0, 0x2
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x2

    .line 150
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 151
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method drawToBottom()Z
    .locals 3

    const/4 v2, 0x2

    .line 139
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    return v0

    const/4 v0, 0x2
.end method

.method public enable(Landroid/graphics/RectF;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 2

    const/4 v1, 0x1

    .line 37
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    .line 38
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 39
    const/4 v1, 0x0

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 40
    const/4 v1, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Point;->set(II)V

    .line 41
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getPixelColor(II)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    const/4 p1, 0x0

    .line 42
    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->setVisibility(I)V

    .line 43
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 44
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRotations(ZZZ)V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public getPickedColor()I
    .locals 2

    const/4 v1, 0x1

    .line 66
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    return v0

    const/4 v1, 0x1
.end method

.method getPixelColor(II)I
    .locals 3

    const/4 v2, 0x0

    .line 58
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 59
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorAt(II)I

    move-result p1

    return p1

    :cond_0
    const/4 v2, 0x1

    const/4 p1, 0x0

    return p1

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x3

    .line 70
    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    const/4 v9, 0x2

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, -0x1

    .line 73
    const/4 v9, 0x3

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v6, 0x64

    .line 74
    const/4 v9, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeArea:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 76
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77
    const/4 v9, 0x3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 79
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_1

    const/4 v9, 0x2

    .line 80
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 82
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawToBottom()Z

    move-result v0

    const/4 v5, 0x5

    if-nez v0, :cond_0

    const/4 v9, 0x3

    .line 92
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-static {v6, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    const/4 v9, 0x2

    .line 103
    const/4 v9, 0x3

    :cond_0
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-static {v6, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 107
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->handleRad:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->margin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->previewRad:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->drawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v9, 0x2

    :goto_0
    const/4 v9, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    .line 119
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->clipPointToShapeArea(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 120
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    const/4 v3, 0x2

    .line 128
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 129
    const/4 v3, 0x1

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getPixelColor(II)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    .line 130
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->invalidate()V

    goto :goto_0

    const/4 v3, 0x3

    .line 122
    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->pickedColorCoordinates:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 123
    const/4 v3, 0x2

    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getPixelColor(II)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->currPickedColor:I

    .line 124
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->invalidate()V

    :goto_0
    const/4 v3, 0x0

    const/4 p1, 0x1

    return p1

    const/4 v1, 0x3
.end method
