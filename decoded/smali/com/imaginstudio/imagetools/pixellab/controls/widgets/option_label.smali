.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;
.super Landroid/widget/LinearLayout;
.source "option_label.java"


# static fields
.field public static final SUFFIX_TYPE_DEGREE:I = 0x1

.field public static final SUFFIX_TYPE_NOTHING:I = 0x3

.field public static final SUFFIX_TYPE_PERCENTAGE:I = 0x2

.field public static final SUFFIX_TYPE_PX:I = 0x5


# instance fields
.field associatedSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field label:Landroid/widget/TextView;

.field value:Landroid/widget/TextView;

.field valueSuffix:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->associatedSlider:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->label:Landroid/widget/TextView;

    .line 40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->value:Landroid/widget/TextView;

    .line 41
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->valueSuffix:Landroid/widget/TextView;

    .line 42
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->label:Landroid/widget/TextView;

    const-string v0, "#757575"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->value:Landroid/widget/TextView;

    sget v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->valueSuffix:Landroid/widget/TextView;

    sget v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->value:Landroid/widget/TextView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->valueSuffix:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    const/4 p3, 0x3

    if-eq p5, p3, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->label:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->value:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    if-ne p5, p1, :cond_2

    const-string p1, "\u00b0"

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    if-ne p5, p1, :cond_3

    const-string p1, "%"

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    if-ne p5, p1, :cond_4

    const-string p1, "px"

    goto :goto_1

    :cond_4
    const-string p1, ""

    .line 50
    :goto_1
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->valueSuffix:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setOrientation(I)V

    .line 52
    new-instance p1, Ljava/text/Bidi;

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p1}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 55
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->addView(Landroid/view/View;)V

    .line 57
    :cond_5
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->value:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->addView(Landroid/view/View;)V

    .line 58
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->valueSuffix:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->addView(Landroid/view/View;)V

    if-nez p1, :cond_6

    .line 60
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->addView(Landroid/view/View;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public setDisplayText(Ljava/lang/String;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 69
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setValue(I)V
    .locals 2

    const/4 v1, 0x0

    .line 66
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->value:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method
