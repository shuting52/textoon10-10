.class public Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;
.super Landroid/app/AlertDialog;
.source "shapesPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;
    }
.end annotation


# instance fields
.field dialogLayout:Landroid/view/View;

.field shapeEvent:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V
    .locals 7

    .line 32
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->shapeEvent:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    .line 34
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a0061

    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    .line 36
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->setView(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayout;

    .line 61
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0801ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;->values()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 68
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 69
    new-instance v5, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    const/16 v6, 0x46

    .line 70
    invoke-virtual {p0, v6}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dpToPixels(I)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    iput v6, v5, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    const/4 v6, 0x5

    .line 71
    invoke-virtual {p0, v6}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dpToPixels(I)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    iput v6, v5, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    iput v6, v5, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    iput v6, v5, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 72
    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;

    invoke-direct {v5, p0, p2, v3}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    invoke-virtual {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 86
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 88
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
