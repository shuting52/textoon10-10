.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;
.super Landroid/view/View;
.source "PerspectiveTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;
    }
.end annotation


# static fields
.field static DRAG_HANDLE_1:I = 0x1

.field static DRAG_HANDLE_2:I = 0x2

.field static DRAG_HANDLE_3:I = 0x3

.field static DRAG_HANDLE_4:I = 0x4


# instance fields
.field componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

.field dragId:I

.field handleDrawColor1:I

.field handleDrawColor2:I

.field handleDrawPaint:Landroid/graphics/Paint;

.field handleSize:I

.field handleTouchSize:I

.field mInterface:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

.field point1:Landroid/graphics/PointF;

.field point1tmp:Landroid/graphics/PointF;

.field point2:Landroid/graphics/PointF;

.field point2tmp:Landroid/graphics/PointF;

.field point3:Landroid/graphics/PointF;

.field point3tmp:Landroid/graphics/PointF;

.field point4:Landroid/graphics/PointF;

.field point4tmp:Landroid/graphics/PointF;

.field private relativeArea:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 28
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleSize:I

    const/16 p1, 0x14

    .line 29
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    const/16 p1, 0xff

    const/16 v0, 0x96

    .line 31
    invoke-static {v0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor1:I

    const/4 p1, 0x0

    const/16 v0, 0x64

    .line 32
    invoke-static {v0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor2:I

    .line 33
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    .line 34
    new-instance p1, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p1, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    .line 35
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v3, 0x43020000    # 130.0f

    invoke-direct {p1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    .line 36
    new-instance p1, Landroid/graphics/PointF;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-direct {p1, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    .line 37
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1tmp:Landroid/graphics/PointF;

    .line 38
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2tmp:Landroid/graphics/PointF;

    .line 39
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3tmp:Landroid/graphics/PointF;

    .line 40
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4tmp:Landroid/graphics/PointF;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 125
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 126
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v4

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 127
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    div-float/2addr v6, v4

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 128
    new-instance v6, Landroid/graphics/PointF;

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v4

    iget-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v4

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v1, :cond_0

    .line 130
    new-instance v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    int-to-float v9, v4

    iget v10, v2, Landroid/graphics/PointF;->x:F

    mul-float v10, v10, v9

    add-float/2addr v8, v10

    iget-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    mul-float v11, v11, v9

    add-float/2addr v10, v11

    invoke-direct {v7, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 131
    new-instance v8, Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    mul-float v11, v11, v9

    add-float/2addr v10, v11

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    mul-float v12, v12, v9

    add-float/2addr v11, v12

    invoke-direct {v8, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 132
    new-instance v10, Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, v9

    add-float/2addr v11, v12

    iget-object v12, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    mul-float v13, v13, v9

    add-float/2addr v12, v13

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 133
    new-instance v11, Landroid/graphics/PointF;

    iget-object v12, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    iget v13, v6, Landroid/graphics/PointF;->x:F

    mul-float v13, v13, v9

    add-float/2addr v12, v13

    iget-object v13, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    mul-float v9, v9, v14

    add-float/2addr v13, v9

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    .line 134
    iget v15, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v14, p1

    move/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v8

    move-object/from16 v19, p2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 135
    iget v7, v10, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->y:F

    iget v9, v11, Landroid/graphics/PointF;->x:F

    iget v10, v11, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, p1

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, p2

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    const/4 v0, 0x2
.end method

.method private validPoly()Z
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 210
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->intersect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    return v0

    const/4 v0, 0x0
.end method


# virtual methods
.method circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x1

    .line 215
    const/4 v4, 0x2

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    mul-int/lit8 p3, p3, -0x1

    int-to-float p1, p3

    .line 216
    const/4 v4, 0x3

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0

    const/4 v0, 0x0
.end method

.method public disable()V
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x8

    .line 60
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setVisibility(I)V

    .line 61
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 62
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    instance-of v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->restoreRotations()V

    goto :goto_0

    const/4 v1, 0x3

    .line 63
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    instance-of v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->restoreRotations()V

    :cond_1
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    const/4 v1, 0x1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    .line 66
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    return-void

    const/4 v1, 0x1
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x0

    .line 220
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 222
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .locals 5

    const/4 v4, 0x0

    .line 226
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor2:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 229
    const/4 v4, 0x0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    const/4 v4, 0x3

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    .line 97
    const/4 v5, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 102
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 103
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 104
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 105
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 106
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 108
    const/4 v5, 0x1

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0xff

    const/16 v4, 0x3c

    .line 109
    const/4 v5, 0x2

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 110
    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    const/4 v5, 0x0

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    const/4 v5, 0x1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    const/4 v5, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleDrawColor2:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v0, 0x6

    .line 115
    const/4 v5, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 116
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 117
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 118
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    .line 119
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->drawHandle(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void

    const/4 v1, 0x1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 141
    const/4 v7, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setFocusable(Z)V

    .line 142
    const/4 v7, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setFocusableInTouchMode(Z)V

    .line 144
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    const/4 v7, 0x2

    .line 162
    const/4 v7, 0x3

    :pswitch_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 164
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 166
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 167
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 168
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 169
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4tmp:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 170
    const/4 v7, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_1:I

    if-ne p1, v2, :cond_0

    const/4 v7, 0x2

    .line 171
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 172
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    const/4 v7, 0x1

    .line 174
    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_2:I

    if-ne p1, v2, :cond_1

    const/4 v7, 0x0

    .line 175
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 176
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    const/4 v7, 0x3

    .line 178
    const/4 v7, 0x0

    :cond_1
    const/4 v7, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_3:I

    if-ne p1, v2, :cond_2

    const/4 v7, 0x2

    .line 179
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 180
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    const/4 v7, 0x1

    .line 182
    const/4 v7, 0x2

    :cond_2
    const/4 v7, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_4:I

    if-ne p1, v2, :cond_3

    const/4 v7, 0x0

    .line 183
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 184
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 186
    const/4 v7, 0x3

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->validPoly()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v7, 0x2

    .line 187
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 188
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 189
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 190
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4tmp:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 192
    const/4 v7, 0x3

    :cond_4
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    if-eqz p1, :cond_5

    const/4 v7, 0x1

    .line 193
    const/4 v7, 0x2

    new-instance p1, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 194
    const/4 v7, 0x3

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 195
    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 196
    const/4 v7, 0x1

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 197
    const/4 v7, 0x2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    invoke-interface {v4, p1, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;->handlesDragged(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 199
    const/4 v7, 0x3

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->invalidate()V

    goto/16 :goto_2

    const/4 v7, 0x1

    :pswitch_1
    const/4 p1, -0x1

    .line 202
    const/4 v7, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    .line 203
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->invalidate()V

    goto/16 :goto_2

    const/4 v7, 0x0

    .line 146
    const/4 v7, 0x1

    :pswitch_2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v7, 0x2

    .line 147
    const/4 v7, 0x3

    sget p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_1:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    goto :goto_1

    const/4 v7, 0x0

    .line 149
    const/4 v7, 0x1

    :cond_6
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v7, 0x3

    .line 150
    const/4 v7, 0x0

    sget p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_2:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    goto :goto_1

    const/4 v7, 0x1

    .line 152
    const/4 v7, 0x2

    :cond_7
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v7, 0x0

    .line 153
    const/4 v7, 0x1

    sget p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_3:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    goto :goto_1

    const/4 v7, 0x2

    .line 155
    const/4 v7, 0x3

    :cond_8
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->handleTouchSize:I

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->circleToRect(Landroid/graphics/PointF;FI)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    .line 156
    const/4 v7, 0x2

    sget p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->DRAG_HANDLE_4:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->dragId:I

    .line 159
    const/4 v7, 0x3

    :cond_9
    const/4 v7, 0x0

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->invalidate()V

    :goto_2
    const/4 v7, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public setComponentReference(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;)V
    .locals 3

    const/4 v2, 0x0

    .line 70
    const/4 v2, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    .line 71
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    instance-of p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p1, v1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRotations(ZZZ)V

    goto :goto_0

    const/4 v2, 0x0

    .line 72
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    instance-of p1, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->componentRef:Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p1, v1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRotations(ZZZ)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 5

    const/4 v4, 0x3

    .line 88
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 89
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float p2, p2, v2

    add-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float p3, p3, v1

    add-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 91
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 92
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)V
    .locals 5

    const/4 v4, 0x2

    .line 79
    const/4 v4, 0x3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->relativeArea:Landroid/graphics/RectF;

    .line 80
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point1:Landroid/graphics/PointF;

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p5, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 81
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point2:Landroid/graphics/PointF;

    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p5, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float p2, p2, v2

    add-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 82
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point3:Landroid/graphics/PointF;

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iget v0, p5, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float p3, p3, v1

    add-float/2addr v0, p3

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 83
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->point4:Landroid/graphics/PointF;

    iget p2, p5, Landroid/graphics/RectF;->left:F

    iget p3, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    iget p3, p5, Landroid/graphics/RectF;->top:F

    iget p4, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p5

    mul-float p4, p4, p5

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    .line 85
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setPerspectiveToolInterface(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;)V
    .locals 1

    const/4 v0, 0x2

    .line 76
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->mInterface:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;

    return-void

    const/4 v0, 0x0
.end method
