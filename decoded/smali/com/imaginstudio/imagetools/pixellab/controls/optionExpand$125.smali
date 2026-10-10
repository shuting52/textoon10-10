.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;
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

.field final synthetic val$strokeSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 2516
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;->val$strokeSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2519
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;->val$strokeSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    invoke-virtual {p1, p3, v0, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setStroke(ZII)V

    return-void

    const/4 v1, 0x1
.end method
