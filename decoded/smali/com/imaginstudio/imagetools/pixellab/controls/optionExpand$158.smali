.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;
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

.field final synthetic val$dxVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$dyVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$shadowSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 3097
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$shadowSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$dxVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$dyVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3100
    const/4 v6, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$shadowSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result v1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$dxVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;->val$dyVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setInnerShadow(ZIIII)V

    return-void

    const/4 v0, 0x2
.end method
