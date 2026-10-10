.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead5;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowHead5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;-><init>()V

    return-void
.end method


# virtual methods
.method protected doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 518
    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 p3, 0x42b40000    # 90.0f

    .line 519
    const/4 v3, 0x2

    invoke-static {v0, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 520
    const/4 v3, 0x3

    invoke-static {v1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 521
    const/4 v3, 0x0

    invoke-static {v2, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 522
    const/4 v3, 0x1

    iget p3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 523
    const/4 v3, 0x2

    iget p3, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 524
    const/4 v3, 0x3

    iget p3, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 525
    const/4 v3, 0x0

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 526
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    const/4 v1, 0x3
.end method
