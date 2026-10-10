.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;
.super Landroid/widget/LinearLayout;
.source "preset_ui.java"


# instance fields
.field clickableArea:Landroid/widget/ImageButton;

.field private currHeight:I

.field private currWidth:I

.field imageDisplay:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currHeight:I

    .line 30
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currWidth:I

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->init(IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 29
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currHeight:I

    .line 30
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currWidth:I

    .line 56
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->init(IIIZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 25
    const/4 v0, 0x2

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currHeight:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I
    .locals 1

    const/4 v0, 0x0

    .line 25
    const/4 v0, 0x1

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currWidth:I

    return p0

    const/4 v0, 0x0
.end method


# virtual methods
.method public ForStyle()V
    .locals 4

    const/4 v3, 0x3

    .line 92
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->imageDisplay:Landroid/widget/ImageView;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08015b

    .line 116
    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080159

    .line 117
    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070156

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    const/4 v1, 0x3
.end method

.method init(IIIZ)V
    .locals 3

    const/4 v2, 0x0

    .line 33
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0052

    invoke-static {v0, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f08015a

    .line 34
    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->imageDisplay:Landroid/widget/ImageView;

    const v0, 0x7f080157

    .line 35
    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->clickableArea:Landroid/widget/ImageButton;

    .line 36
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->clickableArea:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    const v0, 0x7f08015c

    .line 37
    const/4 v2, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->labelView:Landroid/widget/TextView;

    const v0, 0x7f08015b

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    .line 39
    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    const/4 v2, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    const/4 v2, 0x2

    if-lez p3, :cond_1

    const/4 v2, 0x3

    .line 43
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->imageDisplay:Landroid/widget/ImageView;

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    const/4 v2, 0x1

    if-eqz p4, :cond_2

    const/4 v2, 0x2

    .line 46
    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f070154

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x2

    .line 122
    const/4 v0, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 123
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currWidth:I

    .line 124
    const/4 v0, 0x1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->currHeight:I

    return-void

    const/4 v0, 0x0
.end method

.method public setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 59
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->imageDisplay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->clickableArea:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setDeleteAction(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f080158

    .line 63
    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    const/4 v3, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$1;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x3
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    .line 88
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->labelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->labelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x2
.end method

.method public setShareAction(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f08015d

    .line 79
    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const/4 v3, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$2;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x3
.end method
