.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;
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

.field final synthetic val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field final synthetic val$toggleablePanel:Landroid/widget/LinearLayout;

.field final synthetic val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V
    .locals 0

    .line 4882
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$toggleablePanel:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4886
    const/4 v6, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$toggleablePanel:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    const/4 v0, 0x0

    goto :goto_0

    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    const/16 v0, 0x8

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4887
    const/4 v6, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getFillType()I

    move-result v3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrColor()I

    move-result v4

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v5

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setStroke(ZFIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    return-void

    const/4 v0, 0x2
.end method
