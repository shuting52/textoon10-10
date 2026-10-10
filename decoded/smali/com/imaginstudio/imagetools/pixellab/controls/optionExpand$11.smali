.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;
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
.field oldFactor:F

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$scaleLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->val$scaleLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 565
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->oldFactor:F

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 568
    const/4 v1, 0x2

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->scaleObjects(I)I

    move-result p1

    int-to-float p1, p1

    .line 569
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->val$scaleLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    float-to-int p3, p1

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 571
    const/4 v1, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->oldFactor:F

    div-float v0, p1, v0

    invoke-virtual {p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->scaleObjects(Ljava/util/ArrayList;F)V

    .line 572
    const/4 v1, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;->oldFactor:F

    return-void

    const/4 v1, 0x1
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
