.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$bottomVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field final synthetic val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$toggleablePanel:Landroid/widget/LinearLayout;

.field final synthetic val$topVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 3622
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$toggleablePanel:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$topVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$bottomVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    .line 3626
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$toggleablePanel:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3627
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getFillType()I

    move-result v2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    .line 3628
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrColor()I

    move-result v3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    .line 3629
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v4

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3630
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v5, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3631
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v6, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$topVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3632
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v7, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$bottomVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3633
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v8, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 3634
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v9

    move v1, p2

    .line 3627
    invoke-virtual/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateBackground(ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    return-void

    const/4 v0, 0x2
.end method
