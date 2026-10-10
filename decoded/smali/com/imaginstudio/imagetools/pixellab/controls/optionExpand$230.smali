.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;
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

.field final synthetic val$dxVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$dyVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$shadowSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 4176
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$shadowSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$dxVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$dyVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4179
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$shadowSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result v1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$radiusVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p1

    int-to-float v3, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$dxVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v4

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->val$dyVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v5

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowColor()I

    move-result v6

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadow(ZZFIII)V

    return-void

    const/4 v1, 0x3
.end method
