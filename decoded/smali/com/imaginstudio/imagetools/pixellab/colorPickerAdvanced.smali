.class public Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;
.super Landroid/app/AlertDialog;
.source "colorPickerAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;
    }
.end annotation


# instance fields
.field acceptHex:Landroid/widget/ImageButton;

.field bValue:Landroid/widget/EditText;

.field currBlueVal:I

.field currGreenVal:I

.field currRedVal:I

.field dialogLayout:Landroid/view/View;

.field gValue:Landroid/widget/EditText;

.field hexValue:Landroid/widget/EditText;

.field justifiedEdit:Z

.field newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final onColorSelectedListener:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

.field rValue:Landroid/widget/EditText;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;)V
    .locals 8

    .line 38
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    .line 33
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    .line 34
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    .line 35
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    .line 190
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onColorSelectedListener:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

    .line 40
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0a0022

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    .line 42
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setView(Landroid/view/View;)V

    const p3, 0x104000a

    .line 43
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p3, v1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    .line 44
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f080173

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->rValue:Landroid/widget/EditText;

    .line 46
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800ec

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    .line 47
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f080057

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->bValue:Landroid/widget/EditText;

    .line 48
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f080100

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    .line 49
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08000d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    .line 50
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->rValue:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$1;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->bValue:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$3;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08008d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 152
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dpToPixels(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dpToPixels(I)I

    move-result v1

    invoke-direct {p3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 153
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dpToPixels(I)I

    move-result v1

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v1, 0x11

    .line 154
    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 155
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    .line 156
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {p1, v1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setRGBFields(I)V

    .line 159
    invoke-direct {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)I
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 24
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->getCurrentColor()I

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;I)V
    .locals 1

    const/4 v0, 0x3

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField(I)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;
    .locals 1

    const/4 v0, 0x2

    .line 24
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->onColorSelectedListener:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

    return-object p0

    const/4 v0, 0x0
.end method

.method private getCurrentColor()I
    .locals 4

    const/4 v3, 0x1

    .line 223
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method private updateHexField(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 162
    const/4 v4, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    :try_start_0
    const-string v1, "%06X"

    .line 165
    const/4 v4, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    and-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x3

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 170
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 173
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method commitEditTextValue(Landroid/widget/EditText;)I
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    .line 204
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 210
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x2

    :catch_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    const/16 v3, 0xff

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    const/4 v4, 0x2

    .line 215
    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 216
    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const/4 v4, 0x3

    return v2

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/4 v4, 0x1

    return v0

    const/4 v0, 0x0
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x3

    .line 176
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 177
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

.method setRGBFields(I)V
    .locals 2

    const/4 v1, 0x3

    .line 183
    const/4 v1, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    .line 184
    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    .line 185
    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    .line 186
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->bValue:Landroid/widget/EditText;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currBlueVal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->rValue:Landroid/widget/EditText;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currRedVal:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method

.method updateHexField()V
    .locals 2

    const/4 v1, 0x3

    .line 180
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->getCurrentColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField(I)V

    return-void

    const/4 v1, 0x1
.end method
