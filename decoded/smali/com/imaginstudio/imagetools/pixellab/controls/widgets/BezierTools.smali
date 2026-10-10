.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;
.super Landroid/widget/LinearLayout;
.source "BezierTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;
    }
.end annotation


# instance fields
.field bezierMode:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

.field capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

.field closePathButton:Landroid/view/View;

.field currBezier:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field divideButton:Landroid/view/View;

.field fillOptions:Landroid/view/View;

.field fill_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

.field maskMode:Z

.field navigationOptions:Landroid/view/ViewGroup;

.field oldScroll:I

.field openPathButton:Landroid/view/View;

.field primaryOptions:Landroid/view/ViewGroup;

.field removePButton:Landroid/view/View;

.field rotButton:Landroid/view/View;

.field rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field rotateOptions:Landroid/widget/LinearLayout;

.field scaleButton:Landroid/view/View;

.field scaleOptions:Landroid/widget/LinearLayout;

.field scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field secondaryOptions:Landroid/view/ViewGroup;

.field strokeOptions:Landroid/view/View;

.field stroke_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field stroke_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field stroke_width:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V
    .locals 10

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I

    .line 121
    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    const v1, 0x7f0a0021

    .line 122
    invoke-static {p1, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 123
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    .line 124
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    const v2, 0x7f050024

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    .line 125
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->disableStroke()V

    .line 126
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->toggleNumberView(Z)V

    const v1, 0x7f080061

    .line 127
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f080138

    .line 128
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0054

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f08003e

    .line 129
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f08005c

    .line 130
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    const/4 p1, 0x3

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    new-array v4, v1, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    new-array v4, p1, [I

    fill-array-data v4, :array_1

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;

    invoke-direct {v4, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    const v3, 0x7f08006d

    const v4, 0x7f080065

    if-nez p3, :cond_1

    .line 146
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addFillOptions(Landroid/widget/LinearLayout;)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addStrokeOptions(Landroid/widget/LinearLayout;)V

    :cond_1
    const v5, 0x7f08006e

    .line 149
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    const v5, 0x7f080062

    .line 150
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    if-eqz p3, :cond_2

    .line 151
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    :cond_2
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fillOptions:Landroid/view/View;

    .line 153
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->strokeOptions:Landroid/view/View;

    const p3, 0x7f080067

    .line 154
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->navigationOptions:Landroid/view/ViewGroup;

    const p3, 0x7f080066

    .line 155
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->removePButton:Landroid/view/View;

    const p3, 0x7f080063

    .line 156
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->divideButton:Landroid/view/View;

    const p3, 0x7f08006c

    .line 157
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleButton:Landroid/view/View;

    const p3, 0x7f08006b

    .line 158
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotButton:Landroid/view/View;

    .line 159
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->navigationOptions:Landroid/view/ViewGroup;

    const/4 v3, 0x6

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->removePButton:Landroid/view/View;

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->divideButton:Landroid/view/View;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    aput-object v0, v3, p1

    const/4 p1, 0x4

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleButton:Landroid/view/View;

    aput-object v0, v3, p1

    const/4 p1, 0x5

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotButton:Landroid/view/View;

    aput-object v0, v3, p1

    invoke-direct {p0, p3, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addButtonsListeners(Landroid/view/ViewGroup;[Landroid/view/View;)V

    const p1, 0x7f08005a

    .line 160
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const p3, 0x7f080059

    .line 161
    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 162
    sget v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 163
    sget v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 165
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;

    invoke-direct {v0, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;

    invoke-direct {p1, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V

    invoke-virtual {p3, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08005b

    .line 185
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    const p1, 0x7f08005f

    .line 186
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    const p1, 0x7f08005d

    .line 188
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    const p1, 0x7f08005e

    .line 189
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    return-void

    :array_0
    .array-data 4
        0x7f0700e9
        0x7f07013c
    .end array-data

    :array_1
    .array-data 4
        0x7f07005c
        0x7f0700e9
        0x7f07013c
    .end array-data
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 32
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->restoreScroll()V

    return-void

    const/4 v0, 0x0
.end method

.method private varargs addButtonsListeners(Landroid/view/ViewGroup;[Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 194
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x3

    .line 195
    const/4 v3, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 196
    const/4 v3, 0x2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v3, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x0

    .line 199
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    array-length p1, p2

    :goto_1
    const/4 v3, 0x3

    if-ge v0, p1, :cond_2

    const/4 v3, 0x0

    aget-object v1, p2, v0

    .line 200
    const/4 v3, 0x1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method private addFillOptions(Landroid/widget/LinearLayout;)V
    .locals 14

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0080

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 299
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 300
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v13}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    const/4 v10, 0x1

    const/4 v12, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    .line 301
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$5;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$6;

    invoke-direct {v1, p0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 327
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c00d2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    const/4 v0, 0x2
.end method

.method private addRotOptions(Landroid/widget/LinearLayout;)V
    .locals 9

    const/4 v8, 0x2

    .line 362
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    .line 363
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    .line 366
    const/4 v8, 0x2

    :cond_0
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 367
    const/4 v8, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c008a

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 368
    const/4 v8, 0x1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, -0xb4

    const/16 v5, 0xb4

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 369
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;

    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 386
    const/4 v8, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    const/4 v0, 0x0
.end method

.method private addScaleOptions(Landroid/widget/LinearLayout;)V
    .locals 9

    const/4 v8, 0x2

    .line 333
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/16 v1, 0x2d

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    .line 334
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    .line 337
    const/4 v8, 0x2

    :cond_0
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 338
    const/4 v8, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c0034

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v7, 0x2

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 339
    const/4 v8, 0x1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x5f

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 340
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$7;

    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 358
    const/4 v8, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    const/4 v0, 0x0
.end method

.method private addStrokeOptions(Landroid/widget/LinearLayout;)V
    .locals 14

    const/4 v0, 0x0

    .line 390
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0124

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 392
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    sget v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->defaultStrokeWidth:I

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 393
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0080

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/16 v12, 0x64

    const/4 v13, 0x2

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 394
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x64

    invoke-direct {v2, v3, v0, v4, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 395
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v13}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    const/4 v10, 0x1

    const/4 v12, -0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    .line 396
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$9;

    invoke-direct {v2, p0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$9;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 414
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$10;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$10;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 422
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;

    invoke-direct {v2, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 440
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    .line 441
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    .line 442
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    .line 448
    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 449
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 450
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 451
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0xa

    .line 452
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 453
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 456
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0c0169

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x7f07018a
        0x7f07007b
        0x7f0701a0
    .end array-data

    const/4 v0, 0x2
.end method

.method private restoreScroll()V
    .locals 3

    const/4 v2, 0x3

    .line 269
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x1

    .line 273
    const/4 v2, 0x2

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v2, 0x3

    :catch_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    return-void

    .line 280
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v0, 0x2
.end method

.method private saveScroll()V
    .locals 2

    const/4 v1, 0x1

    .line 257
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x3

    .line 260
    const/4 v1, 0x0

    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->oldScroll:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x3

    .line 206
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    return-void

    .line 207
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    const/4 v2, 0x0

    .line 233
    const/4 v2, 0x1

    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->openSelected()V

    goto/16 :goto_0

    const/4 v2, 0x2

    .line 236
    const/4 v2, 0x3

    :pswitch_2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->saveScroll()V

    .line 237
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 239
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 240
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 241
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addScaleOptions(Landroid/widget/LinearLayout;)V

    goto :goto_0

    const/4 v2, 0x1

    .line 244
    const/4 v2, 0x2

    :pswitch_3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->saveScroll()V

    .line 245
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->primaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->secondaryOptions:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 249
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotateOptions:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addRotOptions(Landroid/widget/LinearLayout;)V

    goto :goto_0

    const/4 v2, 0x0

    .line 218
    const/4 v2, 0x1

    :pswitch_4
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->removeSelectedBezier()V

    goto :goto_0

    const/4 v2, 0x2

    .line 215
    const/4 v2, 0x3

    :pswitch_5
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->selectPrevBezier()V

    goto :goto_0

    const/4 v2, 0x0

    .line 212
    const/4 v2, 0x1

    :pswitch_6
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->selectNextBezier()V

    goto :goto_0

    const/4 v2, 0x2

    .line 224
    const/4 v2, 0x3

    :pswitch_7
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->removeSelectedPoint()V

    goto :goto_0

    const/4 v2, 0x0

    .line 221
    const/4 v2, 0x1

    :pswitch_8
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->copySelected()V

    goto :goto_0

    const/4 v2, 0x2

    .line 227
    const/4 v2, 0x3

    :pswitch_9
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->divideNext()V

    goto :goto_0

    const/4 v2, 0x0

    .line 230
    const/4 v2, 0x1

    :pswitch_a
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->closeSelected()V

    goto :goto_0

    const/4 v2, 0x2

    .line 209
    const/4 v2, 0x3

    :pswitch_b
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->addNew()V

    :goto_0
    const/4 v2, 0x0

    return-void

    :pswitch_data_0
    .packed-switch 0x7f080060
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v0, 0x2
.end method

.method public setMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V
    .locals 3

    const/4 v2, 0x2

    .line 79
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->bezierMode:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v1, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v1, :cond_1

    const/4 v2, 0x3

    const/4 v1, 0x1

    goto :goto_0

    const/4 v2, 0x0

    :cond_1
    const/4 v2, 0x1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    .line 80
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setCurrMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    :cond_2
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public updateActionsVisibility(IZZZ)V
    .locals 4

    const/4 v3, 0x3

    .line 71
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->divideButton:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p4, :cond_1

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 v3, 0x2

    if-eqz p3, :cond_1

    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    const/4 p2, 0x0

    goto :goto_0

    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    const/16 p2, 0x8

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const/4 v3, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotButton:Landroid/view/View;

    const/4 p4, 0x1

    if-le p1, p4, :cond_2

    const/4 v3, 0x1

    const/4 v0, 0x0

    goto :goto_1

    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    const/16 v0, 0x8

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const/4 v3, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleButton:Landroid/view/View;

    if-le p1, p4, :cond_3

    const/4 v3, 0x2

    const/4 v0, 0x0

    goto :goto_2

    const/4 v3, 0x3

    :cond_3
    const/4 v3, 0x0

    const/16 v0, 0x8

    :goto_2
    const/4 v3, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const/4 v3, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    if-le p1, p4, :cond_4

    const/4 v3, 0x3

    if-nez p3, :cond_4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_4

    const/4 v3, 0x1

    const/4 v0, 0x0

    goto :goto_3

    const/4 v3, 0x2

    :cond_4
    const/4 v3, 0x3

    const/16 v0, 0x8

    :goto_3
    const/4 v3, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const/4 v3, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    if-le p1, p4, :cond_5

    const/4 v3, 0x2

    if-eqz p3, :cond_5

    const/4 v3, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez p1, :cond_5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :cond_5
    const/4 v3, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const/4 v1, 0x3
.end method

.method public updateFor(ILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x3

    if-ltz p1, :cond_e

    const/4 v8, 0x0

    .line 40
    const/4 v8, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    const/4 v8, 0x2

    goto/16 :goto_3

    const/4 v8, 0x3

    .line 41
    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 42
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->currBezier:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setNumberToView(I)V

    .line 43
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->openPathButton:Landroid/view/View;

    iget-object v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    const/4 v8, 0x0

    iget-boolean v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_1

    const/4 v8, 0x2

    const/4 v0, 0x0

    goto :goto_0

    const/4 v8, 0x3

    :cond_1
    const/4 v8, 0x0

    const/16 v0, 0x8

    :goto_0
    const/4 v8, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->closePathButton:Landroid/view/View;

    iget-object v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v0

    if-le v0, v1, :cond_2

    const/4 v8, 0x3

    iget-boolean v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-nez v0, :cond_2

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_2

    const/4 v8, 0x1

    const/4 v0, 0x0

    goto :goto_1

    const/4 v8, 0x2

    :cond_2
    const/4 v8, 0x3

    const/16 v0, 0x8

    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fillOptions:Landroid/view/View;

    iget-boolean v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_3

    const/4 v8, 0x2

    const/4 v2, 0x0

    :cond_3
    const/4 v8, 0x3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    .line 47
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fillOptions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v4, 0x437f0000    # 255.0f

    if-nez v0, :cond_5

    const/4 v8, 0x2

    .line 48
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    if-eqz v0, :cond_4

    const/4 v8, 0x0

    .line 49
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v6

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 50
    const/4 v8, 0x2

    :cond_4
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    .line 51
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->fill_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget v5, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->fillAlpha:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    mul-float v5, v5, v2

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 53
    const/4 v8, 0x2

    :cond_5
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->strokeOptions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v8, 0x0

    .line 54
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    if-eqz v0, :cond_6

    const/4 v8, 0x2

    .line 55
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v6

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    invoke-virtual {v0, v5, v6, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setParamsQuietly(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 56
    const/4 v8, 0x0

    :cond_6
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_7

    const/4 v8, 0x2

    .line 57
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_opacity:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget v0, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 58
    const/4 v8, 0x0

    :cond_7
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_8

    const/4 v8, 0x2

    .line 59
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->stroke_width:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 61
    const/4 v8, 0x0

    :cond_8
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    if-eqz p1, :cond_b

    const/4 v8, 0x2

    .line 62
    const/4 v8, 0x3

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getFillOptions()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object p1

    .line 63
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->capSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    if-ne p1, v2, :cond_9

    const/4 v8, 0x1

    const/4 v1, 0x2

    goto :goto_2

    const/4 v8, 0x2

    :cond_9
    const/4 v8, 0x3

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne p1, v2, :cond_a

    const/4 v8, 0x0

    goto :goto_2

    const/4 v8, 0x1

    :cond_a
    const/4 v8, 0x2

    const/4 v1, 0x0

    :goto_2
    const/4 v8, 0x3

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    .line 66
    const/4 v8, 0x0

    :cond_b
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_c

    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->scaleSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCurrScale()I

    move-result v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->scaleBezierInverse(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 67
    const/4 v8, 0x3

    :cond_c
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    if-eqz p1, :cond_d

    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->rotSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCurrRot()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    :cond_d
    const/4 v8, 0x2

    return-void

    :cond_e
    const/4 v8, 0x3

    :goto_3
    const/4 v8, 0x0

    return-void

    const/4 v0, 0x0
.end method
