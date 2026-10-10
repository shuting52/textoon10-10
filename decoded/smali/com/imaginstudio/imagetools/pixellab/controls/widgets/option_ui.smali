.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;
.super Landroid/widget/RelativeLayout;
.source "option_ui.java"


# instance fields
.field public actionDo:I

.field iconShow:Landroid/widget/ImageButton;

.field labelShow:Landroid/widget/TextView;

.field square:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->square:Z

    .line 29
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-static {v1, v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->option_ui:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const p2, 0x7f08014b

    .line 31
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->iconShow:Landroid/widget/ImageButton;

    .line 33
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->iconShow:Landroid/widget/ImageButton;

    const-string v1, "#6f6f6f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    const p2, 0x7f08014c

    .line 34
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->labelShow:Landroid/widget/TextView;

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v1, 0x3

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->square:Z

    .line 37
    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->square:Z

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->iconShow:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 41
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->iconShow:Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p2, 0x2

    .line 42
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->labelShow:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 43
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->labelShow:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_1
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->actionDo:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 59
    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    const/4 v0, 0x0
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x2

    .line 52
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 54
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

.method public setActionEvent(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x2

    .line 62
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->iconShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setClickEnabled(Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 66
    const/4 v1, 0x1

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setAlpha(F)V

    .line 67
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->iconShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    const/4 v1, 0x1
.end method
