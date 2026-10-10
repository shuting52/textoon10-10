.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;
.super Ljava/lang/Object;
.source "BezierPanel.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setFill(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

.field final synthetic val$color:I

.field final synthetic val$gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$type:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$color:I

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 555
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$type:I

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$color:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/16 v0, 0xff

    .line 556
    const/4 v2, 0x3

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    .line 557
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$color:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_color(I)V

    .line 558
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 559
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->val$type:I

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->setFill_type(I)V

    .line 560
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method
