.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;
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

.field final synthetic val$depthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$max3dDepthOblique:I

.field final synthetic val$max3dDepthPerspective:I

.field final synthetic val$old3dDepthFillType:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IIILcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 4448
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$old3dDepthFillType:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$max3dDepthOblique:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$max3dDepthPerspective:I

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$depthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4451
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$old3dDepthFillType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$max3dDepthOblique:I

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$max3dDepthPerspective:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toNum(II)I

    move-result p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4452
    const/4 v3, 0x1

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4453
    const/4 v3, 0x2

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDQuality()I

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    .line 4454
    const/4 v3, 0x3

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v2

    .line 4451
    const/4 v3, 0x0

    invoke-virtual {p1, p3, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepth(IIIZ)V

    .line 4455
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;->val$depthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    return-void

    const/4 v1, 0x3
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x3

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
