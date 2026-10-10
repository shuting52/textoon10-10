.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;
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

.field final synthetic val$bgEnableSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$bottomVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$topVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 3721
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$bgEnableSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$topVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$bottomVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 11

    .line 3724
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$bgEnableSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result v2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3728
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3729
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$topVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3730
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    int-to-float v8, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$bottomVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3731
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    int-to-float v9, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3732
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v10

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 3724
    invoke-virtual/range {v1 .. v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateBackground(ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    return-void

    const/4 v1, 0x3
.end method
