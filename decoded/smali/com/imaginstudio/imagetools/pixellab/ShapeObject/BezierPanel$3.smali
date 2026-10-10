.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;
.super Ljava/lang/Object;
.source "BezierPanel.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOnSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 220
    const/4 v4, 0x3

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->doDefaultPreset(Landroid/graphics/PointF;F)V

    return-void

    const/4 v0, 0x0
.end method
