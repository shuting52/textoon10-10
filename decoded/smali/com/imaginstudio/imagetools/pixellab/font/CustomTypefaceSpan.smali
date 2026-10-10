.class public Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1

    const-string v0, ""

    .line 17
    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 32
    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x2

    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x3

    .line 36
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    .line 39
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    const/4 v2, 0x2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    const/high16 v0, -0x41800000    # -0.25f

    .line 45
    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 48
    const/4 v2, 0x1

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const/4 v1, 0x0

    .line 22
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void

    const/4 v1, 0x1
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    const/4 v1, 0x3

    .line 27
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void

    const/4 v1, 0x1
.end method
