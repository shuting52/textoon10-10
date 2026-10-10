.class public Lcom/imaginstudio/imagetools/pixellab/GradientMaker;
.super Landroid/app/AlertDialog;
.source "GradientMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;,
        Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;
    }
.end annotation


# instance fields
.field dialogLayout:Landroid/view/View;

.field gradientControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

.field gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

.field gradientSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onGradientSelectedListener:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 53
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->onGradientSelectedListener:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;

    const p3, 0x7f0a001c

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    const p3, 0x104000a

    .line 57
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    .line 58
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->setView(Landroid/view/View;)V

    .line 60
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800f0

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    .line 61
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800ee

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    .line 62
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_type()I

    move-result p3

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->setDirection(I[I)V

    .line 63
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_colors()[I

    move-result-object p3

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_positions()[F

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->initializeColors([I[F)V

    .line 64
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    const p2, 0x7f0800ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    .line 65
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->connectSlider(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V

    .line 66
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->connectPreview(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;)V

    .line 67
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    const p2, 0x7f0800f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->fillWithGradientTypes(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;)Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 45
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->onGradientSelectedListener:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$OnGradientSelectedListener;

    return-object p0

    const/4 v0, 0x0
.end method

.method private addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 8

    const/4 v7, 0x0

    .line 82
    const/4 v7, 0x1

    invoke-static {p4, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$defaultDirections;->modifyGradientWith(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;I)V

    .line 83
    const/4 v7, 0x2

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 84
    const/4 v7, 0x3

    new-instance p4, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;

    invoke-direct {p4, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/GradientMaker;I)V

    invoke-virtual {v6, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const/4 v7, 0x0

    invoke-virtual {p2, v6, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v1, 0x3
.end method

.method private fillWithGradientTypes(Landroid/widget/LinearLayout;)V
    .locals 6

    const/4 v5, 0x2

    .line 70
    const/4 v5, 0x3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dpToPixels(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dpToPixels(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 71
    const/4 v5, 0x0

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dpToPixels(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v2, 0x11

    .line 72
    const/4 v5, 0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 73
    const/4 v5, 0x2

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v3, "#b3e5fc"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#01579b"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(II)V

    const/4 v3, 0x1

    .line 74
    const/4 v5, 0x3

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const/4 v3, 0x2

    .line 75
    const/4 v5, 0x0

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 76
    const/4 v5, 0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const/4 v1, 0x4

    .line 77
    const/4 v5, 0x2

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const/4 v1, 0x5

    .line 78
    const/4 v5, 0x3

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    const/4 v1, 0x6

    .line 79
    const/4 v5, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->addAGradientTypeButton(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x2

    .line 94
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x2

    .line 117
    const/4 v1, 0x3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void

    const/4 v1, 0x1
.end method
