.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


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

.field final synthetic val$strokeSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$widthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 2504
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->val$strokeSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->val$widthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2508
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->val$strokeSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrColor()I

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setStroke(ZII)V

    .line 2510
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;->val$widthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method
