.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field private final arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field private final arg$3:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field private final arg$4:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field private final arg$5:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field private final arg$6:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$3:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$4:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$5:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$6:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 9

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$3:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$4:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$5:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;->arg$6:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$14$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V

    return-void

    const/4 v1, 0x1
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

    const/4 v0, 0x3

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener$$CC;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v0, 0x0
.end method
