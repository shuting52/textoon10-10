.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.super Landroid/view/View;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead7;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead6;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead5;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead4;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead3;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;
    }
.end annotation


# static fields
.field public static final defaultArrowMultiplier:I = 0x2

.field public static final defaultMiddleSize:I


# instance fields
.field PathBounds:Landroid/graphics/RectF;

.field beginArrowMultiplier:F

.field public changedGeometry:Z

.field dragged:Landroid/graphics/PointF;

.field dx:F

.field dy:F

.field public editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field end:Landroid/graphics/PointF;

.field endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

.field endArrowMultiplier:F

.field endPath:Landroid/graphics/Path;

.field farthest:Landroid/graphics/PointF;

.field public fillAlpha:I

.field public fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

.field handleRad:F

.field listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

.field middle:Landroid/graphics/PointF;

.field middlePath:Landroid/graphics/Path;

.field middleSize:F

.field needUpdateEnd:Z

.field needUpdateMiddle:Z

.field needUpdateStart:Z

.field origin:Landroid/graphics/PointF;

.field pntArrow:Landroid/graphics/Paint;

.field pntArrowStroke:Landroid/graphics/Paint;

.field pntHandles:Landroid/graphics/Paint;

.field pntHandlesStroke:Landroid/graphics/Paint;

.field prevX:F

.field prevY:F

.field renderMode:Z

.field start:Landroid/graphics/PointF;

.field startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

.field startPath:Landroid/graphics/Path;

.field public strokeAlpha:I

.field tmpPath:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 42
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->defaultMiddleSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    .line 40
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    .line 41
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    .line 44
    sget p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->defaultMiddleSize:I

    int-to-float p1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 45
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->beginArrowMultiplier:F

    .line 46
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowMultiplier:F

    const/4 p1, 0x6

    .line 47
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->handleRad:F

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandles:Landroid/graphics/Paint;

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandlesStroke:Landroid/graphics/Paint;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    .line 51
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    .line 52
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startPath:Landroid/graphics/Path;

    .line 53
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    .line 54
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endPath:Landroid/graphics/Path;

    .line 56
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 57
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->renderMode:Z

    .line 72
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    .line 73
    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    .line 74
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    .line 75
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 76
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 87
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    const/4 v2, 0x0

    .line 88
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dx:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dy:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevX:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevY:F

    .line 132
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->PathBounds:Landroid/graphics/RectF;

    const/16 v2, 0x64

    .line 304
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    const/16 v2, 0x32

    .line 305
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 80
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandles:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandlesStroke:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandlesStroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandlesStroke:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;IILjava/util/ArrayList;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 38
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->updatePositions(IILjava/util/ArrayList;)V

    return-void

    const/4 v0, 0x0
.end method

.method private drawPaths(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    const/4 v1, 0x0

    .line 210
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 211
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 212
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x1
.end method

.method private getArrowHeadById(I)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
    .locals 2

    const/4 v1, 0x1

    .line 428
    const/4 v1, 0x2

    :try_start_0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->subclasses:[Ljava/lang/Class;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 430
    const/4 v1, 0x3

    :catch_0
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;-><init>()V

    return-object p1

    const/4 v1, 0x1
.end method

.method public static getArrowInstances()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
    .locals 4

    const/4 v3, 0x1

    .line 445
    const/4 v3, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->subclasses:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    const/4 v1, 0x0

    .line 446
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    const/4 v3, 0x1

    .line 448
    const/4 v3, 0x2

    :try_start_0
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->subclasses:[Ljava/lang/Class;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v3, 0x3

    .line 450
    const/4 v3, 0x0

    :catch_0
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;

    invoke-direct {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;-><init>()V

    aput-object v2, v0, v1

    :goto_1
    const/4 v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    return-object v0

    const/4 v1, 0x3
.end method

.method private getIdFromArrowHead(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 436
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->subclasses:[Ljava/lang/Class;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    const/4 v4, 0x1

    .line 437
    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->subclasses:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    return v1

    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    return v0

    const/4 v0, 0x0
.end method

.method private getPositions(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    .line 382
    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    const/4 v0, 0x0
.end method

.method private initDefaultStyle()V
    .locals 11

    const/4 v10, 0x3

    .line 246
    const/4 v10, 0x0

    sget v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->defaultMiddleSize:I

    int-to-float v0, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 247
    const/4 v10, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->beginArrowMultiplier:F

    .line 248
    const/4 v10, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowMultiplier:F

    .line 249
    const/4 v10, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 250
    const/4 v10, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead1;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 251
    const/4 v10, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    sget v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const-string v1, "#212121"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v8

    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v3, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    .line 252
    const/4 v10, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;)V

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v0, 0x2
.end method

.method private updatePaint()V
    .locals 8

    const/4 v7, 0x0

    .line 134
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->computeBounds()V

    .line 135
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v7, 0x3

    .line 136
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    const/4 v7, 0x1

    .line 138
    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    const/4 v7, 0x1

    :goto_0
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    int-to-double v3, v1

    const-wide v5, 0x4004666666666666L    # 2.55

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    .line 144
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    const/4 v7, 0x2

    .line 146
    const/4 v7, 0x3

    :cond_1
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 147
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    const/4 v7, 0x2

    :goto_1
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    int-to-double v1, v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 150
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    const/4 v1, 0x3
.end method

.method private updatePositions(IILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x2

    if-eqz p3, :cond_1

    const/4 v3, 0x3

    .line 385
    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    const/4 v3, 0x2

    .line 387
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    int-to-float p1, p1

    mul-float v1, v1, p1

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    int-to-float p2, p2

    mul-float v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 388
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    mul-float v1, v1, p1

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    mul-float p1, p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public clearMe()V
    .locals 2

    const/4 v1, 0x1

    .line 241
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 242
    const/4 v1, 0x1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 243
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

    return-void

    const/4 v1, 0x1
.end method

.method computeBounds()V
    .locals 5

    const/4 v4, 0x0

    .line 127
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    if-nez v0, :cond_1

    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    if-nez v0, :cond_1

    const/4 v4, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    if-nez v0, :cond_1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-eq v0, v1, :cond_0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_1

    const/4 v4, 0x2

    .line 128
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->PathBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 129
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->PathBounds:Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/Path;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startPath:Landroid/graphics/Path;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endPath:Landroid/graphics/Path;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->computePathsBounds(Landroid/graphics/RectF;[Landroid/graphics/Path;)V

    :cond_1
    const/4 v4, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public constructFinalPath()Landroid/graphics/Path;
    .locals 3

    const/4 v2, 0x0

    .line 216
    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->tmpPath:Landroid/graphics/Path;

    .line 217
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->tmpPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 218
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->tmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 219
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->tmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 220
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->tmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 221
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->tmpPath:Landroid/graphics/Path;

    return-object v0

    const/4 v0, 0x2
.end method

.method public drawHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    const/4 v3, 0x0

    .line 236
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->handleRad:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 238
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->handleRad:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x3
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    .line 356
    const/4 v5, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v0

    .line 357
    const/4 v5, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    const-string v2, "KIo9"

    const/16 v3, 0xc8

    .line 358
    const/4 v5, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowMultiplier:F

    const-string v2, "eP5VGFx"

    .line 359
    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->beginArrowMultiplier:F

    const-string v2, "Hhkf80"

    .line 360
    const/4 v5, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v0

    mul-float v2, v2, v3

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    const-string v2, "tZP1b"

    const/4 v3, 0x0

    .line 361
    const/4 v5, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getArrowHeadById(I)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object v2

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    const-string v2, "OgjZ25L5"

    .line 362
    const/4 v5, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getArrowHeadById(I)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object v2

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 363
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const-string v3, "amVtWE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fromBundle(Landroid/os/Bundle;)V

    const-string v2, "W1Ma0Tw"

    const/16 v3, 0x64

    .line 364
    const/4 v5, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    const-string v2, "hXt84b"

    const/16 v3, 0xff

    .line 365
    const/4 v5, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    const-string v2, "7fQv5"

    .line 366
    const/4 v5, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 368
    const/4 v5, 0x0

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;IILjava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v1, 0x1
.end method

.method public getBitmapFromBezierPanel(I)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x2

    .line 282
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v1, v1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v2, v2, p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 284
    const/4 v5, 0x1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    .line 285
    const/4 v5, 0x2

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 286
    const/4 v5, 0x3

    iget p1, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x1

    .line 287
    const/4 v5, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->renderMode:Z

    .line 288
    const/4 v5, 0x1

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->draw(Landroid/graphics/Canvas;)V

    .line 289
    const/4 v5, 0x2

    iput-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->renderMode:Z

    return-object v1

    const/4 v1, 0x1
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public initiate(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x4

    .line 268
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setVisibility(I)V

    .line 270
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->arrowDataBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 271
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->arrowDataBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fromBundle(Landroid/os/Bundle;)V

    goto :goto_0

    const/4 v1, 0x0

    .line 273
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->initDefaultStyle()V

    .line 275
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 276
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;->startChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    :cond_1
    const/4 v1, 0x3

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 277
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;->endChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    :cond_2
    const/4 v1, 0x2

    const/4 p1, 0x0

    .line 278
    const/4 v1, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->changedGeometry:Z

    return-void

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x1

    .line 225
    const/4 v1, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 226
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->updatePaths()V

    .line 227
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->updatePaint()V

    .line 228
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrowStroke:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->drawPaths(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 229
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntArrow:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->drawPaths(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 230
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->renderMode:Z

    if-nez v0, :cond_1

    const/4 v1, 0x2

    .line 231
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandlesStroke:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->drawHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 232
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->pntHandles:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->drawHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x3

    .line 294
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 295
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    .line 296
    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 297
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    .line 91
    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 92
    const/4 v7, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 93
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    const/4 v7, 0x1

    .line 100
    const/4 v7, 0x2

    :pswitch_0
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevX:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dx:F

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevY:F

    sub-float p1, v1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dy:F

    .line 101
    const/4 v7, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevY:F

    .line 102
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    if-eqz p1, :cond_1

    const/4 v7, 0x1

    .line 103
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dx:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result v0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dy:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 104
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    const/4 v7, 0x0

    .line 105
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dy:F

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 106
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dy:F

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    const/4 v7, 0x3

    .line 108
    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    .line 110
    const/4 v7, 0x2

    :goto_0
    const/4 v7, 0x3

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    .line 111
    const/4 v7, 0x0

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 112
    const/4 v7, 0x1

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 113
    const/4 v7, 0x2

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->changedGeometry:Z

    .line 114
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    goto :goto_1

    const/4 v7, 0x0

    .line 119
    const/4 v7, 0x1

    :pswitch_1
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    const/4 p1, 0x0

    .line 120
    const/4 v7, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    goto :goto_1

    const/4 v7, 0x3

    .line 95
    const/4 v7, 0x0

    :pswitch_2
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->prevY:F

    const/4 p1, 0x0

    .line 96
    const/4 v7, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dx:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dy:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 97
    const/4 v7, 0x2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->handleRad:F

    mul-float v3, v3, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    aput-object v5, v4, v2

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, p1, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getSelected(FFFLandroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->dragged:Landroid/graphics/PointF;

    :cond_1
    const/4 v7, 0x3

    :goto_1
    const/4 v7, 0x0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public prepareEdit(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 1

    const/4 v0, 0x2

    .line 62
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void

    const/4 v0, 0x0
.end method

.method public setArrowSize(I)V
    .locals 1

    const/4 v0, 0x1

    int-to-float p1, p1

    .line 183
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    const/4 p1, 0x1

    .line 184
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setBeginArrowMultiplier(F)V
    .locals 1

    const/4 v0, 0x2

    .line 188
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->beginArrowMultiplier:F

    const/4 p1, 0x1

    .line 189
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setEndArrowHead(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V
    .locals 2

    const/4 v1, 0x3

    .line 204
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;->endChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    .line 205
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    const/4 p1, 0x1

    .line 206
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 207
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public setEndArrowMultiplier(F)V
    .locals 1

    const/4 v0, 0x3

    .line 193
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowMultiplier:F

    const/4 p1, 0x1

    .line 194
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 195
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setFill(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 3

    const/4 v2, 0x0

    .line 314
    const/4 v2, 0x1

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    const/4 v2, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ec8c8c9

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/16 v0, 0x64

    .line 315
    const/4 v2, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    .line 316
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    .line 317
    const/4 v2, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 318
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    .line 319
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setFillOpacity(I)V
    .locals 1

    const/4 v0, 0x0

    .line 309
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    .line 310
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setStartArrowHead(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V
    .locals 2

    const/4 v1, 0x0

    .line 198
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;->startChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    .line 199
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    const/4 p1, 0x1

    .line 200
    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 201
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public setStroke(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 3

    const/4 v2, 0x0

    .line 333
    const/4 v2, 0x1

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    const/4 v2, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ec8c8c9

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/16 v0, 0x64

    .line 334
    const/4 v2, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    .line 335
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    .line 336
    const/4 v2, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 337
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_type(I)V

    .line 338
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setStrokeOpacity(I)V
    .locals 1

    const/4 v0, 0x0

    .line 328
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    .line 329
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setStrokeWidth(I)V
    .locals 2

    const/4 v1, 0x0

    .line 323
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    .line 324
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    .line 341
    const/4 v5, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 342
    const/4 v5, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    .line 343
    const/4 v5, 0x3

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    const-string v3, "amVtWE"

    .line 344
    const/4 v5, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "7fQv5"

    .line 345
    const/4 v5, 0x1

    invoke-direct {p0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getPositions(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "KIo9"

    .line 346
    const/4 v5, 0x2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowMultiplier:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "eP5VGFx"

    .line 347
    const/4 v5, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->beginArrowMultiplier:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "Hhkf80"

    .line 348
    const/4 v5, 0x0

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tZP1b"

    .line 349
    const/4 v5, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getIdFromArrowHead(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "OgjZ25L5"

    .line 350
    const/4 v5, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getIdFromArrowHead(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "W1Ma0Tw"

    .line 351
    const/4 v5, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->strokeAlpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hXt84b"

    .line 352
    const/4 v5, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillAlpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    const/4 v1, 0x1
.end method

.method updatePaths()V
    .locals 9

    const/4 v8, 0x2

    .line 153
    const/4 v8, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    .line 154
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 155
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    invoke-static {v0, v2, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 156
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    invoke-static {v2, v3, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 157
    const/4 v8, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v0, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 158
    const/4 v8, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-static {v0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 159
    const/4 v8, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    invoke-static {v2, v5, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 160
    const/4 v8, 0x3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    invoke-static {v2, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 161
    const/4 v8, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    invoke-static {v3, v5, v6, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 162
    const/4 v8, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    invoke-static {v0, v5, v6, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 163
    const/4 v8, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    invoke-static {v4, v5, v6, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 164
    const/4 v8, 0x3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    invoke-static {v2, v5, v6, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 165
    const/4 v8, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    const/4 v8, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 171
    const/4 v8, 0x1

    :cond_0
    const/4 v8, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    if-eqz v0, :cond_2

    const/4 v8, 0x3

    .line 172
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->isAdjustableSize()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v8, 0x1

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->endArrowMultiplier:F

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    mul-float v6, v6, v7

    goto :goto_0

    const/4 v8, 0x2

    :cond_1
    const/4 v8, 0x3

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    :goto_0
    const/4 v8, 0x0

    invoke-static {v4, v5, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->getPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 174
    const/4 v8, 0x1

    :cond_2
    const/4 v8, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    if-eqz v0, :cond_4

    const/4 v8, 0x3

    .line 175
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->startArrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->isAdjustableSize()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v8, 0x1

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->beginArrowMultiplier:F

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    mul-float v6, v6, v7

    goto :goto_1

    const/4 v8, 0x2

    :cond_3
    const/4 v8, 0x3

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middleSize:F

    :goto_1
    const/4 v8, 0x0

    invoke-static {v4, v5, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->getPath(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_4
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 177
    const/4 v8, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    .line 178
    const/4 v8, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 179
    const/4 v8, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    return-void

    const/4 v0, 0x0
.end method
