.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;
.super Landroid/widget/LinearLayout;
.source "presets_holder.java"


# instance fields
.field layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field progress:Landroid/widget/ProgressBar;

.field space:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0a0053

    invoke-static {p1, v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f080047

    .line 25
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->space:Landroid/widget/LinearLayout;

    const p1, 0x7f080133

    .line 26
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->progress:Landroid/widget/ProgressBar;

    .line 27
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 29
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 30
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v1

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 31
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 32
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->dpToPixels(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void
.end method


# virtual methods
.method public addPreset(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 35
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->space:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v0, 0x2
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x0

    .line 45
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 46
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public hideProgress()V
    .locals 3

    const/4 v2, 0x0

    .line 39
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public removeAll()V
    .locals 2

    const/4 v1, 0x3

    .line 42
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->space:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    const/4 v1, 0x1
.end method

.method public startLoading()V
    .locals 3

    const/4 v2, 0x2

    .line 51
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method
