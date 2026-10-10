.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead2;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowHead2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;-><init>()V

    return-void
.end method


# virtual methods
.method protected doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/high16 v0, 0x42b40000    # 90.0f

    .line 474
    const/4 v2, 0x3

    invoke-static {p3, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 475
    const/4 v2, 0x0

    invoke-static {p3, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 476
    const/4 v2, 0x1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 477
    const/4 v2, 0x2

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    const/4 v2, 0x3

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 479
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void

    const/4 v0, 0x2
.end method
