.class public Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
.super Landroid/support/v4/app/Fragment;
.source "optionExpand.java"


# static fields
.field static final STICKER_TYPE_EMOJI:I = 0x2

.field static final STICKER_TYPE_PRO:I = 0x4

.field static final STICKER_TYPE_STICKER:I = 0x1


# instance fields
.field private callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field cancelAbility:Landroid/widget/ImageButton;

.field cancelAction:Ljava/lang/Runnable;

.field cancelButtonListener:Landroid/view/View$OnClickListener;

.field cancelled:Z

.field controlsLayout:Landroid/widget/LinearLayout;

.field currentStickersJob:I

.field doneAbility:Landroid/widget/ImageButton;

.field doneButtonListener:Landroid/view/View$OnClickListener;

.field newShapeSize:I

.field positiveAction:Ljava/lang/Runnable;

.field references:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resetAbility:Landroid/widget/ImageButton;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    const/4 v0, 0x1

    .line 108
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getTextContainer()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    .locals 1

    const/4 v0, 0x2

    .line 91
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 1

    const/4 v0, 0x1

    .line 91
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 1

    const/4 v0, 0x0

    .line 91
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method private addControlsForMessage(I)V
    .locals 280

    move-object/from16 v15, p0

    move/from16 v14, p1

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    .line 475
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v1, :cond_6b

    .line 476
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v1, :cond_6b

    .line 477
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/16 v10, 0x11

    const/16 v7, 0x8

    const/16 v6, 0x32

    const/4 v5, 0x5

    const v4, 0x7f070189

    const/4 v3, -0x2

    if-ne v0, v1, :cond_3

    .line 478
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v0, 0x4a

    if-ne v14, v0, :cond_0

    .line 480
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 481
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 482
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 483
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    invoke-direct {v12, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 484
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 485
    new-instance v11, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 486
    new-instance v9, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v9, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 488
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 489
    new-instance v8, Landroid/widget/ImageButton;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    sget v13, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v2, v13}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 497
    sget v13, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 498
    sget v13, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 499
    sget v13, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 500
    sget v13, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 501
    sget v13, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v3, v13}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v4, 0x7f070064

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f070066

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f070067

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f070060

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f070062

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v13, 0x7f070068

    invoke-virtual {v4, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 510
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$5;

    invoke-direct {v4, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$6;

    invoke-direct {v4, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v11, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$7;

    invoke-direct {v4, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$8;

    invoke-direct {v4, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$9;

    invoke-direct {v4, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$9;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$10;

    invoke-direct {v4, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$10;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 548
    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    iput v4, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 549
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x7

    .line 550
    invoke-virtual {v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    iput v13, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 551
    invoke-virtual {v0, v2, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 552
    invoke-virtual {v0, v11, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 553
    invoke-virtual {v0, v9, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 554
    invoke-virtual {v1, v6, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 555
    invoke-virtual {v1, v3, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 556
    invoke-virtual {v1, v8, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 558
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x46

    if-ne v14, v0, :cond_1

    .line 562
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x6

    const/16 v4, 0x14

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 563
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c008c

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    const/16 v35, 0x64

    const/16 v36, 0x2

    move-object/from16 v31, v0

    invoke-direct/range {v31 .. v36}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 564
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$11;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 575
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x49

    if-ne v14, v0, :cond_2

    .line 579
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 581
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 582
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x32

    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 583
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 584
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 585
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 586
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070189

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 593
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 594
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 595
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700a9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0700cf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070091

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 601
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v32

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c0116

    invoke-virtual {v9, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    const/4 v9, 0x3

    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v35

    const/16 v36, 0x5

    move-object/from16 v31, v8

    invoke-direct/range {v31 .. v36}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 602
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    const/4 v12, 0x1

    invoke-direct {v9, v11, v12, v13, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 603
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$12;

    invoke-direct {v10, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$12;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v9, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 612
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;

    invoke-direct {v10, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$14;

    invoke-direct {v10, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$14;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$15;

    invoke-direct {v10, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$15;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$16;

    invoke-direct {v10, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$16;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 638
    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v10, 0x11

    .line 639
    iput v10, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v10, 0x7

    .line 640
    invoke-virtual {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 641
    invoke-virtual {v0, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 642
    invoke-virtual {v0, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 643
    invoke-virtual {v0, v6, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 644
    invoke-virtual {v0, v7, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 645
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 646
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x44

    if-ne v14, v0, :cond_3

    .line 651
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/4 v3, 0x0

    const/16 v4, 0xb4

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 652
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0108

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 654
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$17;

    invoke-direct {v2, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$17;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 665
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 669
    :cond_3
    :goto_0
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    const/16 v13, 0x64

    if-eqz v0, :cond_6

    const/16 v0, 0x35

    if-ne v14, v0, :cond_4

    .line 672
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getBrightness()I

    move-result v0

    .line 673
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0x64

    invoke-direct {v1, v2, v3, v13, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 674
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c00a7

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 676
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$18;

    invoke-direct {v3, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$18;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 684
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 685
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$19;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$19;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 693
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 694
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$20;

    invoke-direct {v2, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$20;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x36

    if-ne v14, v0, :cond_5

    .line 703
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContrast()I

    move-result v0

    .line 704
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v13, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 705
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c00a8

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 707
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$21;

    invoke-direct {v3, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$21;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 718
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 719
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$22;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$22;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 728
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 729
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$23;

    invoke-direct {v2, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$23;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    const/16 v0, 0x38

    if-ne v14, v0, :cond_6

    .line 738
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getSaturation()I

    move-result v0

    .line 739
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0x64

    invoke-direct {v1, v2, v3, v13, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 740
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c00aa

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 742
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$24;

    invoke-direct {v3, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$24;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 754
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 755
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 757
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$25;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$25;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 763
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 764
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$26;

    invoke-direct {v2, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$26;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const/16 v0, 0x37

    if-ne v14, v0, :cond_7

    .line 774
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getHue()I

    move-result v0

    .line 775
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0xb4

    const/16 v4, 0xb4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 776
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c00a9

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object v6, v2

    move v10, v0

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 778
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$0;

    invoke-direct {v3, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$0;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 783
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 784
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 786
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$27;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$27;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 792
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 793
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$28;

    invoke-direct {v2, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$28;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const/16 v0, 0x28

    if-ne v14, v0, :cond_a

    .line 801
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVisibility()I

    move-result v0

    .line 802
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    .line 803
    :goto_2
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColor()I

    move-result v2

    .line 804
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->vignetteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getVignetteColorAlpha()I

    move-result v3

    .line 806
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_9

    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    const/16 v6, 0x8

    .line 807
    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v6, 0x1

    .line 808
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 810
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    sget v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v11, 0x0

    move-object v6, v12

    move v10, v2

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 812
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$29;

    invoke-direct {v7, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$29;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v11, v6, v1, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 821
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$30;

    invoke-direct {v1, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$30;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v12, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 827
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f0c0109

    invoke-virtual {v6, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/16 v16, 0x3

    move-object v6, v1

    move v10, v3

    move-object v5, v11

    move/from16 v11, v16

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 829
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x1e

    const/16 v9, 0xff

    invoke-direct {v6, v7, v8, v9, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 830
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$31;

    invoke-direct {v7, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$31;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 838
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 840
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x7

    .line 841
    invoke-virtual {v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 842
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 844
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 845
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 847
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$32;

    invoke-direct {v1, v15, v3, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$32;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_8

    :cond_a
    const/16 v0, 0x29

    if-ne v14, v0, :cond_d

    .line 857
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getVisibility()I

    move-result v0

    .line 858
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 859
    :goto_4
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getEffectAlpha()I

    move-result v2

    .line 860
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->getNumberToRepeat()I

    move-result v10

    .line 862
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_c

    const/4 v3, 0x0

    goto :goto_5

    :cond_c
    const/16 v3, 0x8

    .line 863
    :goto_5
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    .line 864
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 867
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;

    invoke-direct {v4, v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v12, v3, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 876
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0109

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x3

    move-object v3, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 877
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f0c010f

    invoke-virtual {v4, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x3

    move-object v4, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 879
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-direct {v4, v5, v6, v13, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 880
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$34;

    invoke-direct {v5, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$34;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 888
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    const/16 v8, 0xf

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 889
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$35;

    invoke-direct {v6, v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$35;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 897
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 899
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x7

    .line 900
    invoke-virtual {v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 901
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 903
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 904
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 905
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 907
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;

    invoke-direct {v1, v15, v2, v10, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_8

    :cond_d
    const/16 v0, 0x2a

    if-ne v14, v0, :cond_10

    .line 917
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getVisibility()I

    move-result v0

    .line 918
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    .line 919
    :goto_6
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getEffectAlpha()I

    move-result v2

    .line 920
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getNumberToRepeat()I

    move-result v10

    .line 922
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_f

    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    const/16 v3, 0x8

    .line 923
    :goto_7
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    .line 924
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 927
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$37;

    invoke-direct {v4, v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$37;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v12, v3, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 936
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0109

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x3

    move-object v3, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 937
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f0c0120

    invoke-virtual {v4, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x3

    move-object v4, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 939
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xff

    const/4 v7, 0x5

    invoke-direct {v4, v5, v7, v6, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 940
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$38;

    invoke-direct {v5, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$38;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 950
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x2

    const/16 v9, 0xf

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 951
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$39;

    invoke-direct {v6, v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$39;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 961
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 963
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x7

    .line 964
    invoke-virtual {v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 965
    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 966
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 967
    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 968
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 969
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 971
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;

    invoke-direct {v1, v15, v2, v10, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v7, 0x5

    const/4 v9, -0x2

    .line 980
    :goto_9
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v0, 0x33

    if-ne v14, v0, :cond_11

    .line 982
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 983
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 984
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 985
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isPerspectiveEnabled()Z

    move-result v2

    .line 987
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setComponentReference(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;)V

    .line 988
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setVisibility(I)V

    .line 990
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$41;

    invoke-direct {v1, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$41;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setPerspectiveToolInterface(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;)V

    .line 997
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeWidth()F

    move-result v11

    add-float/2addr v10, v11

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeHeight()F

    move-result v12

    add-float/2addr v11, v12

    invoke-direct {v0, v1, v8, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 999
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v8

    iget-object v8, v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint1:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v10

    iget-object v10, v10, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint2:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v11

    iget-object v11, v11, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v12

    iget-object v12, v12, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->perspectivePoint4:Landroid/graphics/PointF;

    move-object/from16 v31, v1

    move-object/from16 v32, v8

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v0

    invoke-virtual/range {v31 .. v36}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    .line 1001
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$42;

    invoke-direct {v8, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$42;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v0, v1, v2, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1008
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f070189

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f070094

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$43;

    invoke-direct {v8, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$43;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x32

    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v8, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x1

    .line 1020
    iput v7, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1021
    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1022
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$44;

    move-object v0, v8

    move-object v1, v15

    const/4 v12, 0x1

    const/4 v7, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$44;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_a

    :cond_11
    const v10, 0x7f070189

    const/16 v11, 0x32

    const/4 v12, 0x1

    .line 1032
    :goto_a
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    if-eqz v0, :cond_13

    const/16 v0, -0x54

    if-ne v14, v0, :cond_13

    .line 1034
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v0, 0x7f0c0052

    invoke-virtual {v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const/4 v6, 0x2

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1035
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3c

    const/16 v2, 0x14

    const/16 v3, 0xa

    invoke-direct {v6, v0, v3, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1036
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    .line 1037
    new-instance v4, Landroid/widget/HorizontalScrollView;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1038
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getArrowInstances()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    .line 1039
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    .line 1040
    new-instance v2, Landroid/widget/HorizontalScrollView;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1041
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getArrowInstances()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    .line 1042
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    const v0, 0x7f0c00ad

    invoke-virtual {v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0xc8

    const/16 v35, 0x2

    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1043
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v7, 0x3c

    const/16 v9, 0x14

    const/16 v13, 0xa

    invoke-direct {v0, v10, v13, v7, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1044
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v7, :cond_12

    .line 1045
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    .line 1047
    :cond_12
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;

    move-object v10, v0

    move-object v0, v9

    move-object v13, v1

    move-object v1, v15

    move-object/from16 v37, v2

    move-object v2, v8

    move-object v11, v3

    move-object v3, v6

    move-object/from16 v38, v4

    move-object v4, v13

    move-object v12, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->initiate(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;)V

    .line 1070
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;

    invoke-direct {v0, v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;)V

    invoke-virtual {v12, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    .line 1076
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$47;

    invoke-direct {v0, v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$47;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;)V

    invoke-virtual {v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    const/4 v0, 0x1

    .line 1082
    invoke-virtual {v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    const/4 v0, 0x0

    .line 1083
    invoke-virtual {v12, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setSelected(I)V

    .line 1086
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c008c

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    sget v34, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->defaultMiddleSize:I

    const/16 v35, 0x3

    move-object/from16 v30, v0

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1087
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->defaultMiddleSize:I

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1088
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$48;

    invoke-direct {v2, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$48;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v6, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1095
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$49;

    invoke-direct {v2, v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$49;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1102
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$50;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$50;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1110
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0080

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x64

    const/16 v35, 0x2

    move-object/from16 v30, v2

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1111
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x64

    invoke-direct {v3, v4, v5, v7, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1112
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$51;

    invoke-direct {v4, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$51;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1121
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x1

    sget v33, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v34, -0x1

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v30, v4

    move-object/from16 v35, v5

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1122
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;

    invoke-direct {v5, v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$52;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 1131
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f0c0124

    invoke-virtual {v7, v9}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v34

    const/16 v35, 0x3

    move-object/from16 v30, v5

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1132
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v14, 0x14

    invoke-virtual {v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    move-object/from16 v40, v4

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->fillOptions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v4

    move-object/from16 v41, v3

    const/4 v3, 0x0

    invoke-direct {v7, v9, v3, v14, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1133
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$53;

    invoke-direct {v3, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$53;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1140
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f0c0080

    invoke-virtual {v4, v9}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x32

    const/16 v35, 0x2

    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1141
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v43, v5

    move-object/from16 v42, v7

    const/16 v5, 0x32

    const/16 v7, 0x64

    const/4 v14, 0x0

    invoke-direct {v4, v9, v14, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1142
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$54;

    invoke-direct {v5, v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$54;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1151
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x1

    sget v33, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const v34, -0x777778

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v30, v5

    move-object/from16 v35, v7

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1152
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$55;

    invoke-direct {v7, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$55;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v5, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 1160
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x1

    .line 1161
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v9, 0xa

    .line 1162
    invoke-static {v9}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v14

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1164
    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1165
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1166
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1167
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v38

    .line 1168
    invoke-virtual {v0, v12}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v1, v37

    .line 1169
    invoke-virtual {v1, v11}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 1170
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1172
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1173
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f0c00d3

    invoke-virtual {v7, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1176
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1177
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1178
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f0c00d2

    invoke-virtual {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1179
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1180
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v7, 0x7f0c00d4

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1181
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1182
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1183
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1184
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1185
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0169

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1186
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1188
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;

    invoke-direct {v0, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    .line 1230
    :cond_13
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    if-eqz v0, :cond_15

    const/16 v0, -0x52

    move/from16 v14, p1

    if-ne v14, v0, :cond_16

    .line 1232
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V

    .line 1233
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 1234
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->restoreOptions()V

    .line 1235
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iput-object v1, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 1236
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_14

    .line 1237
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    .line 1239
    :cond_14
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiate()V

    .line 1240
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$57;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$57;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V

    .line 1257
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;

    invoke-direct {v1, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    .line 1300
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_15
    move/from16 v14, p1

    .line 1303
    :cond_16
    :goto_b
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    if-eqz v0, :cond_18

    const/16 v0, -0x3c

    if-ne v14, v0, :cond_18

    .line 1305
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->init()V

    .line 1306
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_17

    .line 1307
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->hideTemp()V

    .line 1309
    :cond_17
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v1, 0x7f0c011f

    invoke-virtual {v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1310
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1311
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-direct {v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 1312
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x46

    invoke-virtual {v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    const/16 v5, 0x37

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 1313
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x5

    .line 1314
    invoke-virtual {v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1315
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f0c0080

    invoke-virtual {v5, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0x64

    const/16 v35, 0x2

    move-object/from16 v30, v4

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1316
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v9, 0x64

    invoke-direct {v5, v6, v7, v9, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1317
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x1

    sget v33, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v34, -0x1

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v7}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v30, v6

    move-object/from16 v35, v7

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1318
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v40

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v10, 0x7f0c0124

    invoke-virtual {v9, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x1

    const/16 v43, 0x0

    const/16 v44, 0x3

    move-object/from16 v39, v7

    invoke-direct/range {v39 .. v44}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1319
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x14

    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1320
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f0c0080

    invoke-virtual {v11, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0x64

    const/16 v35, 0x2

    move-object/from16 v30, v10

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1321
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v8, 0x64

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v8, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1322
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x1

    sget v33, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v34, -0x1

    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {v12}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V

    move-object/from16 v30, v8

    move-object/from16 v35, v12

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1323
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v40

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f0c010d

    invoke-virtual {v13, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v39, v12

    invoke-direct/range {v39 .. v44}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1324
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v54, v3

    const/16 v3, 0x19

    move-object/from16 v55, v12

    const/4 v12, 0x0

    invoke-direct {v13, v14, v12, v3, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1325
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x3

    .line 1326
    new-array v14, v12, [I

    fill-array-data v14, :array_0

    invoke-virtual {v3, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->addItems([I)V

    .line 1328
    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v12, v12, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    move-object/from16 v39, v12

    move-object/from16 v40, v2

    move-object/from16 v41, v0

    move-object/from16 v42, v1

    move-object/from16 v43, v4

    move-object/from16 v44, v5

    move-object/from16 v45, v6

    move-object/from16 v46, v7

    move-object/from16 v47, v9

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v50, v8

    move-object/from16 v51, v3

    move-object/from16 v52, v55

    move-object/from16 v53, v13

    invoke-virtual/range {v39 .. v53}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->updateControlsFromBundle(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    .line 1330
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v12, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    .line 1331
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v56, v3

    const/16 v14, 0xa

    .line 1332
    invoke-static {v14}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    iput v3, v12, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1334
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;

    invoke-direct {v3, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->setChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;)V

    .line 1340
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$2;

    invoke-direct {v3, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1344
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$3;

    invoke-direct {v3, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1348
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$4;

    invoke-direct {v3, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 1356
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$5;

    invoke-direct {v3, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v9, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1360
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$6;

    invoke-direct {v3, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1364
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$7;

    invoke-direct {v3, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 1372
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$8;

    move-object/from16 v14, v55

    invoke-direct {v3, v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1376
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$9;

    invoke-direct {v3, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$9;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    move-object/from16 v57, v13

    move-object/from16 v13, v56

    invoke-virtual {v13, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;)V

    .line 1378
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v58, v14

    move-object/from16 v14, v54

    invoke-virtual {v3, v2, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1380
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1381
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f0c00d3

    invoke-virtual {v3, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1382
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1383
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1384
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00d2

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x3

    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1385
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1386
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c00d4

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1387
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1388
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1389
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1390
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1391
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0169

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1392
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1393
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1395
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1396
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;

    invoke-direct {v0, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    .line 1433
    :cond_18
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v14, 0x0

    if-eqz v0, :cond_19

    const/16 v0, -0x1e

    move/from16 v13, p1

    if-ne v13, v0, :cond_1a

    .line 1435
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setVisibility(I)V

    .line 1436
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->restoreOptions()V

    .line 1437
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrColor(I)V

    .line 1438
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrStrokeWidth(I)V

    .line 1439
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrBlur(I)V

    .line 1440
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrFill(Z)V

    .line 1441
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrNeon(Z)V

    .line 1442
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrDashed(Z)V

    .line 1444
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1445
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1446
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1447
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x28

    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    const/16 v4, 0x28

    invoke-virtual {v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1448
    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1449
    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1450
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1452
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070189

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1453
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1454
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1455
    sget v6, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1456
    sget v6, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1457
    sget v6, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1458
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1460
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0700ea

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1461
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$60;

    invoke-direct {v6, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$60;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1467
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$61;

    invoke-direct {v6, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$61;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1474
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/high16 v11, -0x1000000

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1475
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;

    invoke-direct {v7, v15, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/ImageButton;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x5

    .line 1486
    invoke-virtual {v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1487
    invoke-virtual {v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0x11

    .line 1488
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1489
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1490
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1491
    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$63;

    invoke-direct {v0, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$63;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 1499
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c011e

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v1, 0x5

    invoke-virtual {v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    const/4 v12, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1500
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getCurrStrokeWidth()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1502
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v3, 0x7f0c0165

    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getSmoothness()I

    move-result v11

    const/4 v12, 0x2

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1503
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getSmoothness()I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-direct {v3, v4, v7, v8, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1505
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$64;

    invoke-direct {v4, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$64;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1515
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v7, 0x7f0c010d

    invoke-virtual {v5, v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1516
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x19

    const/4 v9, 0x0

    invoke-direct {v5, v7, v9, v8, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1517
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v9, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1518
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10, v9, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1520
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$65;

    invoke-direct {v9, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$65;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;)V

    invoke-virtual {v7, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1529
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$66;

    invoke-direct {v9, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$66;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;)V

    invoke-virtual {v8, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1539
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$67;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$67;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1545
    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c00a2

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    .line 1546
    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c00a1

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    .line 1547
    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c00a3

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    .line 1548
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$68;

    invoke-direct {v10, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$68;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1557
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$69;

    invoke-direct {v10, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$69;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v5, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1567
    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1568
    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1569
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1570
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1571
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1572
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1573
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1574
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1575
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1576
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1577
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;

    invoke-direct {v0, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    goto :goto_c

    :cond_19
    move/from16 v13, p1

    :cond_1a
    :goto_c
    const/16 v0, 0x21

    if-ne v13, v0, :cond_1d

    .line 1607
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    .line 1608
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v1

    .line 1609
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v8

    .line 1611
    sget v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v2, :cond_1b

    goto :goto_d

    :cond_1b
    sget v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    move v5, v2

    goto :goto_e

    :cond_1c
    :goto_d
    move v5, v0

    .line 1612
    :goto_e
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, v9

    move v6, v1

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1613
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;

    invoke-direct {v2, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 1625
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1626
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;

    invoke-direct {v2, v15, v0, v1, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_f

    :cond_1d
    const/16 v0, 0x2b

    if-ne v13, v0, :cond_1e

    .line 1634
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->copy()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    move-result-object v0

    const/4 v1, 0x1

    .line 1635
    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    .line 1636
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;-><init>(Landroid/content/Context;)V

    .line 1637
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1638
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$73;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$73;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 1646
    invoke-virtual {v15, v1, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoBgImagesJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V

    .line 1649
    :cond_1e
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_40

    const/16 v0, 0x15

    if-eq v13, v0, :cond_1f

    const/16 v0, 0x16

    if-ne v13, v0, :cond_22

    .line 1651
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    if-ne v0, v1, :cond_22

    .line 1652
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;-><init>(Landroid/content/Context;)V

    .line 1653
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1654
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0065

    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1655
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v2

    const v3, 0x7f08019d

    .line 1656
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Linfo/hoang8f/android/segmented/SegmentedGroup;

    .line 1658
    sget-boolean v4, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z

    if-eqz v4, :cond_20

    const v4, 0x7f080156

    .line 1659
    invoke-virtual {v3, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_10

    :cond_20
    const/4 v5, 0x1

    .line 1662
    :goto_10
    invoke-virtual {v3, v5, v14}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v4, "#e91e63"

    .line 1664
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    .line 1665
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1666
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1668
    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1669
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1670
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;

    invoke-direct {v1, v15, v13, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 1681
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;

    invoke-direct {v1, v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    .line 1689
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;

    invoke-direct {v1, v15, v3, v0, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$76;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Linfo/hoang8f/android/segmented/SegmentedGroup;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V

    invoke-virtual {v3, v1}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1702
    sget-boolean v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z

    if-eqz v1, :cond_21

    const/4 v2, 0x4

    goto :goto_11

    :cond_21
    const/4 v2, 0x1

    :goto_11
    invoke-virtual {v15, v0, v13, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->DoStickersJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V

    goto/16 :goto_1e

    :cond_22
    const/16 v0, 0x26

    if-ne v13, v0, :cond_23

    .line 1706
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 1707
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v7, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    .line 1708
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v6, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1709
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v7, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1710
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0115

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x3

    move-object/from16 v30, v1

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1711
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0127

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v35, 0x2

    move-object/from16 v30, v8

    move/from16 v34, v0

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1712
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0110

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v30, v9

    move/from16 v34, v2

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1713
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v10, v3, v4, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1714
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0x64

    invoke-direct {v11, v3, v4, v5, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1715
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0, v4, v5, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1716
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1717
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1718
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1719
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1720
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1721
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1722
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$77;

    move-object v0, v5

    move-object v1, v15

    move-object v2, v10

    move-object v3, v8

    move-object v4, v12

    move-object v14, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$77;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1741
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;

    move-object v0, v14

    move-object v3, v9

    move-object v4, v11

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$78;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1760
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;

    invoke-direct {v0, v15, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_23
    const/16 v0, 0x24

    if-ne v13, v0, :cond_24

    .line 1769
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v0

    .line 1770
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v1

    .line 1772
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 1774
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1775
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1776
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1777
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1778
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1779
    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1780
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070189

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1783
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1785
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1786
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1787
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1788
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1790
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700b8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1792
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1793
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1794
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v31

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c0116

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/4 v10, 0x3

    invoke-virtual {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v34

    const/16 v35, 0x5

    move-object/from16 v30, v9

    invoke-direct/range {v30 .. v35}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1795
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    const/4 v12, 0x3

    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12, v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1796
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$80;

    invoke-direct {v11, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$80;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 1805
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$81;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$81;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1811
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$82;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$82;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1817
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$83;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$83;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1823
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$84;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$84;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x5

    .line 1830
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1831
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v11, 0x11

    .line 1832
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v11, 0x7

    .line 1833
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1834
    invoke-virtual {v2, v5, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1835
    invoke-virtual {v2, v6, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1836
    invoke-virtual {v2, v7, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1837
    invoke-virtual {v2, v8, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1838
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1839
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1840
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1841
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$85;

    invoke-direct {v2, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$85;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_24
    const/16 v0, 0x25

    move/from16 v13, p1

    if-ne v13, v0, :cond_25

    .line 1851
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v0

    .line 1852
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v1

    .line 1854
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 1855
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 1856
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1857
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x32

    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1858
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1859
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1860
    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1861
    new-instance v9, Landroid/widget/ImageButton;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1862
    new-instance v10, Landroid/widget/ImageButton;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1863
    new-instance v12, Landroid/widget/ImageButton;

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v11, 0x7f070189

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1865
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1866
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1867
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1870
    sget v14, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1871
    sget v14, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1872
    sget v14, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1873
    sget v14, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1874
    sget v14, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1875
    sget v14, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v10, v14}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v11, 0x7f070064

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f070066

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1879
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f070067

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1880
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f070060

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f070062

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1882
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f070068

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1884
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$86;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$86;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1890
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$87;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$87;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1896
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$88;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$88;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$89;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$89;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1908
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$90;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$90;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1914
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$91;

    invoke-direct {v11, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$91;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v12, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x5

    .line 1921
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1922
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v14, 0x11

    .line 1923
    iput v14, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v14, 0x7

    .line 1924
    invoke-virtual {v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1925
    invoke-virtual {v2, v6, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1926
    invoke-virtual {v2, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1927
    invoke-virtual {v2, v8, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1928
    invoke-virtual {v3, v9, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1929
    invoke-virtual {v3, v10, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1930
    invoke-virtual {v3, v12, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1932
    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1933
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1934
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$92;

    invoke-direct {v2, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$92;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_25
    const/4 v14, 0x7

    const/16 v0, 0x3d

    if-ne v13, v0, :cond_27

    .line 1944
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isEmbossEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1945
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result v9

    .line 1946
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossIntensity()I

    move-result v10

    .line 1947
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossAmbient()I

    move-result v11

    .line 1948
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossHardness()I

    move-result v12

    .line 1949
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossBevel()I

    move-result v1

    .line 1951
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1952
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_12

    :cond_26
    const/16 v3, 0x8

    :goto_12
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    .line 1953
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1955
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$93;

    invoke-direct {v5, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$93;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v8, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1969
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0114

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v16, 0x1

    move-object v3, v7

    move-object v14, v7

    move v7, v9

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1970
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$94;

    invoke-direct {v4, v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$94;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-direct {v8, v3, v9, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    .line 1995
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0111

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x3

    move-object v3, v7

    move-object/from16 v59, v7

    move v7, v10

    move/from16 v60, v9

    move-object v9, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1996
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v8, v3, v4, v5, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1997
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c010a

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/from16 v61, v7

    move v7, v11

    move/from16 v62, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 1998
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v8, v3, v4, v5, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 1999
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0122

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/from16 v63, v7

    move v7, v12

    move/from16 v64, v11

    move-object v11, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2000
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v8, v3, v4, v5, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2001
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c010c

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/from16 v65, v7

    move v7, v1

    move/from16 v66, v12

    move-object v12, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2002
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2004
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$95;

    move-object/from16 v5, v59

    invoke-direct {v4, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$95;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2018
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$96;

    move-object/from16 v6, v61

    invoke-direct {v4, v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$96;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2033
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$97;

    move-object/from16 v7, v63

    invoke-direct {v4, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$97;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2048
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$98;

    move-object/from16 v8, v65

    invoke-direct {v4, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$98;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2062
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2063
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2064
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v67, v1

    const v1, 0x7f0c0046

    invoke-virtual {v14, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2065
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2066
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2067
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2068
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2069
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2070
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2071
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2072
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2075
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2076
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2078
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2079
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$99;

    move-object v0, v8

    move/from16 v7, v67

    move-object v1, v15

    move/from16 v3, v60

    move/from16 v4, v62

    move/from16 v5, v64

    move/from16 v6, v66

    const/16 v13, 0x8

    const/4 v14, 0x5

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$99;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/Boolean;IIIII)V

    iput-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_27
    const/4 v9, -0x2

    const/16 v13, 0x8

    const/4 v14, 0x5

    const/16 v0, 0x3f

    move/from16 v12, p1

    if-ne v12, v0, :cond_2e

    const/16 v0, 0x78

    .line 2093
    invoke-virtual {v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    .line 2094
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    mul-double v0, v0, v2

    double-to-int v3, v0

    .line 2096
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDEnabled()Z

    move-result v6

    .line 2097
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDViewType()I

    move-result v7

    .line 2098
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepth()I

    move-result v8

    .line 2099
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthFillType()I

    move-result v10

    .line 2100
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthColorFill()I

    move-result v11

    .line 2101
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v16

    .line 2102
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDDepthColorAutomatic()Z

    move-result v5

    .line 2103
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDDepthDarken()I

    move-result v2

    .line 2104
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDStokeInclude()Z

    move-result v1

    .line 2105
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationX()I

    move-result v0

    .line 2106
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationY()I

    move-result v9

    .line 2107
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v14

    iget v14, v14, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    .line 2108
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDObliqueAngle()I

    move-result v13

    .line 2109
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isThreeDLightingEnabled()Z

    move-result v12

    move/from16 v68, v4

    .line 2110
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getEmbossLightAngle()I

    move-result v4

    move/from16 v69, v3

    .line 2111
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingIntensity()I

    move-result v3

    move/from16 v70, v7

    .line 2112
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingShadow()I

    move-result v7

    move/from16 v71, v7

    .line 2113
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getThreeDLightingSpecularHardness()I

    move-result v7

    move/from16 v72, v7

    .line 2115
    new-instance v7, Landroid/widget/LinearLayout;

    move/from16 v73, v3

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_28

    const/4 v3, 0x0

    goto :goto_13

    :cond_28
    const/16 v3, 0x8

    .line 2116
    :goto_13
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    .line 2117
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2119
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    move/from16 v74, v4

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move/from16 v75, v12

    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$100;

    invoke-direct {v12, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$100;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v3, v4, v6, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2128
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v12, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2129
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v76, v3

    const v3, 0x7f0a006d

    invoke-static {v4, v3, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f08019d

    .line 2130
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Linfo/hoang8f/android/segmented/SegmentedGroup;

    move/from16 v77, v6

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2132
    invoke-virtual {v3, v4, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v4, "#e91e63"

    .line 2134
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    const v4, 0x7f08014f

    .line 2135
    invoke-virtual {v3, v4}, Linfo/hoang8f/android/segmented/SegmentedGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    const v6, 0x7f080146

    .line 2136
    invoke-virtual {v3, v6}, Linfo/hoang8f/android/segmented/SegmentedGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    move-object/from16 v78, v12

    .line 2138
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    move-object/from16 v79, v7

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v80, v3

    const v3, 0x7f0c009e

    invoke-virtual {v7, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    const/4 v3, 0x3

    if-ne v10, v3, :cond_29

    move/from16 v3, v69

    goto :goto_14

    :cond_29
    move/from16 v3, v68

    :goto_14
    invoke-virtual {v15, v8, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v30

    const/16 v31, 0x3

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2139
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v81, v12

    const/4 v12, 0x3

    if-ne v10, v12, :cond_2a

    move/from16 v12, v69

    goto :goto_15

    :cond_2a
    move/from16 v12, v68

    :goto_15
    invoke-virtual {v15, v8, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v12

    move-object/from16 v83, v6

    move/from16 v82, v8

    const/16 v6, 0x64

    const/4 v8, 0x1

    invoke-direct {v7, v3, v8, v6, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2140
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f0c009f

    invoke-virtual {v3, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v26, v6

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2141
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v26, v8

    move/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v16

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 2142
    invoke-virtual {v8, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    const/4 v3, 0x1

    .line 2143
    invoke-virtual {v8, v3, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setShowAutomatic(ZZ)V

    .line 2144
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v84, v5

    const v5, 0x7f0c0097

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v31, 0x2

    move-object/from16 v26, v12

    move/from16 v30, v2

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2145
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v86, v6

    move/from16 v85, v11

    const/16 v6, 0x64

    const/4 v11, 0x0

    invoke-direct {v5, v3, v11, v6, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2146
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c00c8

    invoke-virtual {v3, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object/from16 v26, v6

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2147
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v87, v2

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$101;

    invoke-direct {v2, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$101;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v11, v3, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2157
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v88, v1

    const v1, 0x7f0c0186

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v31, 0x1

    move-object/from16 v26, v3

    move/from16 v30, v0

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2158
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v89, v5

    const/16 v5, -0x50

    move-object/from16 v90, v11

    const/16 v11, 0x50

    invoke-direct {v2, v1, v5, v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2159
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0188

    invoke-virtual {v1, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v26, v11

    move/from16 v30, v9

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2160
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v91, v0

    const/16 v0, -0x50

    move-object/from16 v92, v6

    const/16 v6, 0x50

    invoke-direct {v5, v1, v0, v6, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2161
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c018a

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v26, v6

    move/from16 v30, v14

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2162
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v93, v9

    const/16 v9, -0xb4

    move-object/from16 v94, v6

    const/16 v6, 0xb4

    invoke-direct {v1, v0, v9, v6, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2164
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    const-string v28, "oblique angle"

    move-object/from16 v26, v0

    move/from16 v30, v13

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2165
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v95, v1

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$102;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$102;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-direct {v9, v6, v13, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 2183
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    .line 2186
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2187
    new-instance v1, Landroid/widget/LinearLayout;

    move/from16 v96, v13

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    .line 2188
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2189
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2191
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2192
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2193
    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2194
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2195
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2196
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2199
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2200
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2201
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v97, v2

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$103;

    invoke-direct {v2, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$103;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    move/from16 v98, v14

    move/from16 v14, v75

    invoke-direct {v13, v0, v14, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2210
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v99, v3

    const v3, 0x7f0c0114

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v26, v0

    move/from16 v30, v74

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2211
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v100, v5

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$104;

    invoke-direct {v5, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$104;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move/from16 v101, v14

    move/from16 v14, v74

    invoke-direct {v2, v3, v14, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    .line 2237
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v102, v14

    const v14, 0x7f0c0111

    invoke-virtual {v3, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v31, 0x3

    move-object/from16 v26, v5

    move/from16 v30, v73

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2238
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v104, v11

    move-object/from16 v105, v12

    move-object/from16 v103, v13

    move/from16 v13, v73

    const/4 v11, 0x0

    const/16 v12, 0x64

    invoke-direct {v14, v3, v11, v12, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2239
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f0c0159

    invoke-virtual {v3, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v26, v11

    move/from16 v30, v71

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2240
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v108, v7

    move-object/from16 v107, v8

    move/from16 v106, v13

    move/from16 v13, v71

    const/16 v7, 0x64

    const/4 v8, 0x0

    invoke-direct {v12, v3, v8, v7, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2241
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v27

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f0c0122

    invoke-virtual {v3, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v26, v7

    move/from16 v30, v72

    invoke-direct/range {v26 .. v31}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2242
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v110, v10

    move/from16 v109, v13

    move/from16 v13, v72

    const/4 v10, 0x0

    const/16 v15, 0x64

    invoke-direct {v8, v3, v10, v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2244
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2245
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2246
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2247
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2248
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2249
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2250
    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2251
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v3, v70

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2b

    .line 2254
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2255
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v4, 0x8

    .line 2256
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_16

    :cond_2b
    const/4 v0, 0x3

    const/16 v4, 0x8

    if-ne v3, v0, :cond_2c

    move-object/from16 v0, v83

    .line 2260
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2261
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2262
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2264
    :cond_2c
    :goto_16
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;

    move-object/from16 v15, p0

    const/16 v17, 0x64

    invoke-direct {v0, v15, v6, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v2, v80

    invoke-virtual {v2, v0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 2282
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$106;

    move/from16 v18, v91

    const/16 v19, 0x3

    move-object v0, v2

    move/from16 v111, v13

    move/from16 v20, v88

    move-object/from16 v10, v95

    move-object v13, v1

    move-object v1, v15

    move-object/from16 v112, v9

    move-object/from16 v113, v13

    move/from16 v21, v87

    move-object/from16 v9, v97

    const/16 v22, 0x1

    move-object v13, v2

    move/from16 v2, v110

    move/from16 v23, v3

    move-object/from16 v115, v6

    move-object/from16 v114, v76

    move-object/from16 v6, v99

    move/from16 v24, v106

    move/from16 v3, v69

    move/from16 v25, v102

    const/16 v26, 0x8

    move/from16 v4, v68

    move-object/from16 v117, v7

    move-object/from16 v116, v8

    move-object/from16 v118, v12

    move/from16 v27, v84

    move-object/from16 v8, v89

    move-object/from16 v7, v100

    move-object v12, v5

    move-object/from16 v5, v81

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$106;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IIILcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v0, v108

    invoke-virtual {v0, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2294
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$107;

    move-object/from16 v2, v107

    invoke-direct {v1, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$107;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 2300
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$108;

    move-object/from16 v3, v105

    invoke-direct {v1, v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$108;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v8, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2313
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$109;

    invoke-direct {v1, v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$109;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2322
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$110;

    move-object/from16 v4, v104

    invoke-direct {v1, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$110;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2331
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$111;

    move-object/from16 v4, v94

    invoke-direct {v1, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$111;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2340
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$112;

    invoke-direct {v1, v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$112;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2349
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$113;

    invoke-direct {v1, v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$113;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v5, v118

    invoke-virtual {v5, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2358
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$114;

    move-object/from16 v5, v117

    invoke-direct {v1, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$114;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v5, v116

    invoke-virtual {v5, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2367
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v29

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v6, 0x7f0c0181

    invoke-virtual {v5, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x3

    move-object/from16 v28, v1

    invoke-direct/range {v28 .. v33}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    move-object/from16 v5, v79

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v78

    .line 2368
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2369
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f0c009d

    invoke-virtual {v7, v9}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v81

    .line 2370
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2371
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v86

    .line 2372
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2373
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2374
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2375
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2376
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v0, v92

    .line 2377
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v90

    .line 2378
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2380
    :cond_2d
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0144

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v115

    .line 2381
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v113

    .line 2382
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2383
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2384
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2386
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0164

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v103

    .line 2387
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v112

    .line 2388
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2390
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2391
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2392
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$115;

    move-object v0, v14

    move-object v1, v15

    move/from16 v2, v77

    move/from16 v3, v23

    move/from16 v4, v82

    move/from16 v5, v21

    const/16 v12, 0xb4

    const/16 v21, 0x0

    move/from16 v6, v20

    move/from16 v20, v109

    move/from16 v23, v111

    move/from16 v7, v110

    const/16 v13, 0x46

    move/from16 v8, v85

    move/from16 v19, v93

    const/4 v10, 0x3

    const/4 v11, -0x2

    move-object/from16 v9, v16

    const/16 v16, 0x0

    move/from16 v10, v27

    move/from16 v11, v101

    move/from16 v12, v25

    move/from16 v16, v96

    move/from16 v13, v24

    move-object/from16 v119, v14

    move/from16 v21, v98

    move/from16 v14, v20

    move/from16 v15, v23

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    invoke-direct/range {v0 .. v19}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$115;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIIZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ZZIIIIIIII)V

    move-object/from16 v0, v119

    move-object/from16 v15, p0

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_2e
    const/16 v0, 0x2e

    move/from16 v8, p1

    if-ne v8, v0, :cond_2f

    .line 2409
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationX()I

    move-result v0

    .line 2410
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextRotationY()I

    move-result v9

    .line 2411
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/16 v11, 0xb4

    invoke-direct {v10, v1, v2, v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2412
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0128

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v12

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2413
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0xb4

    invoke-direct {v1, v2, v3, v11, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2414
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0129

    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v13

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2415
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$116;

    invoke-direct {v2, v15, v10, v1, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$116;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2424
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$117;

    invoke-direct {v2, v15, v10, v1, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$117;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2433
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;

    invoke-direct {v2, v15, v0, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;II)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 2439
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2440
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$119;

    invoke-direct {v2, v15, v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$119;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2447
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2448
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2449
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2450
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1e

    :cond_2f
    const/4 v9, 0x0

    const/16 v11, 0xb4

    const/16 v0, 0x19

    if-ne v8, v0, :cond_30

    .line 2453
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    .line 2454
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    invoke-direct {v7, v1, v2, v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2455
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0108

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v10

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2457
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$10;

    invoke-direct {v2, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$10;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setRotationListener(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;)V

    .line 2459
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$120;

    invoke-direct {v1, v15, v7, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$120;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2466
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$121;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$121;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 2473
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2474
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$122;

    invoke-direct {v1, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$122;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2480
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2481
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1e

    :cond_30
    const/16 v0, 0x3b

    if-ne v8, v0, :cond_32

    .line 2484
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeEnabled()Z

    move-result v0

    .line 2485
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeColor()I

    move-result v1

    .line 2486
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getStrokeRadius()I

    move-result v10

    .line 2488
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_31

    const/4 v2, 0x0

    goto :goto_17

    :cond_31
    const/16 v2, 0x8

    .line 2489
    :goto_17
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v13, 0x1

    .line 2490
    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2491
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v7, 0x0

    move-object v2, v14

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 2493
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0124

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v21, 0x3

    move-object/from16 v16, v2

    move/from16 v20, v10

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2494
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v13, v5, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2496
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;

    invoke-direct {v6, v15, v12, v3, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v4, v5, v0, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2504
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;

    invoke-direct {v5, v15, v4, v14, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$124;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2516
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;

    invoke-direct {v5, v15, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$125;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v14, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 2523
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2524
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2525
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2528
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2529
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v2, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2531
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2532
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$126;

    invoke-direct {v2, v15, v0, v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$126;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZII)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_32
    const/4 v13, 0x1

    const/4 v14, -0x2

    const/16 v0, 0x5b

    if-ne v8, v0, :cond_33

    .line 2539
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getHue()I

    move-result v7

    .line 2540
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getSaturation()I

    move-result v10

    .line 2541
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBrightness()I

    move-result v12

    .line 2542
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getContrast()I

    move-result v0

    .line 2543
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    invoke-direct {v6, v1, v2, v11, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2544
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00a9

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v5

    move-object/from16 v120, v5

    move v5, v7

    move-object/from16 v121, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2545
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0x64

    const/16 v5, 0x64

    invoke-direct {v6, v1, v2, v5, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2546
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00aa

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v1, v4

    move-object/from16 v122, v4

    move/from16 v4, v16

    const/16 v11, 0x64

    move v5, v10

    move-object/from16 v123, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2547
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0x64

    invoke-direct {v6, v1, v2, v11, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2548
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00a7

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v5

    move-object/from16 v124, v5

    move v5, v12

    move-object/from16 v125, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2549
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1, v9, v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2550
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00a8

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v5

    move-object/from16 v126, v5

    move v5, v0

    move-object/from16 v127, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2551
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$11;

    move/from16 v16, v0

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, v120

    move-object/from16 v3, v121

    move-object/from16 v4, v123

    move-object/from16 v5, v125

    move-object v14, v6

    move-object/from16 v6, v127

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$11;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v6, v121

    invoke-virtual {v6, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2555
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$12;

    move-object v0, v14

    move-object/from16 v2, v122

    move-object v3, v6

    move-object/from16 v128, v6

    move-object/from16 v6, v127

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$12;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v6, v123

    invoke-virtual {v6, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2559
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$13;

    move-object v0, v14

    move-object/from16 v2, v124

    move-object/from16 v3, v128

    move-object v4, v6

    move-object/from16 v129, v6

    move-object/from16 v6, v127

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$13;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v6, v125

    invoke-virtual {v6, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2563
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;

    move-object v0, v14

    move-object/from16 v2, v126

    move-object/from16 v4, v129

    move-object v5, v6

    move-object/from16 v130, v6

    move-object/from16 v6, v127

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$14;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2567
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;

    move-object v0, v14

    move v2, v7

    move v3, v12

    move v4, v10

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IIII)V

    iput-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 2570
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2571
    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$127;

    move-object v0, v10

    move-object/from16 v2, v128

    move-object/from16 v3, v129

    move-object/from16 v4, v130

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$127;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2580
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2581
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2582
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2583
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2584
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2585
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2586
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v126

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2587
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1e

    :cond_33
    const/16 v11, 0x64

    const/16 v0, 0x39

    if-ne v8, v0, :cond_34

    .line 2590
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeOpacity()I

    move-result v0

    .line 2591
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isShapeOpacityShadowInclude()Z

    move-result v7

    .line 2592
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0080

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v1, v10

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2593
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v9, v11, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2594
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0107

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2595
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$128;

    invoke-direct {v5, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$128;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v3, v4, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2601
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$16;

    invoke-direct {v4, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$16;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2605
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2606
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2607
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2608
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2609
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$129;

    invoke-direct {v1, v15, v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$129;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_34
    const/16 v0, -0x53

    if-ne v8, v0, :cond_37

    .line 2619
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBezierMaskEnabled()Z

    move-result v0

    .line 2620
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isBezierMaskIn()Z

    move-result v1

    .line 2622
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct {v2, v3, v4, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V

    .line 2623
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->restoreOptions()V

    .line 2624
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiateMaskMode(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 2626
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$130;

    invoke-direct {v4, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$130;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V

    .line 2643
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2644
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f08019c

    .line 2645
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v5, 0x7f08014d

    .line 2646
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f080114

    .line 2647
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 2649
    invoke-virtual {v4, v13, v10}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v7, "#e91e63"

    .line 2650
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v12, -0x1

    invoke-virtual {v4, v7, v12}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    .line 2652
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$131;

    invoke-direct {v7, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$131;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v7}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v1, :cond_35

    .line 2658
    invoke-virtual {v6, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_18

    .line 2659
    :cond_35
    invoke-virtual {v5, v13}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2661
    :goto_18
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2662
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v0, :cond_36

    const/4 v5, 0x0

    goto :goto_19

    :cond_36
    const/16 v5, 0x8

    .line 2663
    :goto_19
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2665
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$132;

    invoke-direct {v7, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$132;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v5, v6, v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2673
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f0c00f2

    invoke-virtual {v7, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v6

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2674
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2675
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-static {v13}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    .line 2676
    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v12, 0x5

    .line 2677
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2678
    new-instance v6, Landroid/view/View;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v7, "#d0d0d0"

    .line 2679
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2680
    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2681
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2682
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2683
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2685
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$133;

    invoke-direct {v2, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$133;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    .line 2694
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$134;

    invoke-direct {v2, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$134;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZ)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_37
    const/4 v10, 0x0

    const/4 v12, 0x5

    const/16 v0, 0x55

    if-ne v8, v0, :cond_38

    .line 2704
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextureScale()I

    move-result v6

    .line 2705
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isTextureMaintainAspect()Z

    move-result v5

    .line 2706
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getTextureSrc()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v4

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$135;

    invoke-direct {v7, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$135;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;-><init>(Landroid/content/Context;ZLcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    .line 2717
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$136;

    invoke-direct {v1, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$136;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setNewTextureOnClick(Landroid/view/View$OnClickListener;)V

    .line 2723
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setDeleteTextureOnClick(Landroid/view/View$OnClickListener;)V

    .line 2730
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    const/16 v14, 0x8

    invoke-virtual {v1, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2731
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1e

    :cond_38
    const/16 v14, 0x8

    const/16 v0, 0x34

    if-ne v8, v0, :cond_3a

    .line 2735
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorsTolerances(Z)Ljava/util/ArrayList;

    move-result-object v7

    .line 2736
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorsTolerances(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 2738
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isRemoveColorEnabled()Z

    move-result v5

    .line 2739
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getRemoveColorBlur()I

    move-result v4

    .line 2741
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2742
    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f080078

    .line 2743
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageButton;

    const v0, 0x7f080077

    .line 2744
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2745
    sget v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 2746
    sget v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 2748
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2749
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v10, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v5, :cond_39

    const/4 v14, 0x0

    goto :goto_1a

    :cond_39
    const/16 v14, 0x8

    .line 2751
    :goto_1a
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2752
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2753
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2754
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$138;

    invoke-direct {v11, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$138;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v14, v13, v5, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2762
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x23

    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/16 v9, 0x23

    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    invoke-direct {v11, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2763
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2764
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2765
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2766
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v9, 0x11

    .line 2767
    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2769
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v13, 0x32

    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    move-object/from16 v131, v2

    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v11, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2770
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 2771
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2772
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2773
    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x11

    .line 2774
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 2776
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v11, v11, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->c:I

    invoke-direct {v9, v2, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;-><init>(Landroid/content/Context;I)V

    .line 2778
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$139;

    invoke-direct {v2, v15, v1, v14, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$139;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2787
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;

    move-object v0, v11

    move-object v2, v1

    move-object v1, v15

    move-object/from16 v132, v2

    move-object/from16 v13, v131

    move-object v2, v9

    move-object/from16 v133, v3

    move-object/from16 v3, v132

    move/from16 v134, v4

    move-object v4, v14

    move v12, v5

    move-object/from16 v5, v133

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$140;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2797
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c0125

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v0, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    const/16 v13, 0xa

    div-int/lit8 v20, v0, 0xa

    const/16 v21, 0x3

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2798
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$ColorTolerance;->t:I

    div-int/2addr v2, v13

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->removeColorToleranceInverse(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2799
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c0121

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v4

    move/from16 v20, v134

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2800
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    move/from16 v2, v134

    const/4 v13, 0x0

    invoke-direct {v3, v0, v13, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2802
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;

    move-object v0, v13

    move-object v1, v15

    move v8, v2

    move-object v2, v5

    move/from16 v135, v8

    move-object v8, v3

    move-object v3, v6

    move/from16 v136, v12

    move-object v12, v4

    move-object v4, v9

    move-object/from16 v137, v10

    move-object v10, v5

    move-object/from16 v5, v132

    move-object/from16 v138, v8

    move-object v8, v6

    move-object v6, v14

    move-object/from16 v139, v7

    move-object/from16 v7, v133

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$141;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Ljava/util/ArrayList;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$OnRemoveColorToolsAction;)V

    const/4 v0, 0x0

    .line 2859
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    .line 2860
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;

    invoke-direct {v0, v15, v11, v9, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$142;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;Ljava/util/ArrayList;)V

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2872
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$143;

    invoke-direct {v0, v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$143;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v1, v138

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2881
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2882
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x4

    .line 2883
    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v15, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V

    const/16 v2, 0x8

    .line 2884
    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v15, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 2885
    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v15, v0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V

    const/4 v7, 0x3

    .line 2886
    invoke-virtual {v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v15, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 2887
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2888
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f07007e

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v4, v137

    .line 2889
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2890
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2891
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2892
    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v132

    .line 2893
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2894
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2895
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2896
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v2, v133

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2897
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2898
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2901
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;

    move/from16 v3, v135

    move/from16 v2, v136

    move-object/from16 v1, v139

    invoke-direct {v0, v15, v2, v3, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZILjava/util/ArrayList;)V

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_3a
    const/4 v7, 0x3

    const/16 v0, 0x23

    move/from16 v8, p1

    if-ne v8, v0, :cond_3c

    .line 2909
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isColorOverlayEnabled()Z

    move-result v2

    .line 2910
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorOverlayColor()I

    move-result v4

    .line 2911
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorOverlayFillType()I

    move-result v3

    .line 2912
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getColorOverlayGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v5

    .line 2913
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_3b

    const/4 v1, 0x0

    goto :goto_1b

    :cond_3b
    const/16 v1, 0x8

    .line 2914
    :goto_1b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 2915
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2917
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x1

    move-object v9, v1

    move v12, v3

    move v13, v4

    move-object v14, v5

    invoke-direct/range {v9 .. v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 2919
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$145;

    invoke-direct {v10, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$145;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v6, v9, v2, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2927
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$146;

    invoke-direct {v9, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$146;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 2935
    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2936
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x7

    .line 2937
    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2938
    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2939
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2940
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;

    move-object v0, v6

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_3c
    const/4 v9, 0x7

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_3e

    .line 2948
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadowEnabled()Z

    move-result v10

    .line 2949
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadowColor()I

    move-result v11

    .line 2950
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadow_radius()I

    move-result v12

    .line 2951
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadow_dx()I

    move-result v13

    .line 2952
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShadow_dy()I

    move-result v14

    .line 2954
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_3d

    const/4 v1, 0x0

    goto :goto_1c

    :cond_3d
    const/16 v1, 0x8

    .line 2955
    :goto_1c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 2956
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2957
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/16 v16, 0x0

    move-object v1, v6

    move v5, v11

    move-object/from16 v140, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 2959
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c010d

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v6

    move v5, v12

    move-object/from16 v141, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2960
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2961
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0118

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v5

    move-object/from16 v142, v5

    move v5, v13

    move-object/from16 v143, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2962
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v5, 0x46

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    invoke-direct {v6, v1, v2, v3, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2963
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0119

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v1, v4

    move-object/from16 v144, v4

    move/from16 v4, v16

    const/16 v9, 0x46

    move v5, v14

    move-object/from16 v145, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 2964
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    invoke-direct {v6, v1, v2, v3, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 2966
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$148;

    move-object v2, v0

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v146, v2

    move-object v7, v3

    move-object/from16 v3, v143

    move-object v9, v4

    move-object/from16 v4, v145

    move-object v8, v5

    move-object v5, v6

    move-object/from16 v147, v6

    move-object/from16 v6, v140

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$148;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v8, v9, v10, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2975
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$149;

    move-object v0, v7

    move-object v2, v8

    move-object/from16 v3, v145

    move-object/from16 v4, v147

    move-object/from16 v5, v140

    move-object/from16 v6, v141

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$149;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v9, v143

    invoke-virtual {v9, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2985
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$150;

    move-object v0, v7

    move-object v3, v9

    move-object/from16 v6, v142

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$150;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v145

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 2996
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$151;

    move-object v0, v7

    move-object v4, v6

    move-object/from16 v148, v6

    move-object/from16 v6, v144

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$151;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v147

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3009
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$152;

    move-object v0, v7

    move-object/from16 v4, v148

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$152;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v0, v140

    invoke-virtual {v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    move-object/from16 v1, v146

    .line 3015
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v141

    .line 3016
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3017
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v142

    .line 3018
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v148

    .line 3019
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v144

    .line 3020
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3021
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3023
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3024
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3026
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3027
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;

    move-object v0, v7

    move-object v1, v15

    move v2, v10

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_1e

    :cond_3e
    const/16 v0, 0x3e

    move/from16 v7, p1

    if-ne v7, v0, :cond_40

    .line 3036
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadowEnabled()Z

    move-result v8

    .line 3037
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadowColor()I

    move-result v9

    .line 3038
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadow_radius()I

    move-result v10

    .line 3039
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadow_dx()I

    move-result v11

    .line 3040
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getInnerShadow_dy()I

    move-result v12

    .line 3042
    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v8, :cond_3f

    const/4 v0, 0x0

    goto :goto_1d

    :cond_3f
    const/16 v0, 0x8

    .line 3043
    :goto_1d
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 3044
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3045
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v6, 0x0

    move-object v1, v14

    move v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 3047
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c010d

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v0

    move v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3048
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3049
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0118

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x3

    move-object v1, v5

    move-object/from16 v149, v5

    move v5, v11

    move-object/from16 v150, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3050
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v6, v1, v3, v4, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3051
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0119

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v1, v5

    move-object/from16 v151, v5

    move v5, v12

    move-object/from16 v152, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3052
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v6, v1, v3, v4, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3054
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$154;

    move-object v2, v0

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v153, v2

    move-object v2, v13

    move-object v7, v3

    move-object/from16 v3, v150

    move/from16 v154, v9

    move-object v9, v4

    move-object/from16 v4, v152

    move/from16 v155, v12

    move-object v12, v5

    move-object v5, v6

    move-object/from16 v156, v6

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$154;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v12, v9, v8, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3063
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$155;

    move-object v0, v7

    move-object v2, v12

    move-object/from16 v3, v152

    move-object/from16 v4, v156

    move-object v5, v14

    move-object/from16 v6, v153

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$155;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v9, v150

    invoke-virtual {v9, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3073
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$156;

    move-object v0, v7

    move-object v3, v9

    move-object/from16 v6, v149

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$156;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v152

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3084
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$157;

    move-object v0, v7

    move-object v4, v6

    move-object/from16 v157, v6

    move-object/from16 v6, v151

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$157;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v156

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3097
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;

    move-object v0, v7

    move-object/from16 v4, v157

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$158;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v14, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 3103
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v153

    .line 3104
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3105
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v149

    .line 3106
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v157

    .line 3107
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v151

    .line 3108
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3109
    invoke-virtual {v13, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3111
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3112
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3114
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3115
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;

    move-object v0, v7

    move-object v1, v15

    move v2, v8

    move v3, v10

    move v4, v11

    move/from16 v5, v155

    move/from16 v6, v154

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$159;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 3124
    :cond_40
    :goto_1e
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    if-eqz v0, :cond_6b

    move/from16 v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_41

    .line 3126
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    .line 3127
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/16 v3, 0xb4

    invoke-direct {v7, v1, v2, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3128
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$17;

    invoke-direct {v2, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$17;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setRotationListener(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;)V

    .line 3129
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0108

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3130
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$160;

    invoke-direct {v1, v15, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$160;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3139
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$161;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$161;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 3146
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3147
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$162;

    invoke-direct {v1, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$162;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3153
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3154
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    :cond_41
    const/16 v1, 0x24

    if-ne v0, v1, :cond_42

    .line 3159
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    .line 3160
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v1

    .line 3162
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3164
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3165
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3166
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3167
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3168
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3169
    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3170
    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f070189

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3171
    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3172
    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3173
    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3174
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3175
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3176
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3177
    sget v9, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3179
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3180
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700b8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3181
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3182
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3183
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c0116

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/4 v10, 0x3

    invoke-virtual {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v20

    const/16 v21, 0x5

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3184
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v10, v11, v14, v12, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3185
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$163;

    invoke-direct {v11, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$163;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3194
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$164;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$164;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v5, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3200
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$165;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$165;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3206
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$166;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$166;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3212
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$167;

    invoke-direct {v11, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$167;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x5

    .line 3219
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3220
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v11, 0x11

    .line 3221
    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v11, 0x7

    .line 3222
    invoke-virtual {v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v11

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3223
    invoke-virtual {v2, v5, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3224
    invoke-virtual {v2, v6, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3225
    invoke-virtual {v2, v7, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3226
    invoke-virtual {v2, v8, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3227
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3228
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3229
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3230
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$168;

    invoke-direct {v2, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$168;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_42
    const v10, 0x7f070189

    const/16 v1, 0x25

    if-ne v0, v1, :cond_43

    .line 3241
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v0

    .line 3242
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v1

    .line 3244
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3245
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3246
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3247
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x32

    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3248
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3249
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3250
    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3251
    new-instance v9, Landroid/widget/ImageButton;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3252
    new-instance v11, Landroid/widget/ImageButton;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3253
    new-instance v12, Landroid/widget/ImageButton;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3255
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3256
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3257
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3258
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3259
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3260
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3261
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3262
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3263
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3264
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3265
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3267
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f070064

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3268
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f070066

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3269
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f070067

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3270
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f070060

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3271
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f070062

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3272
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f070068

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3274
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$169;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$169;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3280
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$170;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$170;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3286
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$171;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$171;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3292
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$172;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$172;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3298
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$173;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$173;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3304
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$174;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$174;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v12, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v10, 0x5

    .line 3311
    invoke-virtual {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3312
    invoke-virtual {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v10, 0x11

    .line 3313
    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v10, 0x7

    .line 3314
    invoke-virtual {v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3315
    invoke-virtual {v2, v6, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3316
    invoke-virtual {v2, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3317
    invoke-virtual {v2, v8, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3318
    invoke-virtual {v3, v9, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3319
    invoke-virtual {v3, v11, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3320
    invoke-virtual {v3, v12, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3322
    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3323
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3324
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$175;

    invoke-direct {v2, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$175;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_43
    const/16 v1, 0x9

    if-ne v0, v1, :cond_44

    .line 3334
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextJustify()Z

    move-result v0

    .line 3335
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextAlign()I

    move-result v1

    .line 3336
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3337
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3338
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x32

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-virtual {v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3339
    new-instance v5, Landroid/widget/ImageButton;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3340
    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3341
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3342
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3343
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3344
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3345
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3346
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3347
    sget v8, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3348
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3349
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07008c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07008a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3351
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$176;

    invoke-direct {v10, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$176;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v8, v9, v0, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v9, 0x7f0c00ef

    .line 3357
    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setToggleLabel(Ljava/lang/String;)V

    .line 3358
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$177;

    invoke-direct {v9, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$177;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3364
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$178;

    invoke-direct {v9, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$178;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3370
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$179;

    invoke-direct {v9, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$179;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v9, 0xa

    .line 3376
    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3377
    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0x11

    .line 3378
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3379
    invoke-virtual {v2, v5, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3380
    invoke-virtual {v2, v6, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3381
    invoke-virtual {v2, v7, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3382
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3383
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3384
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;

    invoke-direct {v2, v15, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_44
    const/4 v1, 0x6

    if-ne v0, v1, :cond_45

    .line 3395
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    .line 3397
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->minTextSizePx:I

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->maxTextSizePx:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v7, v1, v2, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3398
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c008c

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3399
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;

    invoke-direct {v2, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setResizeListener(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;)V

    .line 3400
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$181;

    invoke-direct {v1, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$181;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3410
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3411
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3412
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3413
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3414
    sget v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3415
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3416
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    .line 3417
    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x11

    .line 3418
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3419
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$182;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$182;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_45
    const/16 v1, 0x56

    if-ne v0, v1, :cond_46

    .line 3428
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingLeft()I

    move-result v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pxToDp(I)F

    move-result v0

    float-to-int v7, v0

    .line 3429
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInPaddingRight()I

    move-result v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pxToDp(I)F

    move-result v0

    float-to-int v8, v0

    .line 3431
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c011b

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v9

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3432
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x14

    const/16 v2, 0x64

    invoke-direct {v10, v0, v1, v2, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3433
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c011c

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v11

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3434
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x14

    const/16 v2, 0x64

    invoke-direct {v6, v0, v1, v2, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3437
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;

    invoke-direct {v0, v15, v9, v10, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$183;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v10, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3446
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$184;

    invoke-direct {v0, v15, v11, v10, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$184;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v6, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3456
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$185;

    invoke-direct {v0, v15, v6, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$185;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setResetAbility(Landroid/view/View$OnClickListener;)V

    .line 3463
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$186;

    move-object v0, v12

    move-object v1, v15

    move-object v2, v10

    move v3, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$186;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V

    iput-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 3470
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3471
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3472
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3473
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    :cond_46
    const/16 v1, 0x31

    if-ne v0, v1, :cond_47

    .line 3477
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureScale()I

    move-result v6

    .line 3478
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextureMaintainAspect()Z

    move-result v5

    .line 3479
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextureSrc()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v4

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$187;

    invoke-direct {v7, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$187;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;-><init>(Landroid/content/Context;ZLcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V

    .line 3490
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$188;

    invoke-direct {v1, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$188;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setNewTextureOnClick(Landroid/view/View$OnClickListener;)V

    .line 3496
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$189;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$189;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setDeleteTextureOnClick(Landroid/view/View$OnClickListener;)V

    .line 3503
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3504
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2b

    :cond_47
    const/16 v1, 0x32

    if-ne v0, v1, :cond_48

    .line 3507
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextOpacity()I

    move-result v0

    .line 3508
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isTextOpacityShadowInclude()Z

    move-result v7

    .line 3509
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0080

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3510
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3511
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0107

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3512
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$190;

    invoke-direct {v5, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$190;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v3, v4, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3518
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$191;

    invoke-direct {v4, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$191;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3527
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3528
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3529
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3530
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3531
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$192;

    invoke-direct {v1, v15, v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$192;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_48
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4a

    .line 3540
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getFill_type()I

    move-result v0

    .line 3541
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getColors()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v7

    .line 3542
    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    move-result-object v1

    const v2, -0x777778

    if-eqz v1, :cond_49

    .line 3545
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I

    move-result v1

    move v5, v1

    goto :goto_1f

    :cond_49
    const v5, -0x777778

    .line 3547
    :goto_1f
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v8

    .line 3549
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object v1, v9

    move v4, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 3551
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0158

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3553
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    .line 3554
    invoke-virtual {v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v3, 0x1

    .line 3555
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3557
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;-><init>(Landroid/content/Context;)V

    .line 3559
    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setShowBackground(Z)V

    .line 3561
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setParentTouchInterceptor(Landroid/widget/ScrollView;)V

    .line 3563
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V

    .line 3565
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;

    invoke-direct {v3, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v9, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 3576
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3577
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3578
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3579
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;

    invoke-direct {v1, v15, v0, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ILcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_4a
    const/4 v1, 0x7

    if-ne v0, v1, :cond_4c

    .line 3591
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_enabled()Z

    move-result v9

    .line 3592
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_usedType()I

    move-result v10

    .line 3593
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_color()I

    move-result v11

    .line 3594
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_usedGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v12

    .line 3595
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addHorizontalL()F

    move-result v13

    .line 3596
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addHorizontalR()F

    move-result v14

    .line 3597
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addVerticalT()F

    move-result v8

    .line 3598
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_addVerticalB()F

    move-result v7

    .line 3599
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBackground_border_radius()I

    move-result v0

    .line 3600
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_4b

    const/4 v1, 0x0

    goto :goto_20

    :cond_4b
    const/16 v1, 0x8

    .line 3601
    :goto_20
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 3602
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3604
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object v1, v5

    move v4, v10

    move-object/from16 v158, v5

    move v5, v11

    move-object/from16 v159, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 3606
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 3607
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 3608
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 3609
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v4

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v4, v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 3611
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v160, v12

    const v12, 0x7f0c011b

    invoke-virtual {v5, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    float-to-int v5, v13

    const/16 v21, 0x3

    move-object/from16 v16, v6

    move/from16 v20, v5

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3612
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object/from16 v161, v6

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    neg-int v3, v3

    invoke-direct {v12, v6, v3, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3613
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v162, v13

    const v13, 0x7f0c011c

    invoke-virtual {v5, v13}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    float-to-int v5, v14

    move-object/from16 v16, v6

    move/from16 v20, v5

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3614
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object/from16 v163, v6

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v13, v6, v3, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3615
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c011d

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    float-to-int v1, v8

    move-object/from16 v16, v6

    move/from16 v20, v1

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3616
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    neg-int v4, v4

    invoke-direct {v5, v3, v4, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3617
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v164, v5

    const v5, 0x7f0c011a

    invoke-virtual {v1, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    float-to-int v1, v7

    move-object/from16 v16, v3

    move/from16 v20, v1

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3618
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    move-object/from16 v165, v3

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v5, v3, v4, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3619
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c011f

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v1, v4

    move-object/from16 v166, v165

    move-object/from16 v167, v4

    move/from16 v4, v16

    move-object/from16 v169, v5

    move-object/from16 v168, v164

    move v5, v0

    move-object/from16 v172, v6

    move-object/from16 v170, v161

    move-object/from16 v171, v163

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3620
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v6, v1, v3, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3622
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;

    move/from16 v16, v0

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v2, v159

    move/from16 v173, v14

    move-object v14, v3

    move-object/from16 v3, v158

    move/from16 v174, v11

    move-object v11, v4

    move-object v4, v12

    move/from16 v175, v10

    move-object v10, v5

    move-object v5, v13

    move-object/from16 v176, v6

    move-object/from16 v6, v168

    move/from16 v17, v7

    move-object/from16 v7, v169

    move/from16 v18, v8

    move-object/from16 v8, v176

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$195;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-direct {v10, v11, v9, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3637
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$196;

    move-object v0, v11

    move-object v2, v10

    move-object v4, v13

    move-object/from16 v5, v168

    move-object/from16 v6, v169

    move-object/from16 v7, v176

    move-object/from16 v8, v170

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$196;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3653
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$197;

    move-object v0, v11

    move-object v4, v12

    move-object/from16 v8, v171

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$197;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3670
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$198;

    move-object v0, v11

    move-object v5, v13

    move-object/from16 v8, v172

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$198;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v14, v168

    invoke-virtual {v14, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3687
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$199;

    move-object v0, v11

    move-object v6, v14

    move-object/from16 v8, v166

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$199;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v8, v169

    invoke-virtual {v8, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3704
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$200;

    move-object v0, v11

    move-object v7, v8

    move-object/from16 v177, v8

    move-object/from16 v8, v167

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$200;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v8, v176

    invoke-virtual {v8, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3721
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;

    move-object v0, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, v177

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$201;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v0, v158

    invoke-virtual {v0, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    move-object/from16 v1, v159

    .line 3735
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v170

    .line 3736
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3737
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v171

    .line 3738
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3739
    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v172

    .line 3740
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3741
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v166

    .line 3742
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v177

    .line 3743
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v167

    .line 3744
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3745
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3746
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3747
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3749
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3750
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;

    move-object v0, v11

    move-object v1, v15

    move v2, v9

    move/from16 v3, v175

    move/from16 v4, v174

    move-object/from16 v5, v160

    move/from16 v6, v162

    move/from16 v7, v173

    move/from16 v8, v18

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    iput-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_4c
    const/16 v1, 0x12

    if-ne v0, v1, :cond_4d

    .line 3764
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBolds()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    .line 3765
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getItalics()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v1

    .line 3766
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getUnders()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v2

    .line 3768
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;-><init>(Landroid/content/Context;)V

    .line 3769
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3770
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x32

    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3771
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x1

    invoke-virtual {v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    const/16 v9, 0x28

    invoke-virtual {v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3772
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3773
    new-instance v7, Landroid/widget/ImageButton;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3774
    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3775
    new-instance v9, Landroid/widget/ImageButton;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3776
    new-instance v11, Landroid/widget/ImageButton;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 3777
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3778
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3779
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3780
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3781
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3782
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3783
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3784
    sget v10, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 3785
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0701a5

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3786
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0701a9

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3787
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0701ad

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3788
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0701a7

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3789
    new-instance v10, Landroid/view/View;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v12, "#FFD8D8D8"

    .line 3790
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3792
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v178, v0

    const v0, 0x7f0c0158

    invoke-virtual {v14, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v13, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3794
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v0, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v13, 0x5

    .line 3795
    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v14

    iput v14, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v13, 0x1

    .line 3796
    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3797
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x1

    .line 3799
    invoke-virtual {v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setShowBackground(Z)V

    .line 3801
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setParentTouchInterceptor(Landroid/widget/ScrollView;)V

    .line 3803
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V

    .line 3805
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;

    invoke-direct {v13, v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v7, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3811
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$204;

    invoke-direct {v13, v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$204;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3817
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$205;

    invoke-direct {v13, v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$205;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3823
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$206;

    invoke-direct {v13, v15, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$206;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {v11, v13}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v179, v1

    const/4 v13, 0x5

    .line 3830
    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3831
    invoke-virtual {v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v1, 0x3

    .line 3832
    invoke-virtual {v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 3833
    invoke-virtual {v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    .line 3834
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    .line 3836
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x7

    .line 3837
    invoke-virtual {v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3839
    invoke-virtual {v3, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3840
    invoke-virtual {v3, v8, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3841
    invoke-virtual {v3, v9, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3842
    invoke-virtual {v3, v10, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3843
    invoke-virtual {v3, v11, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 3845
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3846
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3847
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3850
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;

    move-object/from16 v1, v178

    move-object/from16 v3, v179

    invoke-direct {v0, v15, v1, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    iput-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_4d
    const/16 v1, -0x10

    if-ne v0, v1, :cond_50

    .line 3861
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBezierMaskEnabled()Z

    move-result v0

    .line 3862
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isBezierMaskIn()Z

    move-result v1

    .line 3864
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V

    .line 3865
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->restoreOptions()V

    .line 3866
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiateMaskMode(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 3867
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;

    invoke-direct {v4, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V

    .line 3884
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3885
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a003e

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f08019c

    .line 3886
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v5, 0x7f08014d

    .line 3887
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v6, 0x7f080114

    .line 3888
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3890
    invoke-virtual {v4, v7, v8}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v8, "#e91e63"

    .line 3891
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    invoke-virtual {v4, v8, v9}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    .line 3893
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$209;

    invoke-direct {v8, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$209;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v8}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    if-eqz v1, :cond_4e

    .line 3899
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_21

    .line 3900
    :cond_4e
    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3902
    :goto_21
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3903
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v0, :cond_4f

    const/4 v5, 0x0

    goto :goto_22

    :cond_4f
    const/16 v5, 0x8

    .line 3904
    :goto_22
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3906
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$210;

    invoke-direct {v7, v15, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$210;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v5, v6, v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3914
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v8, 0x7f0c00f2

    invoke-virtual {v7, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3915
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3916
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    .line 3917
    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/4 v6, 0x5

    .line 3918
    invoke-virtual {v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3919
    new-instance v6, Landroid/view/View;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v7, "#d0d0d0"

    .line 3920
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3921
    invoke-virtual {v4, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3922
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3923
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3924
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3926
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$211;

    invoke-direct {v2, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$211;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->positiveAction:Ljava/lang/Runnable;

    .line 3935
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$212;

    invoke-direct {v2, v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$212;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZ)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_50
    const/16 v1, 0xa

    if-ne v0, v1, :cond_53

    .line 3945
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLetterSpacing()I

    move-result v0

    .line 3946
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0x1e

    const/16 v4, 0x64

    invoke-direct {v8, v2, v3, v4, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 3947
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c008d

    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x3

    move-object v2, v9

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 3948
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSpaceWords()Z

    move-result v2

    .line 3950
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3951
    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0063

    invoke-static {v4, v5, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v4, 0x7f08019e

    .line 3952
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Linfo/hoang8f/android/segmented/SegmentedGroup;

    const v5, 0x7f08025e

    .line 3953
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    .line 3956
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_23

    :cond_51
    const/4 v2, 0x1

    :goto_23
    const/4 v5, 0x0

    .line 3959
    invoke-virtual {v4, v2, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v2, "#e91e63"

    .line 3960
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    .line 3962
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;

    invoke-direct {v2, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v4, v2}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3973
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurve()I

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_24

    :cond_52
    const/4 v1, 0x1

    :goto_24
    invoke-virtual {v8, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setStep(I)V

    const/4 v1, 0x1

    .line 3974
    invoke-virtual {v8, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyButtonAsStopTrack(Z)V

    .line 3975
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;

    invoke-direct {v2, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$214;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v8, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 3987
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3988
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 3989
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3991
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3992
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3993
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$215;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$215;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 3999
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4000
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$216;

    invoke-direct {v1, v15, v8, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$216;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    :cond_53
    const/16 v1, 0x14

    if-ne v0, v1, :cond_54

    .line 4009
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLineSpacing()I

    move-result v0

    .line 4010
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v7, v1, v3, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4011
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c007d

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x3

    move-object v1, v8

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4012
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$217;

    invoke-direct {v1, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$217;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v7, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4019
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4020
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4021
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$218;

    invoke-direct {v1, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$218;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 4027
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4028
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$219;

    invoke-direct {v1, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$219;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    :cond_54
    const/16 v1, 0x13

    if-ne v0, v1, :cond_55

    .line 4035
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getCurve()I

    move-result v0

    .line 4036
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c010b

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v1, 0xb4

    invoke-virtual {v15, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v5

    const/4 v6, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4037
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0x14

    const/16 v4, 0x14

    const/16 v5, 0xb4

    invoke-virtual {v15, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v5

    const/4 v6, 0x5

    div-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    const/4 v2, 0x0

    .line 4038
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->toggleBubble(Ljava/lang/Boolean;)V

    .line 4040
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$220;

    invoke-direct {v2, v15, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$220;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4047
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4048
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4049
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$221;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$221;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 4055
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4056
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$222;

    invoke-direct {v2, v15, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$222;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    :cond_55
    const/16 v1, 0x40

    if-ne v0, v1, :cond_57

    .line 4063
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isShadow_3d_enabled()Z

    move-result v2

    .line 4064
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_color()I

    move-result v9

    .line 4065
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_transparency()I

    move-result v10

    .line 4066
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_radius()I

    move-result v11

    .line 4067
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getShadow_3d_expand()I

    move-result v12

    .line 4069
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_56

    const/4 v1, 0x0

    goto :goto_25

    :cond_56
    const/16 v1, 0x8

    .line 4070
    :goto_25
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 4071
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4072
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v8, 0x0

    move-object v3, v1

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 4074
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0080

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x2

    move-object v3, v13

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4075
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v14, v3, v4, v5, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4076
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c010d

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x3

    move-object v3, v8

    move v7, v11

    move/from16 v180, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4077
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-direct {v8, v3, v5, v4, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4078
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c007c

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/from16 v181, v7

    move v7, v12

    move/from16 v182, v11

    move-object v11, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4079
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x28

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4081
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$223;

    invoke-direct {v6, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$223;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v4, v5, v2, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4089
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$224;

    invoke-direct {v5, v15, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$224;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4096
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$225;

    invoke-direct {v5, v15, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$225;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4104
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$226;

    move-object/from16 v6, v181

    invoke-direct {v5, v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$226;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4113
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$227;

    invoke-direct {v5, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$227;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 4119
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4120
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4121
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4122
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4123
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4124
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4125
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4127
    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4130
    iget-object v3, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4131
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$228;

    move-object v0, v7

    move-object v1, v15

    move v3, v9

    move/from16 v4, v180

    move/from16 v5, v182

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$228;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_57
    const/16 v1, 0xc

    if-ne v0, v1, :cond_59

    .line 4144
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowEnabled()Z

    move-result v7

    .line 4145
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterShadowColor()I

    move-result v8

    .line 4146
    invoke-direct {v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->alphaPercentFromColor(I)I

    move-result v9

    .line 4147
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuter_shadow_radius()F

    move-result v0

    float-to-int v10, v0

    .line 4148
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuter_shadow_dx()I

    move-result v11

    .line 4149
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuter_shadow_dy()I

    move-result v12

    .line 4150
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getOuterGlowEnabled()Z

    move-result v13

    .line 4152
    new-instance v14, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_58

    const/4 v0, 0x0

    goto :goto_26

    :cond_58
    const/16 v0, 0x8

    .line 4153
    :goto_26
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4154
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4155
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v6, 0x0

    move-object v1, v0

    move v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 4157
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0080

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x2

    move-object v4, v0

    move-object v0, v6

    move-object/from16 v183, v4

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4158
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4160
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c010d

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v9

    move v5, v10

    move/from16 v184, v8

    move-object v8, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4161
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {v6, v1, v2, v3, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4162
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c012c

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v21}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4163
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0118

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x1

    const/16 v17, 0x3

    move-object v1, v4

    move-object/from16 v185, v4

    move/from16 v4, v16

    move-object/from16 v186, v5

    move v5, v11

    move-object/from16 v187, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4164
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    invoke-direct {v6, v1, v3, v4, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4165
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0119

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v16, 0x3

    move-object v1, v5

    move-object/from16 v188, v5

    move v5, v12

    move-object/from16 v189, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4166
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x46

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v2

    invoke-direct {v6, v1, v3, v2, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4168
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v5, v1, v13, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4169
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$229;

    move-object v1, v0

    move-object v0, v2

    move/from16 v190, v12

    move-object v12, v1

    move-object v1, v15

    move/from16 v191, v11

    move-object v11, v2

    move-object v2, v14

    move/from16 v192, v10

    move-object v10, v3

    move-object v3, v5

    move/from16 v193, v13

    move-object v13, v4

    move-object/from16 v4, v187

    move-object/from16 v194, v14

    move-object v14, v5

    move-object/from16 v5, v189

    move-object/from16 v195, v6

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$229;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-direct {v13, v10, v7, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4176
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;

    move-object v0, v6

    move-object v2, v13

    move-object/from16 v3, v187

    move-object/from16 v4, v189

    move-object/from16 v5, v195

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$230;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v14, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;->setOnCheckedChange(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4182
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$231;

    move-object/from16 v10, v183

    invoke-direct {v0, v15, v8, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$231;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v12, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4194
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$232;

    move-object v0, v11

    move-object v3, v14

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$232;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v187

    invoke-virtual {v6, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4204
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$233;

    move-object v0, v11

    move-object v4, v6

    move-object/from16 v196, v6

    move-object/from16 v6, v185

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$233;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v6, v189

    invoke-virtual {v6, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4215
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$234;

    move-object v0, v11

    move-object/from16 v4, v196

    move-object v5, v6

    move/from16 v197, v7

    move-object v7, v6

    move-object/from16 v6, v188

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$234;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v0, v195

    invoke-virtual {v0, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4228
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;

    invoke-direct {v1, v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    move-object/from16 v1, v194

    .line 4236
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4237
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4238
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4239
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v196

    .line 4240
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v186

    .line 4241
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4242
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v185

    .line 4243
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4244
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v188

    .line 4245
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4246
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4248
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4249
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4251
    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4252
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;

    move-object v0, v8

    move-object v1, v15

    move/from16 v2, v197

    move/from16 v3, v193

    move/from16 v4, v192

    move/from16 v5, v191

    move/from16 v6, v190

    move/from16 v7, v184

    invoke-direct/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$236;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZZIIII)V

    iput-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2b

    :cond_59
    const/16 v1, 0x30

    if-ne v0, v1, :cond_60

    const/16 v0, 0x78

    .line 4261
    invoke-virtual {v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v4

    .line 4262
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    mul-double v0, v0, v2

    double-to-int v3, v0

    .line 4264
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDEnabled()Z

    move-result v6

    .line 4265
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDViewType()I

    move-result v7

    .line 4266
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepth()I

    move-result v8

    .line 4267
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthFillType()I

    move-result v5

    .line 4268
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthColorFill()I

    move-result v16

    .line 4269
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthGradientFill()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v17

    .line 4270
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDDepthColorAutomatic()Z

    move-result v2

    .line 4271
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDDepthDarken()I

    move-result v1

    .line 4272
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDStokeInclude()Z

    move-result v0

    .line 4273
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationX()I

    move-result v14

    .line 4274
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationY()I

    move-result v13

    .line 4275
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    iget v12, v9, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    .line 4276
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDObliqueAngle()I

    move-result v11

    .line 4277
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isThreeDLightingEnabled()Z

    move-result v10

    .line 4278
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v9

    move/from16 v198, v9

    .line 4279
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingIntensity()I

    move-result v9

    move/from16 v199, v9

    .line 4280
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingShadow()I

    move-result v9

    move/from16 v200, v9

    .line 4281
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDLightingSpecularHardness()I

    move-result v9

    move/from16 v201, v11

    .line 4283
    new-instance v11, Landroid/widget/LinearLayout;

    move/from16 v202, v9

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_5a

    const/4 v9, 0x0

    goto :goto_27

    :cond_5a
    const/16 v9, 0x8

    .line 4284
    :goto_27
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v9, 0x1

    .line 4285
    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4287
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    move/from16 v203, v10

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move/from16 v204, v12

    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;

    invoke-direct {v12, v15, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v9, v10, v6, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4296
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v12, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4297
    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v205, v9

    const v9, 0x7f0a006d

    invoke-static {v10, v9, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v9, 0x7f08019d

    .line 4298
    invoke-virtual {v12, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Linfo/hoang8f/android/segmented/SegmentedGroup;

    move-object/from16 v206, v11

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 4299
    invoke-virtual {v10, v9, v11}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setLayerType(ILandroid/graphics/Paint;)V

    const-string v9, "#e91e63"

    .line 4301
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    invoke-virtual {v10, v9, v11}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setTintColor(II)V

    const v9, 0x7f08014f

    .line 4302
    invoke-virtual {v10, v9}, Linfo/hoang8f/android/segmented/SegmentedGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/widget/RadioButton;

    const v9, 0x7f080146

    .line 4303
    invoke-virtual {v10, v9}, Linfo/hoang8f/android/segmented/SegmentedGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    move-object/from16 v207, v11

    .line 4305
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    move-object/from16 v208, v9

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-object/from16 v209, v10

    const v10, 0x7f0c009e

    invoke-virtual {v9, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/4 v9, 0x3

    if-ne v5, v9, :cond_5b

    move v9, v3

    goto :goto_28

    :cond_5b
    move v9, v4

    :goto_28
    invoke-virtual {v15, v8, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v22

    const/16 v23, 0x3

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4306
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v210, v11

    const/4 v11, 0x3

    if-ne v5, v11, :cond_5c

    move v11, v3

    goto :goto_29

    :cond_5c
    move v11, v4

    :goto_29
    invoke-virtual {v15, v8, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result v11

    move-object/from16 v211, v12

    move/from16 v212, v13

    const/4 v12, 0x1

    const/16 v13, 0x64

    invoke-direct {v10, v9, v12, v13, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4307
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c009f

    invoke-virtual {v9, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4308
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v18, 0x1

    move/from16 v218, v6

    move/from16 v217, v8

    move/from16 v213, v198

    move/from16 v214, v199

    move/from16 v215, v200

    move/from16 v216, v202

    move-object/from16 v8, v205

    move-object/from16 v6, v208

    move-object v9, v12

    move/from16 v220, v4

    move-object/from16 v219, v8

    move-object/from16 v221, v10

    move/from16 v8, v203

    move-object/from16 v4, v209

    move-object v10, v11

    move/from16 v224, v3

    move/from16 v222, v201

    move-object/from16 v223, v206

    move-object/from16 v3, v207

    move-object/from16 v225, v210

    move/from16 v11, v18

    move-object/from16 v228, v12

    move/from16 v226, v204

    move-object/from16 v227, v211

    move v12, v5

    move-object/from16 v230, v13

    move/from16 v229, v212

    move/from16 v13, v16

    move/from16 v231, v14

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    move-object/from16 v14, v228

    .line 4309
    invoke-virtual {v14, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setIsAutomatic(Z)V

    const/4 v9, 0x1

    .line 4310
    invoke-virtual {v14, v9, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setShowAutomatic(ZZ)V

    .line 4311
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v11, 0x7f0c0097

    invoke-virtual {v9, v11}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/16 v18, 0x2

    move-object v9, v13

    move-object/from16 v232, v13

    move v13, v1

    move-object/from16 v233, v14

    move/from16 v14, v18

    invoke-direct/range {v9 .. v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4312
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x64

    invoke-direct {v9, v10, v11, v12, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4313
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f0c00c8

    invoke-virtual {v11, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v10

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4314
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v12, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$238;

    invoke-direct {v13, v15}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$238;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v11, v12, v0, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4324
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v13, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f0c0186

    invoke-virtual {v13, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v23, 0x1

    move-object/from16 v18, v12

    move/from16 v22, v231

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4325
    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v234, v0

    const/16 v0, -0x50

    move/from16 v235, v1

    const/16 v1, 0x50

    move-object/from16 v236, v11

    move/from16 v11, v231

    invoke-direct {v13, v14, v0, v1, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4326
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c0188

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v14

    move/from16 v22, v229

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4327
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v237, v2

    const/16 v2, -0x50

    move/from16 v238, v11

    const/16 v11, 0x50

    move-object/from16 v239, v10

    move/from16 v10, v229

    invoke-direct {v1, v0, v2, v11, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4328
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c018a

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v11

    move/from16 v22, v226

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4329
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move/from16 v240, v10

    const/16 v10, -0xb4

    move-object/from16 v242, v9

    move-object/from16 v241, v11

    move/from16 v11, v226

    const/16 v9, 0xb4

    invoke-direct {v2, v0, v10, v9, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4331
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v9, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "oblique angle"

    move-object/from16 v18, v0

    move/from16 v22, v222

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4332
    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v10, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v243, v2

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$239;

    invoke-direct {v2, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$239;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move/from16 v244, v11

    move/from16 v11, v222

    invoke-direct {v9, v10, v11, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 4350
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    .line 4353
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v10, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4354
    new-instance v2, Landroid/widget/LinearLayout;

    move/from16 v245, v11

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    .line 4355
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4356
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4358
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4359
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4360
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4361
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4362
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4363
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4365
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4366
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4367
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v246, v1

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$240;

    invoke-direct {v1, v15, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$240;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v11, v0, v8, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4376
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v247, v8

    const v8, 0x7f0c0114

    invoke-virtual {v1, v8}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v0

    move/from16 v22, v213

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4377
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v248, v11

    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$241;

    invoke-direct {v11, v15, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$241;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v249, v14

    move/from16 v14, v213

    invoke-direct {v1, v8, v14, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 4400
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    .line 4403
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v11, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/from16 v250, v14

    const v14, 0x7f0c0111

    invoke-virtual {v11, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x3

    move-object/from16 v18, v8

    move/from16 v22, v214

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4404
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v14, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    move/from16 v253, v5

    move-object/from16 v252, v12

    move-object/from16 v251, v13

    move/from16 v13, v214

    const/16 v5, 0x64

    const/4 v12, 0x0

    invoke-direct {v11, v14, v12, v5, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4405
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v14, 0x7f0c0159

    invoke-virtual {v5, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v12

    move/from16 v22, v215

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4406
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v255, v4

    move-object/16 v256, v6

    move/from16 v254, v13

    move/from16 v13, v215

    const/4 v4, 0x0

    const/16 v6, 0x64

    invoke-direct {v14, v5, v4, v6, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4407
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0122

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v6

    move/from16 v22, v216

    invoke-direct/range {v18 .. v23}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4408
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/16 v258, v2

    move/16 v257, v13

    move/from16 v13, v216

    const/16 v2, 0x64

    const/4 v15, 0x0

    invoke-direct {v5, v4, v15, v2, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4410
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4411
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4412
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4413
    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4414
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4415
    invoke-virtual {v9, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4416
    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4417
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne v7, v0, :cond_5d

    .line 4420
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4421
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v2, v258

    const/16 v1, 0x8

    .line 4422
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2a

    :cond_5d
    move-object/from16 v2, v258

    const/16 v1, 0x8

    const/4 v3, 0x3

    if-ne v7, v3, :cond_5e

    move-object/from16 v3, v256

    .line 4426
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4427
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4428
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4430
    :cond_5e
    :goto_2a
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$242;

    move-object/from16 v15, p0

    invoke-direct {v0, v15, v10, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$242;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v1, v255

    invoke-virtual {v1, v0}, Linfo/hoang8f/android/segmented/SegmentedGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 4448
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;

    move/from16 v18, v234

    move-object v0, v4

    move/from16 v19, v235

    move-object/from16 v3, v246

    move-object v1, v15

    move/16 v260, v7

    move/16 v259, v13

    move/from16 v20, v237

    move-object/from16 v13, v243

    move-object v7, v2

    move/from16 v2, v253

    move-object/16 v261, v9

    move-object v9, v3

    move/from16 v3, v224

    move-object/16 v262, v7

    move-object v7, v4

    move/from16 v4, v220

    move-object/16 v263, v10

    move/from16 v21, v253

    move-object v10, v5

    move-object/from16 v5, v225

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$243;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IIILcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v0, v221

    invoke-virtual {v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4460
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;

    move-object/from16 v2, v233

    invoke-direct {v1, v15, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 4466
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$245;

    move-object/from16 v3, v232

    invoke-direct {v1, v15, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$245;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v4, v242

    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4478
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$246;

    move-object/from16 v5, v252

    invoke-direct {v1, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$246;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v5, v251

    invoke-virtual {v5, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4487
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$247;

    move-object/from16 v5, v249

    invoke-direct {v1, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$247;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4496
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$248;

    move-object/from16 v5, v241

    invoke-direct {v1, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$248;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4505
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$249;

    invoke-direct {v1, v15, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$249;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4514
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$250;

    invoke-direct {v1, v15, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$250;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4523
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$251;

    invoke-direct {v1, v15, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$251;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4532
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    iget-object v6, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v7, 0x7f0c0181

    invoke-virtual {v6, v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v27}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    move-object/from16 v6, v223

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v227

    .line 4533
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4534
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v7, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v9, 0x7f0c009d

    invoke-virtual {v8, v9}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v225

    .line 4535
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4536
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v230

    .line 4537
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4538
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4539
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4540
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4541
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    move-object/from16 v0, v239

    .line 4542
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v236

    .line 4543
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4545
    :cond_5f
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0144

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v263

    .line 4546
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v262

    .line 4547
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4548
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4549
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4551
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v1, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0164

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v248

    .line 4552
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v261

    .line 4553
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4555
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, v219

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4556
    iget-object v0, v15, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4557
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;

    move-object v0, v14

    move-object v1, v15

    move/from16 v2, v218

    move/from16 v3, v260

    move/from16 v4, v217

    move/from16 v5, v19

    move/from16 v6, v18

    move/from16 v7, v21

    move/from16 v11, v247

    move/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v18, v240

    move/from16 v10, v20

    move/from16 v17, v238

    move/from16 v19, v244

    move/from16 v16, v245

    move/from16 v12, v250

    move/from16 v20, v257

    move/from16 v21, v259

    move/from16 v13, v254

    move-object/16 v264, v14

    move/from16 v14, v20

    move/from16 v15, v21

    invoke-direct/range {v0 .. v19}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIIZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ZZIIIIIIII)V

    move-object/from16 v0, v264

    move-object/from16 v9, p0

    iput-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2c

    :cond_60
    move-object v9, v15

    const/16 v1, 0x8

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_61

    .line 4574
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4575
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4576
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4577
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4578
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isPerspectiveEnabled()Z

    move-result v2

    .line 4579
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setComponentReference(Lcom/imaginstudio/imagetools/pixellab/AbstractComponent;)V

    .line 4580
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setVisibility(I)V

    .line 4581
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$19;

    invoke-direct {v1, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$19;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setPerspectiveToolInterface(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool$PerspectiveToolInterface;)V

    .line 4582
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v7

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v8

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v11

    iget v11, v11, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v11, v11

    add-float/2addr v8, v11

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v12

    iget v12, v12, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-direct {v0, v1, v7, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4584
    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v11, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->perspectiveTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v12, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint1:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v13, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint2:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v14, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint3:Landroid/graphics/PointF;

    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v15, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->perspectivePoint4:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/PerspectiveTool;->setHandles(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/RectF;)V

    .line 4586
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$253;

    invoke-direct {v7, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$253;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v0, v1, v2, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4593
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v7, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 4594
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4595
    sget v7, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 4596
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4597
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$254;

    invoke-direct {v7, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$254;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4604
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x32

    invoke-virtual {v9, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v10

    invoke-virtual {v9, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v8

    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    .line 4605
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 4606
    iget-object v8, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4607
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4608
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$255;

    move-object v0, v7

    move-object v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$255;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iput-object v7, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2c

    :cond_61
    const/16 v2, 0x2f

    if-ne v0, v2, :cond_64

    .line 4618
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4619
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossLightAngle()I

    move-result v10

    .line 4620
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossIntensity()I

    move-result v11

    .line 4621
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossAmbient()I

    move-result v12

    .line 4622
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossHardness()I

    move-result v13

    .line 4623
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getEmbossBevel()I

    move-result v14

    .line 4624
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isEmbossIncludeStroke()Z

    move-result v15

    .line 4627
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4628
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_62

    const/4 v1, 0x0

    :cond_62
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 4629
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4631
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$256;

    invoke-direct {v5, v9, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$256;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V

    invoke-direct {v1, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4645
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0114

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v16, 0x1

    move-object v3, v8

    move v7, v10

    move-object/16 v265, v2

    move-object v2, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4646
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$257;

    invoke-direct {v4, v9, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$257;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-direct {v8, v3, v10, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V

    .line 4669
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getScroller()Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/seekArc_ui;->ignoreInterceptTouchFor(Landroid/widget/ScrollView;)V

    .line 4671
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0111

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x3

    move-object v3, v7

    move-object/16 v266, v7

    move v7, v11

    move/16 v267, v10

    move-object v10, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4672
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v8, v3, v4, v5, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4673
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c010a

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/16 v268, v7

    move v7, v12

    move/16 v269, v11

    move-object v11, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4674
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v8, v3, v4, v5, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4675
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0122

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/16 v270, v7

    move v7, v13

    move/16 v271, v12

    move-object v12, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4676
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v8, v3, v4, v5, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4677
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c010c

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v7

    move-object/16 v272, v7

    move v7, v14

    move/16 v273, v13

    move-object v13, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4678
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4680
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$258;

    move-object/from16 v5, v266

    invoke-direct {v4, v9, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$258;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v11, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4694
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;

    move-object/from16 v6, v268

    invoke-direct {v4, v9, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$259;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v12, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4709
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$260;

    move-object/from16 v7, v270

    invoke-direct {v4, v9, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$260;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v13, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4724
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$261;

    move-object/from16 v8, v272

    invoke-direct {v4, v9, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$261;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4738
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4739
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4740
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;

    iget-object v4, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move/16 v274, v14

    const v14, 0x7f0c0046

    invoke-virtual {v10, v14}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v4, v10}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4741
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4742
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4743
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4744
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4745
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4746
    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4747
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4748
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4750
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 4751
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c00ea

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4752
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v4, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$262;

    invoke-direct {v5, v9}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$262;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    invoke-direct {v3, v4, v15, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4758
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4759
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4762
    :cond_63
    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4763
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4765
    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4766
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v2, v265

    move/from16 v3, v267

    move/from16 v4, v269

    move/from16 v5, v271

    move/from16 v6, v273

    move/from16 v7, v274

    move v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$263;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Ljava/lang/Boolean;IIIIIZ)V

    iput-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2c

    :cond_64
    const/16 v2, 0xd

    if-ne v0, v2, :cond_66

    .line 4781
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerEnabled()Z

    move-result v7

    .line 4782
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerColor()I

    move-result v8

    .line 4783
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerRadius()I

    move-result v6

    .line 4784
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerDx()I

    move-result v5

    .line 4785
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getInnerDy()I

    move-result v4

    .line 4787
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_65

    const/4 v1, 0x0

    .line 4788
    :cond_65
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4789
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4790
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    sget v13, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    const/4 v15, 0x0

    move-object v10, v2

    move v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 4792
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v10, 0x7f0c010d

    invoke-virtual {v0, v10}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v15, 0x3

    move-object v10, v1

    move v14, v6

    invoke-direct/range {v10 .. v15}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4793
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x19

    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v11, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4794
    new-instance v15, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f0c0118

    invoke-virtual {v10, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x3

    move-object v10, v15

    move v14, v5

    move-object/16 v275, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4795
    new-instance v15, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/16 v11, 0x46

    invoke-virtual {v9, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    neg-int v12, v12

    invoke-virtual {v9, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    invoke-direct {v15, v10, v12, v13, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4796
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v10, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v12, 0x7f0c0119

    invoke-virtual {v10, v12}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object v10, v14

    move-object/16 v276, v14

    move v14, v4

    move-object/16 v277, v15

    move/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4797
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v11, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const/16 v12, 0x46

    invoke-virtual {v9, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v13

    neg-int v13, v13

    invoke-virtual {v9, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v12

    invoke-direct {v10, v11, v13, v12, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4799
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v12, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$264;

    move-object v14, v0

    move-object v0, v13

    move-object v15, v1

    move-object v1, v9

    move-object/16 v278, v2

    move-object v2, v3

    move/16 v279, v8

    move-object v8, v3

    move-object v3, v14

    move/from16 v16, v4

    move-object/from16 v4, v277

    move/from16 v17, v5

    move-object v5, v10

    move/from16 v18, v6

    move-object/from16 v6, v278

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$264;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v11, v12, v7, v13}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4808
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$265;

    move-object v0, v12

    move-object v2, v11

    move-object/from16 v3, v277

    move-object v4, v10

    move-object/from16 v5, v278

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$265;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v14, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4818
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$266;

    move-object v0, v12

    move-object v3, v14

    move-object/from16 v6, v275

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$266;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    move-object/from16 v13, v277

    invoke-virtual {v13, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4829
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$267;

    move-object v0, v12

    move-object v4, v13

    move-object/from16 v6, v276

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$267;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4842
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$268;

    move-object v0, v6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$268;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    move-object/from16 v0, v278

    invoke-virtual {v0, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 4848
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4849
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4850
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v275

    .line 4851
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4852
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, v276

    .line 4853
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4854
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4856
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4857
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4859
    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4860
    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;

    move-object v0, v8

    move-object v1, v9

    move v2, v7

    move/from16 v3, v18

    move/from16 v4, v17

    move/from16 v5, v16

    move/from16 v6, v279

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V

    iput-object v8, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2c

    :cond_66
    const/16 v2, 0xb

    if-ne v0, v2, :cond_68

    .line 4868
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeEnabled()Z

    move-result v2

    .line 4869
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeColor()I

    move-result v10

    .line 4870
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeRadius()I

    move-result v11

    .line 4871
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeFillType()I

    move-result v12

    .line 4872
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getStrokeGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v13

    .line 4874
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_67

    const/4 v1, 0x0

    .line 4875
    :cond_67
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 4876
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4877
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    move-object v3, v1

    move v6, v12

    move v7, v10

    move-object v8, v13

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;-><init>(Landroid/content/Context;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 4879
    new-instance v14, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0124

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x3

    move-object v3, v14

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4880
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v4, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x19

    invoke-virtual {v9, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4882
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v5, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;

    invoke-direct {v6, v9, v0, v3, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$270;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V

    invoke-direct {v4, v5, v2, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4890
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$271;

    invoke-direct {v5, v9, v4, v1, v14}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$271;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4902
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$272;

    invoke-direct {v5, v9, v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$272;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v1, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setOnColorChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;)V

    .line 4909
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4910
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4911
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4914
    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4915
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4917
    iget-object v3, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4918
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;

    move-object v0, v7

    move-object v1, v9

    move v3, v11

    move v4, v12

    move v5, v10

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    iput-object v7, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto/16 :goto_2c

    :cond_68
    const/16 v2, 0xf

    if-ne v0, v2, :cond_69

    .line 4925
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationX()I

    move-result v0

    .line 4926
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextRotationY()I

    move-result v8

    .line 4927
    new-instance v10, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, -0xb4

    const/16 v3, 0xb4

    invoke-direct {v10, v1, v2, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4928
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c0128

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v1, v11

    move v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4929
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, -0xb4

    const/16 v4, 0xb4

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4930
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v4, 0x7f0c0129

    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v2, v12

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4931
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$274;

    invoke-direct {v2, v9, v10, v1, v11}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$274;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v10, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4940
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$275;

    invoke-direct {v2, v9, v10, v1, v12}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$275;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4949
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$276;

    invoke-direct {v2, v9, v0, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$276;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;II)V

    iput-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    .line 4955
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4956
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$277;

    invoke-direct {v2, v9, v10, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$277;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4963
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4964
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4965
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4966
    iget-object v0, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2c

    :cond_69
    const/4 v2, 0x0

    const/16 v3, 0x11

    if-ne v0, v3, :cond_6c

    .line 4968
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflectionEnabled:Z

    .line 4969
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reflection_dy:I

    .line 4972
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_6a

    const/4 v1, 0x0

    .line 4973
    :cond_6a
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v1, 0x1

    .line 4974
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4976
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v5, 0x7f0c0117

    invoke-virtual {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v15, 0x3

    move-object v10, v1

    move v14, v3

    invoke-direct/range {v10 .. v15}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    .line 4977
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object v5, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v9, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v6

    neg-int v6, v6

    const/16 v7, 0x1e

    invoke-virtual {v9, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result v7

    invoke-direct {v2, v5, v6, v7, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;-><init>(Landroid/content/Context;III)V

    .line 4979
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;

    iget-object v6, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$278;

    invoke-direct {v7, v9, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$278;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    invoke-direct {v5, v6, v0, v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;-><init>(Landroid/content/Context;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4987
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$279;

    invoke-direct {v6, v9, v5, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$279;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_toggle;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V

    invoke-virtual {v2, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setNotifyValueChange(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 4995
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4996
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4998
    iget-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4999
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5001
    iget-object v2, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5002
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$280;

    invoke-direct {v1, v9, v0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$280;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZI)V

    iput-object v1, v9, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAction:Ljava/lang/Runnable;

    goto :goto_2c

    :cond_6b
    :goto_2b
    move-object v9, v15

    :cond_6c
    :goto_2c
    return-void

    :array_0
    .array-data 4
        0x7f07018a
        0x7f07007b
        0x7f0701a0
    .end array-data

    const/4 v0, 0x0
.end method

.method private alphaPercentFromColor(I)I
    .locals 2

    const/4 v1, 0x0

    .line 5032
    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result p1

    return p1

    const/4 v1, 0x1
.end method

.method private createDummyShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 8

    .line 5058
    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    const-string v6, "dummyS"

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;FFLjava/lang/String;)V

    return-object v7

    const/4 v0, 0x0
.end method

.method private createDummyText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 5

    const/4 v4, 0x0

    .line 5061
    const/4 v4, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dummyT"

    const/high16 v3, -0x1000000

    invoke-direct {v0, v1, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object v0

    const/4 v0, 0x0
.end method

.method private getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 2

    const/4 v1, 0x3

    .line 5051
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 5052
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    return-object v0

    const/4 v1, 0x1
.end method

.method private getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    .locals 2

    const/4 v1, 0x0

    .line 5044
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 5045
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    return-object v0

    const/4 v1, 0x1
.end method

.method private getTextContainer()Lcom/imaginstudio/imagetools/pixellab/textContainer;
    .locals 2

    const/4 v1, 0x1

    .line 5065
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    return-object v0

    const/4 v1, 0x1
.end method

.method static final synthetic lambda$addControlsForMessage$10$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2457
    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    const/4 v0, 0x0
.end method

.method static final synthetic lambda$addControlsForMessage$17$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V
    .locals 1

    const/4 v0, 0x3

    .line 3128
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    const/4 v0, 0x0
.end method

.method public static newInstance(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;"
        }
    .end annotation

    const/4 v3, 0x2

    .line 364
    const/4 v3, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;-><init>()V

    .line 365
    const/4 v3, 0x0

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "editFor"

    .line 366
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "type"

    .line 367
    const/4 v3, 0x2

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "references"

    .line 368
    const/4 v3, 0x3

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 369
    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method private setLParamMargin(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 1

    const/4 v0, 0x2

    .line 5020
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V

    .line 5021
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V

    return-void

    const/4 v0, 0x0
.end method

.method private setLParamMarginHor(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 1

    const/4 v0, 0x2

    .line 5024
    const/4 v0, 0x3

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 5025
    const/4 v0, 0x0

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-void

    const/4 v0, 0x0
.end method

.method private setLParamMarginVer(Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 1

    const/4 v0, 0x2

    .line 5028
    const/4 v0, 0x3

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 5029
    const/4 v0, 0x0

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public DoBgImagesJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;I)V
    .locals 2

    const/4 v1, 0x2

    .line 234
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    .line 236
    const/4 v1, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/content/res/AssetManager;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void

    const/4 v1, 0x1
.end method

.method public DoStickersJob(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;II)V
    .locals 7

    const/4 v6, 0x2

    .line 113
    const/4 v6, 0x3

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    .line 114
    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->removeAll()V

    .line 115
    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->startLoading()V

    const/4 p2, 0x1

    if-ne p3, p2, :cond_1

    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    const-string p2, "stickers"

    :goto_0
    const/4 v6, 0x0

    move-object v4, p2

    goto :goto_1

    const/4 v6, 0x1

    :cond_1
    const/4 v6, 0x2

    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    const/4 v6, 0x3

    const-string p2, "emojis"

    goto :goto_0

    const/4 v6, 0x0

    .line 116
    const/4 v6, 0x1

    :cond_2
    const/4 v6, 0x2

    sget-boolean p2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z

    if-eqz p2, :cond_0

    const/4 v6, 0x3

    const/4 p2, 0x4

    if-ne p3, p2, :cond_0

    const/4 v6, 0x0

    const-string p2, "pro_stickers"

    goto :goto_0

    const/4 v6, 0x1

    .line 117
    const/4 v6, 0x2

    :goto_1
    const/4 v6, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 119
    const/4 v6, 0x0

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    move-object v0, p2

    move-object v1, p0

    move v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ILandroid/content/res/AssetManager;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;)V

    invoke-static {p2}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void

    const/4 v0, 0x2
.end method

.method colorToPercent(I)I
    .locals 1

    const/4 v0, 0x2

    mul-int/lit8 p1, p1, 0x64

    .line 5075
    const/4 v0, 0x3

    div-int/lit16 p1, p1, 0xff

    return p1

    const/4 v0, 0x0
.end method

.method public doCancelAction()V
    .locals 2

    const/4 v1, 0x1

    .line 467
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    return-void

    const/4 v1, 0x1
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x0

    .line 5070
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 5071
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

.method public getScroller()Landroid/widget/ScrollView;
    .locals 3

    const/4 v2, 0x0

    .line 5016
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    const/4 v0, 0x2
.end method

.method final synthetic lambda$addControlsForMessage$0$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x3

    .line 779
    const/4 v0, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bg_layout:Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setHue(I)V

    .line 780
    const/4 v0, 0x1

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$1$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 4

    const/4 v3, 0x3

    .line 1335
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V

    .line 1336
    const/4 v3, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->rect:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    if-ne p3, v0, :cond_0

    const/4 v3, 0x2

    const/4 p3, 0x0

    goto :goto_0

    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    const/16 p3, 0x8

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setVisibility(I)V

    .line 1337
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->getVisibility()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setVisibility(I)V

    .line 1338
    const/4 v3, 0x3

    invoke-virtual {p2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    const/4 v1, 0x3
.end method

.method final synthetic lambda$addControlsForMessage$11$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 2552
    invoke-virtual {p1, p7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 2553
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    const/4 p0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$12$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 2556
    invoke-virtual {p1, p7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 2557
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    const/4 p0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$13$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 2560
    invoke-virtual {p1, p7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 2561
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    const/4 p0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$14$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 0

    .line 2564
    invoke-virtual {p1, p7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 2565
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p3

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p4

    invoke-virtual {p5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    const/4 p0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$15$optionExpand(IIII)V
    .locals 2

    const/4 v1, 0x1

    .line 2568
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setEffects(IIII)V

    return-void

    const/4 v1, 0x1
.end method

.method final synthetic lambda$addControlsForMessage$16$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2602
    const/4 v0, 0x1

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 2603
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShapeOpacity(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$18$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 2

    const/4 v1, 0x0

    .line 3399
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    return-void

    const/4 v1, 0x1
.end method

.method final synthetic lambda$addControlsForMessage$19$optionExpand(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    const/4 v1, 0x3

    .line 4581
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setPerspectivePoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    const/4 v1, 0x1
.end method

.method final synthetic lambda$addControlsForMessage$2$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x2

    .line 1341
    const/4 v0, 0x3

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1342
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setBorderRadius(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$3$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x2

    .line 1345
    const/4 v0, 0x3

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1346
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setOpacity(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$4$optionExpand(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const/4 v1, 0x2

    .line 1349
    const/4 v1, 0x3

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    .line 1350
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setFillColor(I)V

    goto :goto_0

    const/4 v1, 0x2

    .line 1351
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    .line 1352
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setFillGradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1354
    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void

    const/4 v1, 0x1
.end method

.method final synthetic lambda$addControlsForMessage$5$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x3

    .line 1357
    const/4 v0, 0x0

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1358
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_width(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$6$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x3

    .line 1361
    const/4 v0, 0x0

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1362
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_alpha(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$7$optionExpand(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const/4 v1, 0x3

    .line 1365
    const/4 v1, 0x0

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    .line 1366
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_colorFill(I)V

    goto :goto_0

    const/4 v1, 0x3

    .line 1367
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x2

    .line 1368
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_gradientFill(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1370
    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void

    const/4 v1, 0x1
.end method

.method final synthetic lambda$addControlsForMessage$8$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1373
    const/4 v0, 0x1

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1374
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStroke_blur(I)V

    return-void

    const/4 v0, 0x0
.end method

.method final synthetic lambda$addControlsForMessage$9$optionExpand(I)V
    .locals 3

    const/4 v2, 0x0

    .line 1376
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v2, 0x2

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    const/4 v0, 0x2
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x2

    .line 5094
    const/4 v4, 0x3

    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    move-object v0, v1

    :goto_0
    const/4 v4, 0x3

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    .line 5096
    const/4 v4, 0x1

    const-class v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 5097
    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 5096
    const/4 v4, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    move-object v1, v0

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    :cond_1
    const/4 v4, 0x1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 5099
    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    const p3, 0x7f0a0033

    const/4 v0, 0x0

    .line 380
    const/4 v2, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const/16 p1, 0x3c

    .line 382
    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->newShapeSize:I

    .line 384
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f080096

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->controlsLayout:Landroid/widget/LinearLayout;

    .line 385
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f080148

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    .line 386
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f08014a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    .line 388
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    const p2, 0x7f080149

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneAbility:Landroid/widget/ImageButton;

    .line 390
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "editFor"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 391
    const/4 v2, 0x1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;

    invoke-direct {p2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 424
    const/4 v2, 0x2

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$4;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneButtonListener:Landroid/view/View$OnClickListener;

    .line 434
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneAbility:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->doneButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const/4 v2, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelAbility:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "type"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    .line 438
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "references"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    if-gez p1, :cond_0

    const/4 v2, 0x3

    const/16 p3, -0x10

    if-eq p1, p3, :cond_0

    const/4 v2, 0x0

    const/16 p3, -0x53

    if-ne p1, p3, :cond_3

    const/4 v2, 0x1

    .line 441
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    sget-object p3, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, p3, :cond_1

    const/4 v2, 0x0

    .line 443
    const/4 v2, 0x1

    :try_start_0
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x2

    :catch_0
    move-exception p2

    .line 445
    const/4 v2, 0x3

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    const/4 v2, 0x0

    .line 447
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    sget-object p3, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, p3, :cond_2

    const/4 v2, 0x3

    .line 449
    const/4 v2, 0x0

    :try_start_1
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getSelectedText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->reference:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->addAction(Landroid/os/Bundle;Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v2, 0x1

    :catch_1
    move-exception p2

    .line 451
    const/4 v2, 0x2

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    const/4 v2, 0x3

    .line 453
    const/4 v2, 0x0

    :cond_2
    const/4 v2, 0x1

    sget-object p3, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p2, p3, :cond_3

    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    const/4 v2, 0x0

    .line 455
    const/4 v2, 0x1

    :try_start_2
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveStatesForReferences(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    const/4 v2, 0x2

    :catch_2
    move-exception p2

    .line 457
    const/4 v2, 0x3

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 462
    const/4 v2, 0x0

    :cond_3
    const/4 v2, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V

    .line 464
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    return-object p1

    const/4 v0, 0x2
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x1

    .line 5082
    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    .line 5083
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    .line 5084
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5086
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doneEditing()V

    :cond_0
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 5088
    const/4 v1, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    return-void

    const/4 v1, 0x1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x2

    .line 5105
    const/4 v0, 0x3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void

    const/4 v0, 0x0
.end method

.method percentToColor(I)I
    .locals 1

    const/4 v0, 0x1

    mul-int/lit16 p1, p1, 0xff

    .line 5078
    const/4 v0, 0x2

    div-int/lit8 p1, p1, 0x64

    return p1

    const/4 v0, 0x0
.end method

.method setResetAbility(Landroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v2, 0x0

    .line 5108
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5109
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->resetAbility:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v0, 0x2
.end method

.method public toNum(II)I
    .locals 1

    const/4 v0, 0x0

    int-to-float p1, p1

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    const/4 v0, 0x0
.end method

.method public toPercent(II)I
    .locals 1

    const/4 v0, 0x2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1

    const/4 v0, 0x0
.end method
