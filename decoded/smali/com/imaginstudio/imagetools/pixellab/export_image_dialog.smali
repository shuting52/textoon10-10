.class public Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;
.super Landroid/support/v7/app/AlertDialog;
.source "export_image_dialog.java"


# instance fields
.field customDims:Landroid/widget/LinearLayout;

.field dialogLayout:Landroid/view/View;

.field format:Landroid/widget/Spinner;

.field public gallerySaveButton:Landroid/widget/Button;

.field public heightVal:Landroid/widget/EditText;

.field quality:Landroid/widget/Spinner;

.field public shareButton:Landroid/widget/Button;

.field public widthVal:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZIIZ)V
    .locals 6

    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a005c

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->setView(Landroid/view/View;IIII)V

    .line 43
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/AdView;

    const/16 v0, 0x8

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 46
    sget-boolean v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->isPremium:Z

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 49
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f0800b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    .line 59
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f08025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    .line 60
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f0800ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    .line 61
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->format:Landroid/widget/Spinner;

    const/4 p1, 0x1

    if-eqz p7, :cond_1

    .line 63
    iget-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->format:Landroid/widget/Spinner;

    invoke-virtual {p7, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 65
    :cond_1
    iget-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v0, 0x7f080169

    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p7

    check-cast p7, Landroid/widget/Spinner;

    iput-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->quality:Landroid/widget/Spinner;

    .line 66
    iget-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->quality:Landroid/widget/Spinner;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;II)V

    invoke-virtual {p7, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    if-nez p4, :cond_2

    .line 106
    sget p1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->DIM_PRESET_DEFAULT:I

    invoke-direct {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->applyRes(III)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-direct {p0, p5, p6}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->setDims(II)V

    .line 109
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->customDims:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->quality:Landroid/widget/Spinner;

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f080181

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->gallerySaveButton:Landroid/widget/Button;

    .line 114
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const p2, 0x7f080180

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->shareButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;III)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 27
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->applyRes(III)V

    return-void

    const/4 v0, 0x0
.end method

.method private applyRes(III)V
    .locals 3

    const/4 v2, 0x3

    if-lt p2, p3, :cond_0

    const/4 v2, 0x0

    int-to-float p3, p3

    int-to-float v0, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    mul-float p3, p3, v0

    float-to-int p2, p3

    .line 139
    const/4 v2, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    int-to-float p2, p2

    int-to-float v0, p1

    int-to-float p3, p3

    div-float/2addr v0, p3

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 145
    const/4 v2, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method private setDims(II)V
    .locals 4

    const/4 v3, 0x1

    .line 132
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->widthVal:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->heightVal:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public getSelectedFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 3

    const/4 v2, 0x1

    .line 161
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->format:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x3

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/4 v2, 0x2

    return-object v0

    const/4 v0, 0x2
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    .line 152
    const/4 v3, 0x1

    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onStart()V

    .line 153
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    .line 154
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 155
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public setOnGalleryButtonClicked(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x0

    .line 117
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->gallerySaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setOnShareButtonClicked(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x3

    .line 129
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->shareButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setOnSocialMediaShare(Landroid/view/View$OnClickListener;)V
    .locals 5

    const/4 v4, 0x2

    .line 120
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f0801af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 121
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v4, 0x2

    .line 122
    const/4 v4, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 123
    const/4 v4, 0x0

    instance-of v3, v2, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 124
    const/4 v4, 0x2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v4, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    return-void

    const/4 v0, 0x0
.end method
