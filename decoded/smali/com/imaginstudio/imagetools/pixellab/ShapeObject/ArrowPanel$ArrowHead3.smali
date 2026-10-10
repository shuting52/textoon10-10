.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead3;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;
.source "ArrowPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrowHead3"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;-><init>()V

    return-void
.end method


# virtual methods
.method protected doShapeSpecific(Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 488
    const/4 v2, 0x3

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p2

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1, p2, p3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void

    const/4 v0, 0x2
.end method
