.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead4;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowHead4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;-><init>()V

    return-void
.end method


# virtual methods
.method protected doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/high16 v0, 0x42340000    # 45.0f

    .line 499
    const/4 v3, 0x2

    invoke-static {p3, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p3

    const/high16 v0, 0x42b40000    # 90.0f

    .line 500
    const/4 v3, 0x3

    invoke-static {p3, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 501
    const/4 v3, 0x0

    invoke-static {v1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 502
    const/4 v3, 0x1

    invoke-static {v2, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 503
    const/4 v3, 0x2

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 504
    const/4 v3, 0x3

    iget p3, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    const/4 v3, 0x0

    iget p3, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 506
    const/4 v3, 0x1

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    const/4 v1, 0x3
.end method
