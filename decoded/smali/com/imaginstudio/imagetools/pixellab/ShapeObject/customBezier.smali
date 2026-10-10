.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.super Ljava/lang/Object;
.source "customBezier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
    }
.end annotation


# static fields
.field public static final defaultStrokeWidth:I


# instance fields
.field PathBounds:Landroid/graphics/RectF;

.field public actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

.field center:Landroid/graphics/PointF;

.field public closedContour:Z

.field private controlPnt:Landroid/graphics/Paint;

.field private controlPntInverted:Landroid/graphics/Paint;

.field private controlPntLast:Landroid/graphics/Paint;

.field private controlPntRest:Landroid/graphics/Paint;

.field private controlRad:F

.field public currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field currRot:I

.field currScale:I

.field private directionPath:Landroid/graphics/Path;

.field public fillAlpha:I

.field private fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

.field private handlePnt:Landroid/graphics/Paint;

.field private handlePntInverted:Landroid/graphics/Paint;

.field private listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

.field needRecreate:Z

.field path:Landroid/graphics/Path;

.field public pathFillPnt:Landroid/graphics/Paint;

.field public pathStrokePnt:Landroid/graphics/Paint;

.field private pntIndicator:Landroid/graphics/Paint;

.field private pointRad:F

.field public selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

.field public strokeAlpha:I

.field public updatedGeometry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 53
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    return-void
.end method

.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V
    .locals 13

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 43
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    const/4 v0, 0x3

    .line 44
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 46
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    .line 47
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    .line 48
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    const/4 v2, 0x0

    .line 49
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    .line 50
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const/16 v3, 0xff

    .line 51
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    const/4 v4, 0x1

    .line 59
    iput-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    const/16 v5, 0x64

    .line 85
    iput v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    .line 86
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    .line 111
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    .line 217
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    .line 333
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    .line 334
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    .line 335
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    .line 371
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->directionPath:Landroid/graphics/Path;

    .line 440
    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 538
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    .line 539
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    .line 540
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    invoke-static {v5, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 542
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 543
    new-instance p1, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    invoke-direct {p1, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    .line 544
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    .line 545
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 546
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 547
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pntIndicator:Landroid/graphics/Paint;

    const/16 v5, 0x78

    invoke-static {v5, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 549
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 551
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 552
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntLast:Landroid/graphics/Paint;

    .line 553
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntLast:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 554
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntRest:Landroid/graphics/Paint;

    .line 555
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntRest:Landroid/graphics/Paint;

    const-string v1, "#00bcd4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    .line 557
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float v1, v1, v5

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 559
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    .line 560
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    const/16 v1, 0x50

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 563
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    sget v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    sget v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const-string v0, "#212121"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v10}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    sget v11, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    .line 564
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 565
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 566
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 567
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 568
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)F
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 35
    const/4 v0, 0x1

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
    .locals 1

    const/4 v0, 0x3

    .line 35
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x2

    .line 35
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$500(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x1

    .line 35
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->directionPath:Landroid/graphics/Path;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$600(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getDirectionPointer(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$700(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x3

    .line 35
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$800(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)Landroid/graphics/Paint;
    .locals 1

    const/4 v0, 0x2

    .line 35
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntLast:Landroid/graphics/Paint;

    return-object p0

    const/4 v0, 0x0
.end method

.method private getDefaultElements(Landroid/graphics/PointF;F)[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
    .locals 21

    move-object/from16 v0, p1

    .line 625
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, p2

    sub-float/2addr v3, v4

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 626
    new-instance v3, Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    .line 627
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v10, v2, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    const/4 v4, 0x0

    aput-object v12, v0, v4

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v1, p2, v6

    add-float v15, v5, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v16, v2, v1

    iget v2, v3, Landroid/graphics/PointF;->x:F

    sub-float v17, v2, v1

    iget v2, v3, Landroid/graphics/PointF;->y:F

    sub-float v18, v2, v1

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    move-object v13, v4

    move-object/from16 v14, p0

    move/from16 v19, v1

    move/from16 v20, v2

    invoke-direct/range {v13 .. v20}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    const/4 v1, 0x1

    aput-object v4, v0, v1

    return-object v0

    const/4 v1, 0x1
.end method

.method private getDirectionPointer(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 2

    const/4 v1, 0x2

    if-nez p4, :cond_0

    const/4 v1, 0x3

    .line 428
    const/4 v1, 0x0

    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    .line 429
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 430
    const/4 v1, 0x3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 431
    const/4 v1, 0x0

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    const/4 v1, 0x1

    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget p2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p4, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    const/4 v1, 0x2

    invoke-virtual {p4}, Landroid/graphics/Path;->close()V

    return-object p4

    const/4 v1, 0x1
.end method

.method public static getPathFromStringArrayList(Ljava/util/ArrayList;)Landroid/graphics/Path;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 156
    const/4 v2, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V

    const/4 v1, 0x1

    .line 157
    const/4 v2, 0x2

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    .line 158
    const/4 v2, 0x3

    invoke-virtual {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dataFromStringArrayList(Ljava/util/ArrayList;)V

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPath()Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    const/4 v0, 0x2
.end method

.method private snapX(F)F
    .locals 3

    const/4 v2, 0x2

    .line 298
    const/4 v2, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method private snapY(F)F
    .locals 3

    const/4 v2, 0x1

    .line 301
    const/4 v2, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method private updatePaint()V
    .locals 5

    const/4 v4, 0x0

    .line 337
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-eq v0, v1, :cond_0

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_1

    const/4 v4, 0x0

    .line 338
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getBounds(Landroid/graphics/RectF;F)V

    const/4 v0, 0x0

    .line 339
    const/4 v4, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    .line 341
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v4, 0x2

    .line 342
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    const/4 v4, 0x0

    .line 344
    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 345
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 349
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_3

    const/4 v4, 0x3

    .line 350
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->PathBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    const/4 v4, 0x1

    .line 352
    const/4 v4, 0x2

    :cond_3
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 353
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 355
    const/4 v4, 0x1

    :goto_1
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 356
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->applyCapOnPaint(Landroid/graphics/Paint;)V

    .line 358
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->applyCapOnPaint(Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x0
.end method

.method private updatePathRecreate()V
    .locals 10

    const/4 v9, 0x3

    .line 467
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 468
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x2

    return-void

    .line 469
    const/4 v9, 0x3

    :cond_0
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v1

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v2

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 470
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$6;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    .line 476
    const/4 v9, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    const/4 v9, 0x3

    .line 477
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->fixLastPoint(Z)V

    .line 478
    const/4 v9, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 479
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    :cond_1
    const/4 v9, 0x3

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public addPointAfterSelected()V
    .locals 9

    const/4 v8, 0x1

    .line 483
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v8, 0x3

    return-void

    .line 484
    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_2

    const/4 v8, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    const/4 v8, 0x0

    :cond_1
    const/4 v8, 0x1

    const/4 v0, 0x0

    goto :goto_0

    const/4 v8, 0x2

    :cond_2
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    const/4 v8, 0x0

    if-eqz v0, :cond_5

    const/4 v8, 0x1

    .line 486
    const/4 v8, 0x2

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 487
    const/4 v8, 0x3

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 488
    const/4 v8, 0x0

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 489
    const/4 v8, 0x1

    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v6, 0x3f000000    # 0.5f

    .line 490
    const/4 v8, 0x2

    invoke-static {v2, v4, v5, v3, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getPointOnCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)[Landroid/graphics/PointF;

    move-result-object v2

    const/4 v3, 0x3

    .line 492
    const/4 v8, 0x3

    aget-object v4, v2, v3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v3, v2, v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(FF)V

    const/4 v3, 0x1

    .line 493
    const/4 v8, 0x0

    aget-object v4, v2, v3

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v5, v2, v3

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(FF)V

    .line 495
    const/4 v8, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v5, v2, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    aget-object v6, v2, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v1, v2, v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v6, 0x4

    aget-object v7, v2, v6

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v7, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 497
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v1, :cond_3

    const/4 v8, 0x3

    .line 498
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 499
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 501
    const/4 v8, 0x2

    :cond_3
    const/4 v8, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 502
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 503
    const/4 v8, 0x1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 504
    const/4 v8, 0x2

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_4

    const/4 v8, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iput-object v0, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 505
    const/4 v8, 0x0

    :cond_4
    const/4 v8, 0x1

    iput-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 506
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    :cond_5
    const/4 v8, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public addPointLast(Landroid/graphics/PointF;)Z
    .locals 5

    const/4 v4, 0x1

    .line 510
    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    const/4 p1, 0x0

    return p1

    .line 513
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_1

    const/4 v4, 0x2

    .line 514
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$1000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;FF)V

    goto :goto_1

    const/4 v4, 0x0

    .line 518
    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 519
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_2

    const/4 v4, 0x0

    const v1, 0x3e19999a    # 0.15f

    .line 520
    const/4 v4, 0x1

    invoke-static {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    .line 521
    const/4 v4, 0x2

    invoke-static {v0, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    const/4 v4, 0x3

    .line 523
    const/4 v4, 0x0

    :cond_2
    const/4 v4, 0x1

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    .line 527
    const/4 v4, 0x2

    invoke-static {v0, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 529
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-static {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    .line 531
    const/4 v4, 0x1

    :goto_1
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 532
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    const/4 p1, 0x1

    return p1

    const/4 v0, 0x0
.end method

.method public addToArrayList(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 182
    const/4 v1, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    return-void

    const/4 v1, 0x1
.end method

.method public close(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 64
    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 65
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->fixLastPoint(Z)V

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 p1, 0x0

    .line 67
    const/4 v1, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    .line 69
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    const/4 v1, 0x1
.end method

.method public commitTransforms(Z)V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/16 v1, 0x64

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 131
    const/4 v2, 0x1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    .line 132
    const/4 v2, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    goto :goto_0

    const/4 v2, 0x3

    .line 134
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->scale(I)V

    .line 135
    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->rotate(I)V

    :goto_0
    const/4 v2, 0x3

    const/4 p1, 0x1

    .line 138
    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    .line 139
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    invoke-interface {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_1
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public copy(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;F)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 3

    const/4 v2, 0x1

    .line 74
    const/4 v2, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V

    .line 75
    const/4 v2, 0x3

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    .line 76
    const/4 v2, 0x0

    iget-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->copyFrom(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;F)V

    const/4 p1, 0x1

    .line 77
    const/4 v2, 0x1

    iput-boolean p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 78
    const/4 v2, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iput-boolean p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    .line 79
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    .line 80
    const/4 v2, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    .line 81
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    return-object v0

    const/4 v0, 0x2
.end method

.method public dataFromStringArrayList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    .line 162
    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dataFromStringArrayList(Ljava/util/ArrayList;FFFFFF)V

    return-void

    const/4 v0, 0x0
.end method

.method public dataFromStringArrayList(Ljava/util/ArrayList;FFFFFF)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;FFFFFF)V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_2

    .line 166
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 167
    :cond_0
    iget-object v0, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->clear()V

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 168
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 169
    iget-object v6, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 170
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p2

    mul-float v0, v0, p6

    add-float v2, v0, p4

    add-int/lit8 v0, v7, 0x1

    .line 171
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p3

    mul-float v0, v0, p7

    add-float v3, v0, p5

    add-int/lit8 v0, v7, 0x2

    .line 172
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p2

    mul-float v0, v0, p6

    add-float v4, v0, p4

    add-int/lit8 v0, v7, 0x3

    .line 173
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p3

    mul-float v0, v0, p7

    add-float v11, v0, p5

    add-int/lit8 v0, v7, 0x4

    .line 174
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p2

    mul-float v0, v0, p6

    add-float v12, v0, p4

    add-int/lit8 v0, v7, 0x5

    .line 175
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, p3

    mul-float v0, v0, p7

    add-float v13, v0, p5

    move-object v0, v5

    move-object v1, v8

    move-object v9, v5

    move v5, v11

    move-object v10, v6

    move v6, v12

    move v11, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    .line 169
    invoke-static {v10, v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    add-int/lit8 v7, v11, 0x6

    move-object/from16 v9, p1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 177
    iput-boolean v0, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 178
    invoke-virtual {v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    :cond_2
    :goto_1
    return-void

    const/4 v1, 0x3
.end method

.method doDefaultPreset(Landroid/graphics/PointF;F)V
    .locals 3

    const/4 v2, 0x3

    .line 631
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getDefaultElements(Landroid/graphics/PointF;F)[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object p1

    .line 632
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->clear()V

    .line 633
    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-static {p2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    .line 634
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    .line 635
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 636
    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    .line 637
    const/4 v2, 0x2

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 638
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    const/4 v0, 0x2
.end method

.method doDefaultPresetMask(Landroid/graphics/RectF;F)V
    .locals 21
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 643
    iget-object v2, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->clear()V

    .line 644
    iget v9, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v2, p2

    iget v11, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v12, v0, p2

    sub-float v13, v11, v9

    sub-float v14, v12, v10

    .line 645
    iget-object v0, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0, v9, v12}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$1000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;FF)V

    .line 646
    iget-object v15, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const v0, 0x3f333333    # 0.7f

    mul-float v0, v0, v14

    add-float v16, v10, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v13

    add-float v4, v9, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, v14, v0

    add-float v17, v10, v1

    add-float v1, v11, v9

    mul-float v18, v1, v0

    add-float v1, v10, v12

    mul-float v19, v1, v0

    move-object v0, v7

    move-object v1, v8

    move v2, v9

    move/from16 v3, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v20, v10

    move-object v10, v7

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    .line 647
    iget-object v10, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v15, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v13, v13, v0

    add-float/2addr v9, v13

    move-object v0, v15

    move v2, v9

    move/from16 v3, v17

    move v4, v11

    move/from16 v5, v16

    move v6, v11

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    .line 648
    iget-object v10, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const v0, 0x3fa66666    # 1.3f

    mul-float v14, v14, v0

    add-float v3, v20, v14

    const/high16 v0, 0x41300000    # 11.0f

    mul-float v12, v12, v0

    sub-float v12, v12, v20

    const v0, 0x3dcccccd    # 0.1f

    mul-float v7, v12, v0

    move-object v0, v13

    move v2, v11

    move v4, v9

    move v5, v7

    move/from16 v6, v18

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    invoke-static {v10, v13}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$000(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V

    .line 649
    iget-object v0, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x1

    .line 650
    iput-boolean v0, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    const/4 v1, 0x1
.end method

.method dragCurrent(FF)V
    .locals 5

    const/4 v4, 0x2

    .line 240
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const/4 v4, 0x0

    .line 241
    const/4 v4, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    .line 242
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getCenteroid()Landroid/graphics/PointF;

    move-result-object v0

    .line 243
    const/4 v4, 0x0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p1

    invoke-virtual {v1, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosX(FZ)F

    move-result p1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    .line 244
    const/4 v4, 0x1

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->snapPosY(FZ)F

    move-result p2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    .line 249
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FF)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    .line 261
    const/4 v4, 0x0

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 262
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    .line 265
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    return-void

    .line 266
    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    const/4 v4, 0x3

    .line 287
    const/4 v4, 0x0

    :pswitch_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 288
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    goto/16 :goto_0

    const/4 v4, 0x3

    .line 289
    const/4 v4, 0x0

    :cond_3
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_8

    const/4 v4, 0x2

    .line 290
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    goto/16 :goto_0

    const/4 v4, 0x0

    .line 282
    const/4 v4, 0x1

    :pswitch_1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_4

    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_8

    const/4 v4, 0x3

    .line 283
    const/4 v4, 0x0

    :cond_4
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    add-float/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iput p2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    goto/16 :goto_0

    const/4 v4, 0x2

    .line 269
    const/4 v4, 0x3

    :pswitch_2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapX(F)F

    move-result p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->snapY(F)F

    move-result p2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    sub-float/2addr p2, v0

    .line 270
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    .line 272
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_5

    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_6

    const/4 v4, 0x3

    .line 273
    const/4 v4, 0x0

    :cond_5
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    add-float/2addr v1, p2

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    .line 275
    const/4 v4, 0x2

    :cond_6
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    .line 276
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float/2addr v0, p2

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    goto :goto_0

    const/4 v4, 0x2

    .line 277
    const/4 v4, 0x3

    :cond_7
    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_8

    const/4 v4, 0x1

    .line 278
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float/2addr v0, p2

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    .line 294
    const/4 v4, 0x3

    :cond_8
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 295
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method public drawPath(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    .line 363
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePaint()V

    .line 365
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 366
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathStrokePnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 368
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pathFillPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method

.method public drawPathPoints(Landroid/graphics/Canvas;ZZF)V
    .locals 10

    const/high16 v0, 0x40400000    # 3.0f

    .line 373
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 375
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    .line 377
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    .line 378
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 379
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 381
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    div-float v5, v2, p4

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 382
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    div-float v5, v3, p4

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 384
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3fb33333    # 1.4f

    if-eqz p3, :cond_1

    const v7, 0x3fb33333    # 1.4f

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    mul-float v7, v7, p4

    div-float/2addr v4, v7

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    .line 385
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    if-eqz p3, :cond_2

    const v5, 0x3fb33333    # 1.4f

    :cond_2
    mul-float p4, p4, v5

    div-float/2addr v4, p4

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    if-eqz p2, :cond_c

    .line 387
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p4, p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eq p2, p4, :cond_c

    .line 388
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz p2, :cond_6

    .line 389
    :cond_3
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v5, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v6, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v7, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v8, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    :goto_1
    move-object v9, p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    goto :goto_1

    :goto_2
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 390
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p4, p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    if-eqz p3, :cond_5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {p1, p2, p4, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 392
    :cond_6
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz p2, :cond_9

    .line 393
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v5, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v6, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v7, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v8, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    :goto_4
    move-object v9, p2

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    goto :goto_4

    :goto_5
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p4, p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p4, p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    if-eqz p3, :cond_8

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    goto :goto_6

    :cond_8
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    :goto_6
    invoke-virtual {p1, p2, p4, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 395
    :cond_9
    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz p2, :cond_c

    .line 396
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v5, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v6, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v7, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v8, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    if-eqz p3, :cond_a

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    :goto_7
    move-object v9, p2

    goto :goto_8

    :cond_a
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    goto :goto_7

    :goto_8
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 397
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object p4, p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget p4, p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    if-eqz p3, :cond_b

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPntInverted:Landroid/graphics/Paint;

    goto :goto_9

    :cond_b
    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlPnt:Landroid/graphics/Paint;

    :goto_9
    invoke-virtual {p1, p2, p4, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 401
    :cond_c
    :goto_a
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance p4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;

    invoke-direct {p4, p0, p3, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;ZLandroid/graphics/Canvas;)V

    invoke-virtual {p2, p4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    .line 420
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 421
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->handlePntInverted:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 422
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->controlRad:F

    .line 423
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    return-void

    const/4 v0, 0x2
.end method

.method public getCount()I
    .locals 2

    const/4 v1, 0x1

    .line 445
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getCurrRot()I
    .locals 2

    const/4 v1, 0x0

    .line 93
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    return v0

    const/4 v1, 0x1
.end method

.method public getCurrScale()I
    .locals 2

    const/4 v1, 0x3

    .line 89
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    return v0

    const/4 v1, 0x1
.end method

.method public getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
    .locals 2

    const/4 v1, 0x2

    .line 56
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    const/4 v1, 0x1

    .line 442
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getSelectedIndex()I
    .locals 3

    const/4 v2, 0x0

    .line 148
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 150
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 151
    const/4 v2, 0x1

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 v0, -0x1

    return v0

    const/4 v0, 0x2
.end method

.method public isStillDefault(Landroid/graphics/PointF;F)Z
    .locals 3

    const/4 v2, 0x1

    .line 143
    const/4 v2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getDefaultElements(Landroid/graphics/PointF;F)[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object p1

    .line 144
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->contains(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    aget-object p1, p1, v1

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->contains(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    const/4 v0, 0x1

    :cond_0
    const/4 v2, 0x2

    return v0

    const/4 v0, 0x2
.end method

.method public removeSelected()Z
    .locals 3

    const/4 v2, 0x0

    .line 233
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->remove(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x1

    .line 234
    const/4 v2, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    .line 235
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    .line 236
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method public resetDragTarget()V
    .locals 2

    const/4 v1, 0x2

    .line 307
    const/4 v1, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-void

    const/4 v1, 0x1
.end method

.method public rotate(I)V
    .locals 3

    const/4 v2, 0x1

    .line 113
    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    sub-int v0, p1, v0

    .line 114
    const/4 v2, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currRot:I

    .line 115
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getCenteroid()Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    .line 116
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;I)V

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    .line 124
    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePathRecreate()V

    .line 125
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    invoke-interface {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_1
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public scale(I)V
    .locals 3

    const/4 v2, 0x3

    int-to-float v0, p1

    .line 97
    const/4 v2, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 98
    const/4 v2, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currScale:I

    .line 99
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    if-nez p1, :cond_0

    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->getCenteroid()Landroid/graphics/PointF;

    move-result-object p1

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    :goto_0
    const/4 v2, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    .line 100
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;F)V

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->iterateAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;)V

    .line 108
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePathRecreate()V

    .line 109
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    invoke-interface {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_1
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public selectMe()V
    .locals 2

    const/4 v1, 0x1

    .line 304
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    return-void

    const/4 v1, 0x1
.end method

.method public selectPoint(FFF)Z
    .locals 5

    const/4 v4, 0x0

    const/high16 v0, 0x40400000    # 3.0f

    .line 219
    const/4 v4, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 221
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$100(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v0

    :goto_0
    const/4 v4, 0x3

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    .line 223
    const/4 v4, 0x1

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v4, 0x2

    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v2, p3

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v4, 0x3

    .line 224
    const/4 v4, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 225
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    invoke-interface {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_0
    const/4 v4, 0x3

    const/4 p1, 0x1

    return p1

    .line 228
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    const/4 p1, 0x0

    return p1

    const/4 v0, 0x0
.end method

.method public setDragTarget(FFF)V
    .locals 5

    const/4 v4, 0x1

    .line 314
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v0, :cond_0

    const/4 v4, 0x3

    return-void

    .line 315
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 316
    const/4 v4, 0x2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 317
    const/4 v4, 0x3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v4, 0x0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->pointRad:F

    div-float/2addr v1, p3

    mul-float v1, v1, v3

    cmpg-float p3, v0, v1

    if-gez p3, :cond_1

    const/4 v4, 0x1

    .line 318
    const/4 v4, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto/16 :goto_4

    const/4 v4, 0x3

    .line 320
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const/4 v4, 0x2

    iget-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz p3, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    const/4 v4, 0x0

    :cond_2
    const/4 v4, 0x1

    move-object p3, v0

    goto :goto_1

    const/4 v4, 0x2

    :cond_3
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    new-instance p3, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {p3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 321
    const/4 v4, 0x1

    :goto_1
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-nez v1, :cond_4

    const/4 v4, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v1, :cond_5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->root:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    const/4 v4, 0x1

    :cond_4
    const/4 v4, 0x2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_5
    const/4 v4, 0x3

    :goto_2
    const/4 v4, 0x0

    if-nez p3, :cond_6

    const/4 v4, 0x1

    if-nez v0, :cond_6

    const/4 v4, 0x2

    .line 323
    const/4 v4, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_4

    const/4 v4, 0x0

    :cond_6
    const/4 v4, 0x1

    if-nez p3, :cond_7

    const/4 v4, 0x2

    .line 325
    const/4 v4, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_4

    const/4 v4, 0x0

    :cond_7
    const/4 v4, 0x1

    if-nez v0, :cond_8

    const/4 v4, 0x2

    .line 327
    const/4 v4, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_4

    const/4 v4, 0x0

    .line 329
    const/4 v4, 0x1

    :cond_8
    const/4 v4, 0x2

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p3, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result p3

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_9

    const/4 v4, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    goto :goto_3

    const/4 v4, 0x0

    :cond_9
    const/4 v4, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    :goto_3
    const/4 v4, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    :goto_4
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public setDragTarget(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;)V
    .locals 1

    const/4 v0, 0x1

    .line 311
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->currDrag:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-void

    const/4 v0, 0x0
.end method

.method public setDragWhole()V
    .locals 2

    const/4 v1, 0x0

    .line 309
    const/4 v1, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragTarget(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;)V

    return-void

    const/4 v1, 0x1
.end method

.method setStyleForMask()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 5

    const/4 v4, 0x3

    .line 205
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    .line 206
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const v2, -0xbbbbbc

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_color(I)V

    .line 207
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    const/4 v0, 0x0

    .line 208
    const/4 v4, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const/16 v0, 0xff

    .line 209
    const/4 v4, 0x0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    .line 210
    const/4 v4, 0x1

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    return-object p0

    const/4 v0, 0x0
.end method

.method setStyleFromBundle(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 2

    const/4 v1, 0x3

    .line 198
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fromBundle(Landroid/os/Bundle;)V

    const-string v0, "Kzd2"

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    const-string v0, "Qs16"

    .line 200
    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    const-string v0, "lAc1"

    .line 201
    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->stringToBool(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    return-object p0

    const/4 v1, 0x1
.end method

.method styleToBundle()Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x1

    .line 191
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lAc1"

    .line 192
    const/4 v3, 0x3

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->boolToString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Kzd2"

    .line 193
    const/4 v3, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Qs16"

    .line 194
    const/4 v3, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public updatePath()V
    .locals 12

    const/4 v11, 0x3

    .line 448
    const/4 v11, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const/4 v11, 0x1

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    .line 449
    const/4 v11, 0x2

    :cond_0
    const/4 v11, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    if-eqz v0, :cond_1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePathRecreate()V

    goto :goto_0

    const/4 v11, 0x1

    .line 451
    const/4 v11, 0x2

    :cond_1
    const/4 v11, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v11, 0x0

    .line 452
    const/4 v11, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->access$900(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-result-object v0

    .line 453
    const/4 v11, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v11, 0x3

    .line 454
    const/4 v11, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    const/4 v11, 0x1

    .line 456
    const/4 v11, 0x2

    :cond_2
    const/4 v11, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->path:Landroid/graphics/Path;

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v9, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v10, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 460
    const/4 v11, 0x0

    :cond_3
    const/4 v11, 0x1

    :goto_0
    const/4 v11, 0x2

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->needRecreate:Z

    const/4 v0, 0x0

    .line 461
    const/4 v11, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 462
    const/4 v11, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    .line 463
    const/4 v11, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    if-eqz v0, :cond_4

    const/4 v11, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;

    invoke-interface {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;->pathChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_4
    const/4 v11, 0x3

    return-void

    const/4 v1, 0x3
.end method
