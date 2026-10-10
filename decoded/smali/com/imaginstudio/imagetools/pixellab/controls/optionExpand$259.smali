.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;
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

.field final synthetic val$ambientLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 4694
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->val$ambientLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 7

    .line 4697
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4698
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4699
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4701
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v5

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4702
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v6

    move v4, p2

    .line 4697
    invoke-virtual/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setEmboss(ZIIIII)V

    .line 4703
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;->val$ambientLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    return-void

    const/4 v1, 0x3
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method
