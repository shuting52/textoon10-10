.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;
.super Ljava/lang/Object;
.source "customBezier.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dragCurrent(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field final synthetic val$finalDx:F

.field final synthetic val$finalDy:F


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;FF)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDx:F

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDy:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOn(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 252
    const/4 v2, 0x0

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDx:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    .line 253
    const/4 v2, 0x1

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDx:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    .line 254
    const/4 v2, 0x2

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDx:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    .line 255
    const/4 v2, 0x3

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDy:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    .line 256
    const/4 v2, 0x0

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDy:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    .line 257
    const/4 v2, 0x1

    iget v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$4;->val$finalDy:F

    add-float/2addr v0, v1

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    return-void

    const/4 v0, 0x2
.end method
