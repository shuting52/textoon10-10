.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;->val$fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1125
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setFill(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1126
    const/4 v1, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;->val$fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x2

    const/16 p1, 0x64

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3ec8c8c9

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p3, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    const/4 v1, 0x1
.end method
