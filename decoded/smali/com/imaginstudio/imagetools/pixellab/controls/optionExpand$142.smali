.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;
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

.field final synthetic val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

.field final synthetic val$currRemoveColorCT:Ljava/util/ArrayList;

.field final synthetic val$toleranceLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Ljava/util/ArrayList;)V
    .locals 0

    .line 2860
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->val$toleranceLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->val$currRemoveColorCT:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2863
    const/4 v2, 0x1

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->removeColorTolerance(I)I

    move-result p1

    .line 2864
    const/4 v2, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->val$toleranceLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p3, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 2865
    const/4 v2, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->val$colorTools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->val$currRemoveColorCT:Ljava/util/ArrayList;

    mul-int/lit8 p1, p1, 0xa

    invoke-virtual {p3, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->modifyCurrentTolerance(Ljava/util/ArrayList;I)V

    const-string p3, "RemoveColor"

    .line 2866
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slider val : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", sent : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->fullRedraw()V

    return-void

    const/4 v0, 0x2
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
