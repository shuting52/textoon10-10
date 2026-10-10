.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;
.super Ljava/lang/Object;
.source "customBezier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "cubicToElement"
.end annotation


# instance fields
.field public next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

.field public prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field public x1:F

.field public x2:F

.field public x3:F

.field public y1:F

.field public y2:F

.field public y3:F


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V
    .locals 7

    .line 589
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 573
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->next:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 574
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->prev:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 590
    invoke-virtual/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->set(FFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8

    .line 587
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->x:F

    iget v5, p3, Landroid/graphics/PointF;->y:F

    iget v6, p4, Landroid/graphics/PointF;->x:F

    iget v7, p4, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;F)V
    .locals 9

    .line 584
    iget v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    add-float v3, v0, p3

    iget v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    add-float v4, v0, p3

    iget v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    add-float v5, v0, p3

    iget v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    add-float v6, v0, p3

    iget v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    add-float v7, v0, p3

    iget p2, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    add-float v8, p2, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FFFFFF)V

    return-void
.end method


# virtual methods
.method compare(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)Z
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 621
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 v2, 0x3

    const/4 p1, 0x1

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    return p1

    const/4 v0, 0x2
.end method

.method getControlP1()Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x0

    .line 593
    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method getControlP2()Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x3

    .line 599
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method getPoint()Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x2

    .line 596
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public set(FFFFFF)V
    .locals 1

    const/4 v0, 0x1

    .line 576
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    .line 577
    const/4 v0, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    .line 578
    const/4 v0, 0x0

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    .line 579
    const/4 v0, 0x1

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    .line 580
    const/4 v0, 0x2

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    .line 581
    const/4 v0, 0x3

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    return-void

    const/4 v0, 0x0
.end method

.method public setControlPoint1(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 615
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    return-void

    const/4 v0, 0x0
.end method

.method public setControlPoint1(Landroid/graphics/PointF;)V
    .locals 2

    const/4 v1, 0x0

    .line 605
    const/4 v1, 0x1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(FF)V

    return-void

    const/4 v1, 0x1
.end method

.method public setControlPoint2(FF)V
    .locals 1

    const/4 v0, 0x3

    .line 618
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    return-void

    const/4 v0, 0x0
.end method

.method public setControlPoint2(Landroid/graphics/PointF;)V
    .locals 2

    const/4 v1, 0x2

    .line 608
    const/4 v1, 0x3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(FF)V

    return-void

    const/4 v1, 0x1
.end method

.method public setPoint(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 612
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    return-void

    const/4 v0, 0x0
.end method

.method public setPoint(Landroid/graphics/PointF;)V
    .locals 2

    const/4 v1, 0x0

    .line 602
    const/4 v1, 0x1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setPoint(FF)V

    return-void

    const/4 v1, 0x1
.end method
