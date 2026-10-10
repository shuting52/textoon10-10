.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;
.super Ljava/lang/Object;
.source "customBezier.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->rotate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field final synthetic val$relativeAngle:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOn(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 119
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getControlP1()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint1(Landroid/graphics/PointF;)V

    .line 120
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getControlP2()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setControlPoint2(Landroid/graphics/PointF;)V

    .line 121
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->getPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->center:Landroid/graphics/PointF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$2;->val$relativeAngle:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->setPoint(Landroid/graphics/PointF;)V

    return-void

    const/4 v1, 0x3
.end method
