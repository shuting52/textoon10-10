.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;
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

.field final synthetic val$leftLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 3437
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->val$leftLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3440
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->val$leftLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 3441
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->val$leftVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result p2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;->val$rightVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setInPadding(II)V

    return-void

    const/4 v1, 0x1
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method
