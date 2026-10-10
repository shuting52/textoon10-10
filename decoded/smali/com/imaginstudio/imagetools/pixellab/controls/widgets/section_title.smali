.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;
.super Landroid/widget/LinearLayout;
.source "section_title.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    if-eqz p2, :cond_0

    .line 24
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->section_title:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    :cond_0
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;->init(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;->init(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method init(Ljava/lang/String;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 33
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a005d

    invoke-static {v0, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080196

    .line 34
    const/4 v2, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/section_title;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    const/4 v2, 0x2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x2
.end method
