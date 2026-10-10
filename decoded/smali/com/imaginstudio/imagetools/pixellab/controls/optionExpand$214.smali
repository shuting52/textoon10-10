.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;
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

.field final synthetic val$spacingLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 3975
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;->val$spacingLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3978
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;->val$spacingLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 3979
    const/4 v0, 0x0

    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLetterSpacing(I)V

    :cond_0
    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 2

    const/4 v1, 0x2

    .line 3983
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLetterSpacing(I)V

    return-void

    const/4 v1, 0x1
.end method
