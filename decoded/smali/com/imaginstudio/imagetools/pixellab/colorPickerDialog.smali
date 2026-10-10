.class public Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;
.super Landroid/app/AlertDialog;
.source "colorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;
    }
.end annotation


# instance fields
.field private colorPickerView:Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

.field dialogLayout:Landroid/view/View;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final onColorSelectedListener:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V
    .locals 9

    .line 38
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$7;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 39
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->onColorSelectedListener:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;

    .line 40
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0a0023

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x104000a

    .line 42
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/high16 p3, 0x1040000

    .line 43
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->setView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08008c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    .line 47
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(II)V

    .line 48
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f080087

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 50
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dpToPixels(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dpToPixels(I)I

    move-result v0

    invoke-direct {p3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x3

    .line 51
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dpToPixels(I)I

    move-result v1

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 54
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;-><init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1, v1, v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08008a

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Landroid/widget/TextView;

    .line 58
    invoke-direct {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->describeColor(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08017f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    const/4 p1, 0x1

    .line 60
    invoke-virtual {v4, p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->initialize(II)V

    .line 61
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {v4, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColorListener(Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V

    .line 67
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f080255

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    const/4 p1, 0x2

    .line 68
    invoke-virtual {v5, p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->initialize(II)V

    .line 69
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$2;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {v5, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColorListener(Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V

    .line 75
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f08004c

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    .line 76
    invoke-virtual {v6, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->initialize(II)V

    .line 77
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$3;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {v6, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColorListener(Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V

    .line 84
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f080154

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 85
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;

    move-object v2, p2

    move-object v3, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;Landroid/widget/TextView;)V

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setOnColorChangedListener(Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;)V

    .line 110
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f080089

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 32
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->colorPickerView:Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->describeColor(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;
    .locals 1

    const/4 v0, 0x3

    .line 32
    const/4 v0, 0x0

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->onColorSelectedListener:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;

    return-object p0

    const/4 v0, 0x0
.end method

.method private describeColor(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    .line 126
    const/4 v5, 0x3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#%06X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0xffffff

    and-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v5, 0x0

    :catch_0
    const-string p1, "error"

    :goto_0
    const/4 v5, 0x1

    return-object p1

    const/4 v1, 0x1
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x3

    .line 144
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 145
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

.method public onStart()V
    .locals 3

    const/4 v2, 0x3

    .line 136
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 137
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 138
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 139
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method
