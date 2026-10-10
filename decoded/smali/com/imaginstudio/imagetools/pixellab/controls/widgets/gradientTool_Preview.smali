.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;
.super Landroid/view/View;
.source "gradientTool_Preview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$defaultDirections;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;
    }
.end annotation


# instance fields
.field private final DRAG_ID_HANDLE_END:I

.field private final DRAG_ID_HANDLE_START:I

.field private final DRAG_ID_NOTHING:I

.field arrowHeadSize:I

.field dragId:I

.field public drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final gridSquare:I

.field handleRadius:I

.field private initializedColors:Z

.field pEnd:Landroid/graphics/PointF;

.field pStart:Landroid/graphics/PointF;

.field pnGridBlack:Landroid/graphics/Paint;

.field pnGridWhite:Landroid/graphics/Paint;

.field pnHandles:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    .line 21
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dpToPixels(I)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->gridSquare:I

    const/16 p2, 0x19

    .line 25
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dpToPixels(I)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    .line 26
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    .line 27
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    .line 28
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->initializedColors:Z

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dragId:I

    .line 31
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->DRAG_ID_NOTHING:I

    const/4 p2, 0x1

    .line 32
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->DRAG_ID_HANDLE_START:I

    const/4 v0, 0x2

    .line 33
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->DRAG_ID_HANDLE_END:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnGridBlack:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnGridBlack:Landroid/graphics/Paint;

    const-string v1, "#bdbdbd"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnGridWhite:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnGridWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    .line 41
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 194
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

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x0

    .line 190
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 191
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

.method public getCurrentGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x0

    .line 126
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public modifyDirectionsWithDefault(I)V
    .locals 2

    const/4 v1, 0x3

    .line 197
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$defaultDirections;->modifyGradientWith(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;I)V

    .line 198
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->updatePointsFromGradient()V

    return-void

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 60
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    iget-boolean v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->initializedColors:Z

    if-eqz v2, :cond_3

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 64
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    invoke-virtual {v3, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 66
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    const v9, -0xbbbbbc

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    const/4 v11, 0x2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 71
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v12, v2, v5

    .line 73
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    invoke-direct {v14, v0, v2, v3, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;DLandroid/graphics/PointF;)V

    .line 74
    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15}, Landroid/graphics/PointF;-><init>()V

    .line 75
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v2, v2

    invoke-virtual {v14, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 76
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 77
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    invoke-virtual {v14, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 78
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v2, v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    int-to-float v2, v5

    div-float v16, v1, v2

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v5, :cond_1

    int-to-float v1, v4

    mul-float v1, v1, v16

    .line 81
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 82
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 83
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-virtual {v14, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 84
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 85
    invoke-virtual {v14, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 86
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 87
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;

    invoke-direct {v8, v0, v12, v13, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;DLandroid/graphics/PointF;)V

    .line 88
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 89
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v19, v6

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    move-wide/from16 v20, v12

    move-object v12, v1

    move-object v1, v7

    move-object v13, v3

    move-object/from16 v22, v14

    const/4 v14, -0x1

    move v3, v10

    move v10, v4

    move v4, v9

    move v9, v5

    move v5, v11

    move-object/from16 v11, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 91
    iget v2, v13, Landroid/graphics/PointF;->x:F

    iget v3, v13, Landroid/graphics/PointF;->y:F

    iget v4, v12, Landroid/graphics/PointF;->x:F

    iget v5, v12, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v10, 0x1

    move v5, v9

    move-object v6, v11

    move-wide/from16 v12, v20

    move-object/from16 v14, v22

    const/4 v8, 0x1

    const v9, -0xbbbbbc

    const/4 v10, 0x4

    const/4 v11, 0x2

    goto/16 :goto_1

    :cond_1
    move v9, v5

    move-object v11, v6

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    const/4 v14, -0x1

    .line 93
    iget v2, v15, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->y:F

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    const/16 v2, 0xe6

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 99
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, 0x1

    :goto_2
    if-gt v8, v9, :cond_2

    int-to-float v1, v8

    mul-float v1, v1, v16

    .line 102
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 103
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 104
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    move-object/from16 v10, v22

    invoke-virtual {v10, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 105
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    .line 106
    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 107
    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13}, Landroid/graphics/PointF;-><init>()V

    .line 108
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;

    move-wide/from16 v4, v20

    invoke-direct {v6, v0, v4, v5, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;DLandroid/graphics/PointF;)V

    .line 109
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 110
    iget v2, v12, Landroid/graphics/PointF;->x:F

    iget v3, v12, Landroid/graphics/PointF;->y:F

    iget v1, v13, Landroid/graphics/PointF;->x:F

    iget v14, v13, Landroid/graphics/PointF;->y:F

    move-object/from16 v23, v6

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    move/from16 v17, v1

    move-object v1, v7

    move-wide/from16 v18, v4

    move/from16 v4, v17

    move v5, v14

    move-object/from16 v14, v23

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->arrowHeadSize:I

    const/16 v17, -0x1

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->getPointAtDistance(F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 112
    iget v2, v12, Landroid/graphics/PointF;->x:F

    iget v3, v12, Landroid/graphics/PointF;->y:F

    iget v4, v13, Landroid/graphics/PointF;->x:F

    iget v5, v13, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v20, v18

    const/4 v14, -0x1

    goto :goto_2

    .line 114
    :cond_2
    iget v2, v15, Landroid/graphics/PointF;->x:F

    iget v3, v15, Landroid/graphics/PointF;->y:F

    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 115
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 117
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    const v2, -0xbbbbbc

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    const/4 v4, 0x4

    div-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pnHandles:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    .line 160
    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 161
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 162
    const/4 v6, 0x3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 164
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    const/4 v6, 0x1

    .line 171
    const/4 v6, 0x2

    :pswitch_0
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dragId:I

    if-eq p1, v1, :cond_6

    const/4 v6, 0x3

    .line 172
    const/4 v6, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dragId:I

    if-ne p1, v3, :cond_0

    const/4 v6, 0x1

    .line 173
    const/4 v6, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_0

    const/4 v6, 0x3

    .line 175
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dragId:I

    if-ne p1, v0, :cond_1

    const/4 v6, 0x2

    .line 176
    const/4 v6, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 178
    const/4 v6, 0x0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->updateGradientDirectionFromPoints()V

    .line 179
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->invalidate()V

    goto :goto_3

    const/4 v6, 0x0

    .line 184
    const/4 v6, 0x1

    :pswitch_1
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dragId:I

    goto :goto_3

    const/4 v6, 0x2

    .line 166
    const/4 v6, 0x3

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v4, v4

    cmpg-float p1, p1, v4

    const/4 v4, 0x0

    if-gtz p1, :cond_2

    const/4 v6, 0x0

    const/4 p1, 0x1

    goto :goto_1

    const/4 v6, 0x1

    :cond_2
    const/4 v6, 0x2

    const/4 p1, 0x0

    :goto_1
    const/4 v6, 0x3

    if-nez p1, :cond_3

    const/4 v6, 0x0

    .line 167
    const/4 v6, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    invoke-virtual {p0, v2, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->handleRadius:I

    int-to-float v5, v5

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_3

    const/4 v6, 0x2

    const/4 v4, 0x1

    :cond_3
    const/4 v6, 0x3

    if-eqz p1, :cond_4

    const/4 v6, 0x0

    const/4 v0, 0x1

    goto :goto_2

    const/4 v6, 0x1

    :cond_4
    const/4 v6, 0x2

    if-eqz v4, :cond_5

    const/4 v6, 0x3

    goto :goto_2

    const/4 v6, 0x0

    :cond_5
    const/4 v6, 0x1

    const/4 v0, -0x1

    .line 168
    const/4 v6, 0x2

    :goto_2
    const/4 v6, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->dragId:I

    :cond_6
    const/4 v6, 0x0

    :goto_3
    const/4 v6, 0x1

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x2
.end method

.method public setColors([I[F)V
    .locals 2

    const/4 v1, 0x3

    .line 55
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->setV2Colors([I[F)V

    const/4 p1, 0x1

    .line 56
    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->initializedColors:Z

    return-void

    const/4 v1, 0x1
.end method

.method public setDirection(I[I)V
    .locals 2

    const/4 v1, 0x3

    .line 44
    const/4 v1, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;I[I)V

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v1, 0x1
.end method

.method updateGradientDirectionFromPoints()V
    .locals 5

    const/4 v4, 0x2

    .line 149
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 150
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 151
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 152
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    return-void

    const/4 v0, 0x0
.end method

.method updatePointsFromGradient()V
    .locals 6

    const/4 v5, 0x0

    .line 155
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 156
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->pEnd:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v1

    const/4 v3, 0x2

    aget v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    return-void

    const/4 v1, 0x1
.end method
