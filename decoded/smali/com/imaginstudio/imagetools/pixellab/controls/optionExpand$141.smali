.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;


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

.field final synthetic val$currRemoveColorCT:Ljava/util/ArrayList;

.field final synthetic val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$toggleablePanel:Landroid/widget/LinearLayout;

.field final synthetic val$tolerance:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Ljava/util/ArrayList;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 2802
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$tolerance:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$toggleablePanel:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorPickPrompt:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedColor(I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2808
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->modifyCurrentColor(Ljava/util/ArrayList;I)V

    .line 2809
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    .line 2810
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrColor(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public pickColor()V
    .locals 7

    const/4 v6, 0x1

    .line 2815
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    if-eqz v0, :cond_0

    const/4 v6, 0x3

    .line 2816
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$toggleablePanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2817
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$removeColorSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setVisibility(I)V

    .line 2818
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorPickPrompt:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2819
    const/4 v6, 0x3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2820
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->colorPickerTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ColorPickerTool;->enable(Landroid/graphics/RectF;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    :cond_0
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public requestAdd()V
    .locals 5

    const/4 v4, 0x3

    .line 2826
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    const/4 v2, -0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2827
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    .line 2828
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrIndex(Ljava/util/ArrayList;I)V

    .line 2829
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->updateDisplayedTolerance()V

    return-void

    const/4 v0, 0x0
.end method

.method public requestNext()V
    .locals 4

    const/4 v3, 0x1

    .line 2844
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v3, 0x3

    .line 2845
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrIndex(Ljava/util/ArrayList;I)V

    .line 2846
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->updateDisplayedTolerance()V

    :cond_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public requestPrev()V
    .locals 4

    const/4 v3, 0x0

    .line 2852
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x2

    .line 2853
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrIndex(Ljava/util/ArrayList;I)V

    .line 2854
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->updateDisplayedTolerance()V

    :cond_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method public requestRemove()V
    .locals 5

    const/4 v4, 0x3

    .line 2834
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v4, 0x2

    .line 2835
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2836
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    .line 2837
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v1, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setCurrIndex(Ljava/util/ArrayList;I)V

    .line 2838
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->updateDisplayedTolerance()V

    :cond_0
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method updateDisplayedTolerance()V
    .locals 4

    const/4 v3, 0x1

    .line 2804
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$tolerance:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$currRemoveColorCT:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->getCurrIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->removeColorToleranceInverse(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    const/4 v1, 0x3
.end method
