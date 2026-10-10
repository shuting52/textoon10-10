.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;
.super Landroid/view/View;
.source "ShapesCreator.java"


# instance fields
.field HandlesActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field alpha:I

.field bounds:Landroid/graphics/RectF;

.field public changedGeometry:Z

.field currentlyDraggedPoint:Landroid/graphics/PointF;

.field dX:F

.field dY:F

.field public editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field private fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

.field private isRendering:Z

.field minDim:I

.field pnt:Landroid/graphics/Paint;

.field pntHandles:Landroid/graphics/Paint;

.field previousX:F

.field previousY:F

.field shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

.field shapePaint:Landroid/graphics/Paint;

.field strokePaint:Landroid/graphics/Paint;

.field stroke_alpha:I

.field stroke_blur:I

.field touchRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    const/16 v0, 0x12

    .line 41
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->touchRadius:I

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->minDim:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->isRendering:Z

    .line 50
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/16 v1, 0xff

    .line 65
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    .line 66
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    const/4 v1, 0x0

    .line 253
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    const/4 v2, 0x1

    .line 93
    invoke-virtual {p0, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setLayerType(ILandroid/graphics/Paint;)V

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    .line 95
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/16 v6, 0xa

    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v0

    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    int-to-float v0, v0

    aput v0, v5, v2

    invoke-direct {v3, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 97
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    const v0, -0xbbbbbc

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pntHandles:Landroid/graphics/Paint;

    .line 101
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pntHandles:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    .line 103
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    .line 104
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    .line 105
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->restoreStyles()V

    return-void
.end method

.method private updateAvailableHandlesPos()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 312
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    return-void

    .line 313
    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 316
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    const/4 v5, 0x3

    :cond_1
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .line 319
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v5, 0x3

    :cond_2
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    .line 322
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    const/4 v5, 0x3

    :cond_3
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 325
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const/4 v5, 0x3

    :cond_4
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    .line 329
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const/4 v5, 0x3

    :cond_5
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    .line 332
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const/4 v5, 0x3

    :cond_6
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    if-eqz v0, :cond_7

    const/4 v5, 0x1

    .line 335
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    const/4 v5, 0x3

    :cond_7
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    if-eqz v0, :cond_8

    const/4 v5, 0x1

    .line 338
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v5, 0x3

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public clearMe()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 72
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    .line 73
    const/4 v2, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    .line 74
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V

    .line 75
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void

    const/4 v0, 0x2
.end method

.method dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    const/4 v3, 0x1

    .line 251
    const/4 v3, 0x2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    const/4 v1, 0x3
.end method

.method drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    const/4 v5, 0x0

    .line 235
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v5, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 236
    const/4 v5, 0x0

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 237
    const/4 v5, 0x1

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    const/4 v5, 0x3

    const/4 v1, 0x1

    goto :goto_1

    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 238
    const/4 v5, 0x2

    :goto_1
    const/4 v5, 0x3

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->touchRadius:I

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    const/4 v1, 0x2

    goto :goto_2

    const/4 v5, 0x1

    :cond_1
    const/4 v5, 0x2

    const/4 v1, 0x3

    :goto_2
    const/4 v5, 0x3

    div-int/2addr v4, v1

    int-to-float v1, v4

    invoke-virtual {p1, v3, v2, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    const/4 v5, 0x0

    :cond_2
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method drawShape(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x3

    .line 168
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_7

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v7, 0x2

    goto/16 :goto_3

    const/4 v7, 0x3

    .line 169
    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->getPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 170
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v7, 0x3

    .line 171
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->applyCapOnPaint(Landroid/graphics/Paint;)V

    .line 172
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v1

    sget v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v1, v4, :cond_1

    const/4 v7, 0x0

    .line 175
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 176
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    const/4 v7, 0x3

    .line 178
    const/4 v7, 0x0

    :cond_1
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v1

    sget v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v1, v4, :cond_2

    const/4 v7, 0x2

    .line 179
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    const/4 v7, 0x1

    :cond_2
    const/4 v7, 0x2

    :goto_0
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 183
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_1

    const/4 v7, 0x2

    :cond_3
    const/4 v7, 0x3

    move-object v4, v3

    :goto_1
    const/4 v7, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 184
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    const/4 v7, 0x2

    :cond_4
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v1

    sget v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v1, v4, :cond_5

    const/4 v7, 0x0

    .line 188
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    const/4 v7, 0x3

    .line 191
    const/4 v7, 0x0

    :cond_5
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v1

    sget v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v1, v3, :cond_6

    const/4 v7, 0x2

    .line 192
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 193
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    const/4 v7, 0x1

    :cond_6
    const/4 v7, 0x2

    :goto_2
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_7
    const/4 v7, 0x1

    :goto_3
    const/4 v7, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x1

    return-void

    :cond_0
    const/4 v3, 0x2

    :try_start_0
    const-string v0, "mfp2JbFB"

    .line 359
    const/4 v3, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x0

    .line 361
    const/4 v3, 0x1

    :catch_0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    :goto_0
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 363
    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V

    const-string v0, "vCScn1x"

    .line 365
    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    .line 366
    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    .line 367
    const/4 v3, 0x2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    .line 364
    const/4 v3, 0x3

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->absolutePortionF(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    .line 368
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const-string v1, "mrdCt2Pon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "3GsP"

    const/16 v1, 0xff

    .line 369
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    const-string v0, "3JaWTe"

    .line 370
    const/4 v3, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    const-string v0, "UTRQ"

    .line 371
    const/4 v3, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    .line 372
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    const-string v1, "2Xskb7"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    .line 373
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x3

    .line 232
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float p1, p1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x2

    .line 117
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v6, 0x0

    const/4 v0, 0x0

    return-object v0

    .line 120
    const/4 v6, 0x1

    :cond_0
    const/4 v6, 0x2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    const/4 v6, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public init()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 82
    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setVisibility(I)V

    .line 83
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 84
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    const/4 v3, 0x3

    .line 86
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V

    .line 88
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->changedGeometry:Z

    return-void

    const/4 v1, 0x3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    .line 158
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 160
    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->drawShape(Landroid/graphics/Canvas;)V

    .line 161
    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->isRendering:Z

    if-nez v0, :cond_0

    const/4 v2, 0x3

    .line 162
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 163
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->pntHandles:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    .line 257
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_f

    const/4 v7, 0x3

    .line 258
    const/4 v7, 0x0

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 259
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    const/4 v7, 0x2

    .line 266
    const/4 v7, 0x3

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    .line 267
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    .line 268
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v0, :cond_e

    const/4 v7, 0x2

    .line 269
    const/4 v7, 0x3

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->changedGeometry:Z

    .line 270
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v7, 0x1

    const/4 v0, 0x1

    goto :goto_0

    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 271
    const/4 v7, 0x0

    :goto_0
    const/4 v7, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v5, v3

    if-nez v3, :cond_1

    const/4 v7, 0x2

    const/4 v3, 0x1

    goto :goto_1

    const/4 v7, 0x3

    :cond_1
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 272
    const/4 v7, 0x1

    :goto_1
    const/4 v7, 0x2

    sget-object v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v5, v6, v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result v5

    .line 273
    const/4 v7, 0x3

    sget-object v6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v6, p1, v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p1

    .line 274
    const/4 v7, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->minDim:I

    int-to-float v4, v4

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v5

    goto :goto_2

    const/4 v7, 0x2

    :cond_2
    const/4 v7, 0x3

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v6

    :goto_2
    const/4 v7, 0x0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 275
    const/4 v7, 0x1

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->minDim:I

    int-to-float v5, v5

    if-eqz v3, :cond_3

    const/4 v7, 0x2

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, p1

    goto :goto_3

    const/4 v7, 0x3

    :cond_3
    const/4 v7, 0x0

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, p1, v6

    :goto_3
    const/4 v7, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 276
    const/4 v7, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_6

    const/4 v7, 0x3

    .line 277
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v3, :cond_4

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p1

    goto :goto_4

    const/4 v7, 0x2

    :cond_4
    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    :goto_4
    const/4 v7, 0x0

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 278
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v3, :cond_5

    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    const/4 v7, 0x3

    :cond_5
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v2

    :goto_5
    const/4 v7, 0x1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_c

    const/4 v7, 0x2

    .line 279
    const/4 v7, 0x3

    :cond_6
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v5, v2

    if-nez v2, :cond_9

    const/4 v7, 0x1

    .line 280
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_7

    const/4 v7, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_6

    const/4 v7, 0x0

    :cond_7
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v4

    :goto_6
    const/4 v7, 0x2

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 281
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    goto :goto_7

    const/4 v7, 0x1

    :cond_8
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_7
    const/4 v7, 0x3

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_c

    const/4 v7, 0x0

    .line 283
    const/4 v7, 0x1

    :cond_9
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 284
    const/4 v7, 0x3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v2

    div-float/2addr p1, v5

    .line 285
    const/4 v7, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v2, v2, p1

    mul-float p1, p1, v5

    .line 288
    const/4 v7, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_a

    const/4 v7, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    goto :goto_8

    const/4 v7, 0x3

    :cond_a
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v2

    :goto_8
    const/4 v7, 0x1

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 289
    const/4 v7, 0x2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v3, :cond_b

    const/4 v7, 0x3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    goto :goto_9

    const/4 v7, 0x0

    :cond_b
    const/4 v7, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, p1

    :goto_9
    const/4 v7, 0x2

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 290
    const/4 v7, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_c

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_a

    const/4 v7, 0x1

    :cond_c
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_a
    const/4 v7, 0x3

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 291
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    if-eqz v3, :cond_d

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, p1

    goto :goto_b

    const/4 v7, 0x2

    :cond_d
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->top:F

    :goto_b
    const/4 v7, 0x0

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 293
    const/4 v7, 0x1

    :goto_c
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    goto :goto_d

    const/4 v7, 0x3

    .line 296
    const/4 v7, 0x0

    :cond_e
    const/4 v7, 0x1

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->changedGeometry:Z

    .line 297
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    invoke-virtual {p1, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 298
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v2

    invoke-virtual {v0, v3, v4, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FFZ)F

    move-result v0

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v2

    invoke-virtual {v3, v4, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FFZ)F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 299
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    goto :goto_d

    const/4 v7, 0x1

    .line 303
    const/4 v7, 0x2

    :pswitch_1
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    const/4 p1, 0x0

    .line 304
    const/4 v7, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    goto :goto_d

    const/4 v7, 0x0

    .line 261
    const/4 v7, 0x1

    :pswitch_2
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dY:F

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dX:F

    .line 262
    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->previousY:F

    .line 263
    const/4 v7, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V

    :cond_f
    const/4 v7, 0x0

    :goto_d
    const/4 v7, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public prepareEdit(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 1

    const/4 v0, 0x3

    .line 78
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void

    const/4 v0, 0x0
.end method

.method restoreStyles()V
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0xff

    .line 199
    const/4 v3, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    .line 200
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_cap(Landroid/graphics/Paint$Cap;)V

    .line 201
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    .line 202
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    .line 203
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 204
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    .line 205
    const/4 v3, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    .line 206
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    .line 207
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    .line 208
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 209
    const/4 v3, 0x1

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    .line 210
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iput v2, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    :cond_0
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public setBorderRadius(I)V
    .locals 2

    const/4 v1, 0x2

    .line 57
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 58
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    .line 59
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->postInvalidate()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public setFillColor(I)V
    .locals 3

    const/4 v2, 0x1

    .line 142
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    .line 143
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setFillGradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 3

    const/4 v2, 0x2

    .line 147
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    .line 148
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 149
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setIsRendering(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 53
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->isRendering:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setOpacity(I)V
    .locals 3

    const/4 v2, 0x2

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 152
    const/4 v2, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V
    .locals 3

    const/4 v2, 0x2

    .line 213
    const/4 v2, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;Z)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .line 215
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->restoreStyles()V

    .line 217
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->updateAvailableHandlesPos()V

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    .line 219
    const/4 v2, 0x1

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;)V

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 2

    const/4 v1, 0x0

    .line 377
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_cap(Landroid/graphics/Paint$Cap;)V

    .line 378
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public setStroke_alpha(I)V
    .locals 3

    const/4 v2, 0x0

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-double v0, p1

    .line 125
    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    .line 126
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setStroke_blur(I)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    .line 110
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke_colorFill(I)V
    .locals 3

    const/4 v2, 0x0

    .line 130
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    .line 131
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    .line 132
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setStroke_gradientFill(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 3

    const/4 v2, 0x1

    .line 136
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    .line 137
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setStroke_width(I)V
    .locals 2

    const/4 v1, 0x2

    .line 113
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x2

    .line 342
    const/4 v8, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-nez v1, :cond_0

    const/4 v8, 0x1

    return-object v0

    :cond_0
    const/4 v8, 0x2

    const-string v1, "mrdCt2Pon"

    .line 344
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "3GsP"

    .line 345
    const/4 v8, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "3JaWTe"

    .line 346
    const/4 v8, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "UTRQ"

    .line 347
    const/4 v8, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    const/4 v8, 0x3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    .line 349
    const/4 v8, 0x0

    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float v6, v6, v5

    int-to-float v2, v2

    div-float/2addr v6, v2

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    mul-float v7, v7, v5

    div-float/2addr v7, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v1, v1, v5

    div-float/2addr v1, v2

    invoke-direct {v3, v4, v6, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v1, "vCScn1x"

    .line 350
    const/4 v8, 0x1

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rectFToArr(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "mfp2JbFB"

    .line 351
    const/4 v8, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2Xskb7"

    .line 352
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    const/4 v0, 0x0
.end method

.method public updateControlsFromBundle(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 382
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->shapeDataBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 383
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    move-object v4, p1

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setCurrShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 384
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->rect_roundedCorners:I

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 385
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->alpha:I

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object v5, p5

    invoke-virtual {v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 386
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v3

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v6

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v7

    move-object/from16 v8, p6

    invoke-virtual {v8, v3, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 387
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_alpha:I

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v4, p10

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 388
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v3

    move-object/from16 v6, p8

    invoke-virtual {v6, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 389
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v3

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v7

    iget-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v8

    move-object/from16 v9, p11

    invoke-virtual {v9, v3, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 391
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    sget-object v7, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    const/4 v8, 0x0

    if-ne v3, v7, :cond_0

    const/4 v3, 0x2

    move-object/from16 v3, p12

    const/4 v7, 0x2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->fillInfo:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    sget-object v7, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v3, v7, :cond_1

    const/4 v3, 0x1

    move-object/from16 v3, p12

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p12

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v3, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    .line 392
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->stroke_blur:I

    move-object/from16 v7, p14

    invoke-virtual {v7, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 393
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 394
    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object v5, p4

    invoke-virtual {v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 395
    invoke-virtual/range {p8 .. p8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object/from16 v5, p7

    invoke-virtual {v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 396
    invoke-virtual/range {p10 .. p10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object/from16 v4, p9

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 397
    invoke-virtual/range {p14 .. p14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    move-object/from16 v4, p13

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 398
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->currShapeLabel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v1, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setVisibility(I)V

    .line 399
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setVisibility(I)V

    :cond_3
    return-void

    const/4 v0, 0x2
.end method

.method updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 242
    const/4 v4, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    .line 243
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 244
    const/4 v4, 0x3

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getAbsolutePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->touchRadius:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v4, 0x0

    .line 245
    const/4 v4, 0x1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->currentlyDraggedPoint:Landroid/graphics/PointF;

    :cond_1
    const/4 v4, 0x2

    return-void

    const/4 v0, 0x0
.end method
