.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.super Landroid/view/View;
.source "DrawingPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
    }
.end annotation


# static fields
.field private static final DEFAULT_TOUCH_TOLERANCE:F

.field private static final MAXP:F = 0.75f

.field private static final MINP:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "DrawView"

.field private static final maxTolerance:F

.field private static final minTolerance:F = 0.1f


# instance fields
.field private TOUCH_TOLERANCE:F

.field private currBlur:I

.field private currColor:I

.field private currDashed:Z

.field private currFill:Z

.field private currNeon:Z

.field private currPenType:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

.field private currStrokeWidth:I

.field currX:F

.field currY:F

.field private drawings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;",
            ">;"
        }
    .end annotation
.end field

.field isDrawing:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mX:F

.field private mY:F

.field pntEraser:Landroid/graphics/Paint;

.field pntEraserBorder:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 106
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->DEFAULT_TOUCH_TOLERANCE:F

    const/16 v0, 0xc

    .line 108
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->maxTolerance:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    .line 107
    sget p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->DEFAULT_TOUCH_TOLERANCE:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    .line 117
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setFocusable(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setFocusableInTouchMode(Z)V

    .line 49
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currColor:I

    .line 50
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    .line 51
    invoke-virtual {p0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 57
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraser:Landroid/graphics/Paint;

    .line 60
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraser:Landroid/graphics/Paint;

    const/16 p3, 0xff

    const/16 v1, 0xb4

    invoke-static {v1, p3, p3, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    .line 62
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    const/16 p3, 0x40

    invoke-static {p3, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getCurrDrawing()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 153
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    return-object v0

    const/4 v1, 0x1
.end method

.method private getCurrPath()Landroid/graphics/Path;
    .locals 2

    const/4 v1, 0x0

    .line 150
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getPath()Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    return-object v0

    const/4 v1, 0x1
.end method

.method private touch_move(FF)V
    .locals 7

    const/4 v6, 0x0

    .line 131
    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v6, 0x2

    .line 132
    const/4 v6, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 133
    const/4 v6, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 134
    const/4 v6, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v6, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    const/4 v6, 0x3

    .line 135
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    add-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    add-float/2addr v5, p2

    div-float/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 136
    const/4 v6, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    .line 137
    const/4 v6, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    :cond_1
    const/4 v6, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method private touch_start(FF)V
    .locals 17

    move-object/from16 v12, p0

    move/from16 v13, p1

    move/from16 v14, p2

    .line 119
    iget-object v15, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    iget v2, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currBlur:I

    iget v3, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currColor:I

    iget-boolean v4, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currDashed:Z

    iget-boolean v5, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currFill:Z

    iget-boolean v6, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currNeon:Z

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iget v8, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    iget-object v9, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    move-object v0, v11

    move-object v1, v12

    move v10, v13

    move-object v13, v11

    move v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;IIZZZLandroid/graphics/Path;ILcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;FF)V

    invoke-virtual {v15, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    iput v1, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    .line 124
    iput v14, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    :cond_0
    return-void

    const/4 v1, 0x1
.end method

.method private touch_up()V
    .locals 4

    const/4 v3, 0x3

    .line 142
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 143
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrPath()Landroid/graphics/Path;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mX:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrDrawing()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 146
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrDrawing()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->doneDrawing()V

    :cond_1
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public clearMe()V
    .locals 2

    const/4 v1, 0x1

    .line 72
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    .line 73
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->invalidate()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public drawingsEmpty()Z
    .locals 2

    const/4 v1, 0x0

    .line 66
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getCurrStrokeWidth()I
    .locals 2

    const/4 v1, 0x3

    .line 158
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    return v0

    const/4 v1, 0x1
.end method

.method public getSmoothness()I
    .locals 4

    const/4 v3, 0x2

    .line 115
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->maxTolerance:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    const/4 v1, 0x3
.end method

.method public isDrawing()Z
    .locals 2

    const/4 v1, 0x1

    .line 69
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawingsEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    return v0

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x1

    .line 80
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v8, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;

    .line 81
    const/4 v8, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->type:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    const/4 v8, 0x2

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    const/4 v8, 0x3

    :cond_0
    const/4 v8, 0x0

    move-object v3, v5

    :goto_1
    const/4 v8, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 82
    const/4 v8, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    const/4 v8, 0x3

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isFill()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v8, 0x0

    iget-boolean v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->stillDrawing:Z

    if-nez v2, :cond_1

    const/4 v8, 0x1

    .line 84
    const/4 v8, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    const/4 v8, 0x3

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isDashed()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    .line 87
    const/4 v8, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getStrokeWidth()I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    aput v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getStrokeWidth()I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    int-to-float v7, v7

    aput v7, v4, v6

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 89
    const/4 v8, 0x3

    :cond_2
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isFill()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getStrokeWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_2

    const/4 v8, 0x2

    :cond_3
    const/4 v8, 0x3

    const/high16 v3, 0x40800000    # 4.0f

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    const/4 v8, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    const/4 v8, 0x2

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->isNeon()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v8, 0x3

    .line 92
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x41300000    # 11.0f

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 93
    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 95
    const/4 v8, 0x2

    :cond_4
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getBlur()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v8, 0x0

    new-instance v3, Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getBlur()I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_3

    const/4 v8, 0x1

    :cond_5
    const/4 v8, 0x2

    move-object v3, v5

    :goto_3
    const/4 v8, 0x3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 96
    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->getPath()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 98
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_0

    const/4 v8, 0x3

    .line 100
    const/4 v8, 0x0

    :cond_6
    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    if-eqz v0, :cond_7

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    if-ne v0, v1, :cond_7

    const/4 v8, 0x3

    .line 101
    const/4 v8, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currY:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraserBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 102
    const/4 v8, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currY:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->pntEraser:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    const/4 v8, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    .line 193
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currX:F

    .line 194
    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currY:F

    .line 196
    const/4 v3, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    const/4 v3, 0x0

    .line 203
    const/4 v3, 0x1

    :pswitch_0
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result p1

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p2, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->touch_move(FF)V

    .line 204
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->invalidate()V

    goto :goto_0

    const/4 v3, 0x3

    .line 208
    const/4 v3, 0x0

    :pswitch_1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->touch_up()V

    .line 209
    const/4 v3, 0x1

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    .line 210
    const/4 v3, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    .line 211
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->invalidate()V

    goto :goto_0

    const/4 v3, 0x0

    .line 198
    const/4 v3, 0x1

    :pswitch_2
    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->touch_start(FF)V

    .line 199
    const/4 v3, 0x2

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->isDrawing:Z

    .line 200
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->invalidate()V

    :goto_0
    const/4 v3, 0x0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public restoreOptions()V
    .locals 2

    const/4 v1, 0x2

    .line 218
    const/4 v1, 0x3

    sget v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->DEFAULT_TOUCH_TOLERANCE:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    .line 219
    const/4 v1, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-void

    const/4 v1, 0x1
.end method

.method public setCurrBlur(I)V
    .locals 1

    const/4 v0, 0x2

    .line 165
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currBlur:I

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 162
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currColor:I

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrDashed(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 169
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currDashed:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrFill(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 173
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currFill:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrNeon(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 177
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currNeon:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrPenType(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;)V
    .locals 1

    const/4 v0, 0x1

    .line 128
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currPenType:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrStrokeWidth(I)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->currStrokeWidth:I

    return-void

    const/4 v0, 0x0
.end method

.method public setSmoothness(I)V
    .locals 3

    const/4 v2, 0x3

    .line 112
    const/4 v2, 0x0

    sget v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->maxTolerance:F

    const v1, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v1

    int-to-float p1, p1

    mul-float v0, v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->TOUCH_TOLERANCE:F

    return-void

    const/4 v0, 0x2
.end method

.method public undo()V
    .locals 2

    const/4 v1, 0x2

    .line 185
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 186
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawings:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 187
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
