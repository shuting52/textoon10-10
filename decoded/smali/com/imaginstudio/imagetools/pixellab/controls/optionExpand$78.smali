.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;
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

.field final synthetic val$aspectRatioSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

.field final synthetic val$heightLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$widthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 1741
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$aspectRatioSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$heightLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$widthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    if-eqz p3, :cond_1

    const/4 v3, 0x3

    .line 1745
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 1746
    const/4 v3, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p3

    iget p3, p3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    .line 1747
    const/4 v3, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v1

    div-float p3, p2, p3

    mul-float p3, p3, p1

    .line 1749
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$aspectRatioSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    move p1, p3

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setDims(FF)V

    .line 1750
    const/4 v3, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1751
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$heightLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1752
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$aspectRatioSwitch:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->getState()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 1753
    const/4 v3, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    mul-float p3, p3, v0

    float-to-int p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1754
    const/4 v3, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 1755
    const/4 v3, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;->val$widthLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    :cond_1
    const/4 v3, 0x1

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
