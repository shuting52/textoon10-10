.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;
.super Ljava/lang/Object;
.source "customBezier.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->scale(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field final synthetic val$factorF:F


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;F)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->val$factorF:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOn(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 103
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getControlP1()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->val$factorF:F

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(Landroid/graphics/PointF;)V

    .line 104
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getControlP2()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->val$factorF:F

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(Landroid/graphics/PointF;)V

    .line 105
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$1;->val$factorF:F

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setPoint(Landroid/graphics/PointF;)V

    return-void

    const/4 v1, 0x3
.end method
