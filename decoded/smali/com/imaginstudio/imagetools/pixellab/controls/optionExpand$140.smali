.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$colorPickPrompt:Landroid/widget/LinearLayout;

.field final synthetic val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

.field final synthetic val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$toggleablePanel:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 2787
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$toggleablePanel:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$colorPickPrompt:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2790
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->getPickedColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrColor(I)V

    .line 2791
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$toggleablePanel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    const/16 v0, 0x8

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2792
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setVisibility(I)V

    .line 2793
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->val$colorPickPrompt:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2794
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->disable()V

    return-void

    const/4 v1, 0x3
.end method
