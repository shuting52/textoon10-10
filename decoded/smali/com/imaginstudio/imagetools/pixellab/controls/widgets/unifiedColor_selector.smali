.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;
.super Landroid/widget/LinearLayout;
.source "unifiedColor_selector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;
    }
.end annotation


# static fields
.field private static final LAST_USED_COLOR:Ljava/lang/String; = "last_colors"

.field private static final LAST_USED_GRADIENT:Ljava/lang/String; = "last_gradients"

.field public static TYPE_COLOR:I = 0x1

.field public static TYPE_GRADIENT:I = 0x2


# instance fields
.field colorsAdded:Z

.field currColor:I

.field currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field fillType:I

.field gradientsAdded:Z

.field private isAutomatic:Z

.field mColorListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

.field private showAutomatic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 21

    move-object/from16 v9, p0

    move/from16 v10, p3

    .line 84
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->colorsAdded:Z

    .line 39
    iput-boolean v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->gradientsAdded:Z

    .line 40
    iput-boolean v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    .line 41
    iput-boolean v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->showAutomatic:Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-static {v0, v1, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    iput v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    move/from16 v0, p4

    .line 87
    iput v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 88
    invoke-virtual/range {p5 .. p5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const v1, 0x7f08019b

    .line 89
    invoke-virtual {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const-string v1, "#e91e63"

    .line 90
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v11, v1, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    const/4 v12, 0x1

    .line 91
    invoke-virtual {v11, v12, v0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x28

    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v1

    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v0

    invoke-direct {v13, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 93
    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0xa

    .line 94
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v1

    iput v1, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 95
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->dpToPixels(I)I

    move-result v0

    iput v0, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const v0, 0x7f0800ae

    .line 96
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    const v0, 0x7f080121

    .line 97
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const v0, 0x7f0800af

    .line 98
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const v0, 0x7f080122

    .line 99
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f08008e

    .line 100
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const v0, 0x7f0800f3

    .line 101
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const v0, 0x7f080088

    .line 102
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v0, 0x7f0800ef

    .line 103
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RadioButton;

    .line 104
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;

    move-object v0, v2

    move-object v1, v9

    move-object v12, v2

    move-object v2, v4

    move-object v15, v3

    move-object v3, v5

    move-object/from16 v16, v4

    move-object v4, v14

    move-object/from16 v17, v14

    move-object v14, v5

    move-object v5, v13

    move-object/from16 v18, v6

    move-object v6, v8

    move-object/from16 v19, v7

    move-object/from16 v20, v14

    move-object v14, v8

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v12}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0800a8

    .line 134
    invoke-virtual {v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0800aa

    .line 135
    invoke-virtual {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 136
    sget v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 137
    sget v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 138
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;

    invoke-direct {v2, v9, v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;

    move-object/from16 v2, v18

    invoke-direct {v0, v9, v2, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    .line 194
    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v10, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v1, v20

    .line 200
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v1, v19

    .line 201
    invoke-virtual {v9, v1, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertDefaultGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 202
    invoke-virtual {v9, v2, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object v1, v15

    const/4 v2, 0x1

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v1, v16

    .line 195
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v1, v17

    .line 196
    invoke-virtual {v9, v1, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertDefaultColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 197
    invoke-virtual {v9, v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->insertLastUsedColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    :goto_2
    if-nez p2, :cond_3

    const v1, 0x7f08019a

    .line 206
    invoke-virtual {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 207
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 212
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 214
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public getCurrColor()I
    .locals 2

    const/4 v1, 0x3

    .line 229
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    return v0

    const/4 v1, 0x1
.end method

.method public getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x2

    .line 233
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getFillType()I
    .locals 2

    const/4 v1, 0x1

    .line 225
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    return v0

    const/4 v1, 0x1
.end method

.method public insertDefaultColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 10

    const/4 v9, 0x0

    .line 237
    const/4 v9, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->defaultColors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v9, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    .line 240
    const/4 v9, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v1

    goto :goto_1

    const/4 v9, 0x1

    :catch_0
    const/4 v6, -0x1

    .line 245
    const/4 v9, 0x2

    :goto_1
    const/4 v9, 0x3

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 246
    const/4 v9, 0x0

    invoke-virtual {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    const/4 v9, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    const/4 v9, 0x2

    :cond_0
    const/4 v9, 0x3

    const/4 p1, 0x1

    .line 249
    const/4 v9, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->colorsAdded:Z

    return-void

    const/4 v1, 0x1
.end method

.method public insertDefaultGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 10

    const/4 v9, 0x2

    .line 283
    const/4 v9, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->defaultGradients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v9, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 284
    const/4 v9, 0x2

    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v9, 0x3

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    :goto_1
    const/4 v9, 0x0

    move-object v6, v1

    goto :goto_2

    const/4 v9, 0x1

    :cond_0
    const/4 v9, 0x2

    const/4 v1, 0x0

    goto :goto_1

    const/4 v9, 0x3

    :goto_2
    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 285
    const/4 v9, 0x1

    invoke-virtual {v8, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const/4 v9, 0x2

    invoke-virtual {p1, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    const/4 v9, 0x3

    :cond_1
    const/4 v9, 0x0

    const/4 p1, 0x1

    .line 288
    const/4 v9, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->gradientsAdded:Z

    return-void

    const/4 v1, 0x1
.end method

.method public insertLastUsedColors(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 10

    const/4 v9, 0x3

    .line 252
    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 253
    const/4 v9, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "last_colors"

    .line 255
    const/4 v9, 0x2

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getListInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 256
    const/4 v9, 0x3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v9, 0x0

    .line 257
    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v9, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 258
    const/4 v9, 0x0

    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 259
    const/4 v9, 0x1

    invoke-virtual {v8, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const/4 v9, 0x2

    invoke-virtual {p1, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    const/4 v9, 0x3

    :cond_0
    const/4 v9, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public insertLastUsedGradients(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 10

    const/4 v9, 0x2

    .line 265
    const/4 v9, 0x3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 266
    const/4 v9, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "last_gradients"

    .line 268
    const/4 v9, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    const/4 v9, 0x2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v9, 0x3

    .line 270
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v9, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v9, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    const/4 v9, 0x3

    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v6, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 272
    const/4 v9, 0x0

    invoke-virtual {v8, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const/4 v9, 0x1

    invoke-virtual {p1, v8, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    const/4 v9, 0x2

    :cond_0
    const/4 v9, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public isAutomatic()Z
    .locals 2

    const/4 v1, 0x1

    .line 63
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    return v0

    const/4 v1, 0x1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    .line 49
    const/4 v2, 0x1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    .line 50
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getType()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    .line 51
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayColor()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    goto :goto_1

    const/4 v2, 0x2

    .line 53
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    .line 54
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    const/4 v2, 0x0

    :cond_1
    const/4 v2, 0x1

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 55
    const/4 v2, 0x3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->reportColorChange()V

    return-void

    const/4 v0, 0x2
.end method

.method public reportColorChange()V
    .locals 5

    const/4 v4, 0x3

    .line 278
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->mColorListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 279
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->mColorListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->fillType:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-interface {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;->colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_0
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public setIsAutomatic(Z)V
    .locals 2

    const/4 v1, 0x1

    .line 67
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    const v0, 0x7f080056

    .line 68
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 p1, 0x1

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->mColorListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;

    return-void

    const/4 v0, 0x0
.end method

.method public setParamsQuietly(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    const/4 v0, 0x3

    .line 218
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currColor:I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p2

    goto :goto_0

    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x0

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->currGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 220
    const/4 v0, 0x2

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 p3, 0x1

    if-ne p1, p2, :cond_1

    const/4 v0, 0x3

    const p1, 0x7f080088

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    const/4 v0, 0x0

    :cond_1
    const/4 v0, 0x1

    const p1, 0x7f0800ef

    .line 221
    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public setShowAutomatic(ZZ)V
    .locals 2

    const/4 v1, 0x1

    .line 75
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->showAutomatic:Z

    const p1, 0x7f080056

    .line 76
    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 80
    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 81
    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic:Z

    return-void

    const/4 v1, 0x1
.end method
