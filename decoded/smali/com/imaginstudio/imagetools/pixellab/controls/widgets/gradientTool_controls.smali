.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;
.super Landroid/widget/LinearLayout;
.source "gradientTool_controls.java"


# instance fields
.field currentColorControl:Landroid/widget/ImageButton;

.field sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0a0039

    invoke-static {p1, p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0801a8

    .line 33
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0801a9

    .line 34
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080044

    .line 35
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08017b

    .line 36
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0800e4

    .line 37
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 40
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 41
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x3

    .line 42
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 43
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->dpToPixels(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const v3, 0x7f0801a5

    .line 45
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->currentColorControl:Landroid/widget/ImageButton;

    .line 46
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->currentColorControl:Landroid/widget/ImageButton;

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;

    invoke-direct {v4, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$2;

    invoke-direct {v3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$3;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$5;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$6;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 19
    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->changeCurrentColor(I)V

    return-void

    const/4 v0, 0x0
.end method

.method private changeCurrentColor(I)V
    .locals 2

    const/4 v1, 0x1

    .line 118
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setColor(I)V

    .line 120
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientColorsChanged()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method private changeCurrentPosition(I)V
    .locals 2

    const/4 v1, 0x1

    .line 124
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 125
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->setCurrentColorPosition(I)V

    .line 126
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public connectSlider(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    .line 109
    const/4 v0, 0x3

    invoke-virtual {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->connectControls(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V

    return-void

    const/4 v0, 0x0
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x1

    .line 130
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 131
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public selectionChanged()V
    .locals 2

    const/4 v1, 0x1

    .line 112
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method
