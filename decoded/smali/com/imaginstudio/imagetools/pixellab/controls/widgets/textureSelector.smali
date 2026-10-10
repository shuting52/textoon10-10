.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;
.super Landroid/widget/LinearLayout;
.source "textureSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;
    }
.end annotation


# instance fields
.field addHere:Landroid/widget/LinearLayout;

.field selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

.field textureDelete:Landroid/widget/ImageButton;

.field textureName:Landroid/widget/TextView;

.field textureSelect:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v3, p6

    .line 37
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 31
    iput-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a006a

    invoke-static {v4, v5, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    if-eqz v1, :cond_0

    mul-int/lit8 v4, p5, 0xa

    .line 39
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSizeShapeInverse(I)I

    move-result v4

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, p5, 0xa

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSizeInverse(I)I

    move-result v4

    .line 40
    :goto_0
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    .line 41
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, 0x7f0801f0

    .line 42
    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    const v5, 0x7f0801f1

    .line 43
    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureSelect:Landroid/widget/ImageButton;

    const v5, 0x7f0801ee

    .line 44
    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureDelete:Landroid/widget/ImageButton;

    .line 45
    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    .line 46
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;

    invoke-direct {v7, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v5, p3

    .line 52
    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setImagePath(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    .line 53
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c012a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0c0115

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 55
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;

    invoke-direct {v10, v0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    move/from16 v11, p4

    invoke-direct {v8, v9, v11, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0c0034

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    mul-int/lit8 v15, p5, 0xa

    const/16 v16, 0x2

    move-object v11, v9

    invoke-direct/range {v11 .. v16}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 64
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x11

    invoke-direct {v2, v10, v6, v11, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    const/4 v4, 0x0

    .line 65
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    .line 66
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 70
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v4, 0x7f080094

    .line 71
    invoke-virtual {v0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;

    invoke-direct {v4, v0, v1, v9, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;ZLcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method


# virtual methods
.method public setDeleteTextureOnClick(Landroid/view/View$OnClickListener;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 97
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setImagePath(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V
    .locals 4

    const/4 v3, 0x3

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 108
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c016f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    const/4 v3, 0x3

    .line 111
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c016e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->toggleDeleteButton(Z)V

    return-void

    const/4 v1, 0x3
.end method

.method public setNewTextureOnClick(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x1

    .line 94
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public toggleDeleteButton(Z)V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f0801ef

    .line 100
    const/4 v4, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    const/4 v3, 0x0

    goto :goto_0

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 101
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureDelete:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_1

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    const/16 v3, 0x8

    :goto_1
    const/4 v4, 0x3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 103
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->addHere:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    const/4 v1, 0x0

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    const/4 v0, 0x0
.end method
