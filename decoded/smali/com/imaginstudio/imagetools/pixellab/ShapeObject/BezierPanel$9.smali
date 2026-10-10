.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;
.super Ljava/lang/Object;
.source "BezierPanel.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setStrokeWidth(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 570
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;->val$width:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setStroke_width(I)V

    const/4 v0, 0x1

    .line 571
    const/4 v2, 0x0

    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatedGeometry:Z

    .line 572
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method
