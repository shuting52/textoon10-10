.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead6;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowHead6"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 533
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;-><init>()V

    return-void
.end method


# virtual methods
.method protected doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/high16 v0, -0x40800000    # -1.0f

    .line 536
    const/4 v7, 0x0

    invoke-static {p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    const v1, 0x3fe66666    # 1.8f

    .line 537
    const/4 v7, 0x1

    invoke-static {p2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    const v2, 0x400ccccd    # 2.2f

    .line 538
    const/4 v7, 0x2

    invoke-static {p2, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 539
    const/4 v7, 0x3

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 540
    const/4 v7, 0x0

    new-instance v4, Landroid/graphics/PointF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v5, 0x42b40000    # 90.0f

    .line 541
    const/4 v7, 0x1

    invoke-static {v1, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 542
    const/4 v7, 0x2

    invoke-static {v2, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    const/high16 v5, -0x3d4c0000    # -90.0f

    .line 543
    const/4 v7, 0x3

    invoke-static {v3, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 544
    const/4 v7, 0x0

    invoke-static {v4, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 545
    const/4 v7, 0x1

    iget v4, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 546
    const/4 v7, 0x2

    iget p3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 547
    const/4 v7, 0x3

    iget p3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 548
    const/4 v7, 0x0

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 549
    const/4 v7, 0x1

    iget p2, v3, Landroid/graphics/PointF;->x:F

    iget p3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 550
    const/4 v7, 0x2

    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget p3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 551
    const/4 v7, 0x3

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    const/4 v1, 0x3
.end method
