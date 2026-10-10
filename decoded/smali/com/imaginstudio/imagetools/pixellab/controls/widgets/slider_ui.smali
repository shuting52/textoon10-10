.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;
.super Landroid/widget/LinearLayout;
.source "slider_ui.java"


# instance fields
.field minus:Landroid/widget/ImageButton;

.field plus:Landroid/widget/ImageButton;

.field seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

.field private step:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->step:I

    .line 30
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->init()V

    .line 31
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMax(I)V

    .line 32
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMin(I)V

    .line 33
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {p1, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->step:I

    .line 22
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)I
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 14
    const/4 v0, 0x0

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->step:I

    return p0

    const/4 v0, 0x0
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x2

    .line 42
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0062

    invoke-static {v0, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080257

    .line 43
    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->plus:Landroid/widget/ImageButton;

    const v0, 0x7f080256

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->minus:Landroid/widget/ImageButton;

    const v0, 0x7f080198

    .line 45
    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    .line 46
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->plus:Landroid/widget/ImageButton;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 47
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->minus:Landroid/widget/ImageButton;

    sget v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 48
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->plus:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->minus:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 60
    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public getBarValue()I
    .locals 2

    const/4 v1, 0x1

    .line 87
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getMax()I
    .locals 2

    const/4 v1, 0x0

    .line 36
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getMax()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getMin()I
    .locals 2

    const/4 v1, 0x3

    .line 39
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getMin()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public setBarMax(I)V
    .locals 2

    const/4 v1, 0x2

    .line 72
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMax(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public setBarMin(I)V
    .locals 2

    const/4 v1, 0x1

    .line 75
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMax(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public setBarValue(I)V
    .locals 2

    const/4 v1, 0x0

    .line 66
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public setNotifyButtonAsStopTrack(Z)V
    .locals 2

    const/4 v1, 0x3

    .line 81
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setNotifyButtonAsStopTrack(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V
    .locals 2

    const/4 v1, 0x2

    .line 78
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setOnProgressChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setStep(I)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->step:I

    return-void

    const/4 v0, 0x0
.end method

.method public setValueFromUser(I)V
    .locals 2

    const/4 v1, 0x0

    .line 69
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgressAsIfTheUserHadDoneSo(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public toggleBubble(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x3

    .line 63
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->seekBar:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setBubbleEnabled(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method toggleStepControls(Z)V
    .locals 5

    const/4 v4, 0x2

    .line 25
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->plus:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_0

    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    const/16 v3, 0x8

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 26
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->minus:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    const/4 v1, 0x0

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    const/4 v0, 0x0
.end method
