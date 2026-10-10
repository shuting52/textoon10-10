.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead7;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowHead7"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;-><init>()V

    return-void
.end method


# virtual methods
.method protected doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 561
    const/4 v7, 0x2

    invoke-static {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    .line 562
    const/4 v7, 0x3

    invoke-static {p3, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 563
    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    .line 564
    const/4 v7, 0x1

    invoke-static {v2, p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 565
    const/4 v7, 0x2

    invoke-static {p3, p2, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 566
    const/4 v7, 0x3

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 567
    const/4 v7, 0x0

    invoke-static {v4, p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 568
    const/4 v7, 0x1

    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 569
    const/4 v7, 0x2

    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 570
    const/4 v7, 0x3

    iget p2, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 571
    const/4 v7, 0x0

    iget p2, v4, Landroid/graphics/PointF;->x:F

    iget p3, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 572
    const/4 v7, 0x1

    iget p2, v3, Landroid/graphics/PointF;->x:F

    iget p3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void

    const/4 v1, 0x3
.end method

.method public final isAdjustableSize()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x1
.end method
