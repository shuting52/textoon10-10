.class public Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;
.super Landroid/view/View;
.source "BackgroundImageHolder.java"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field brightness:I

.field contrast:I

.field private currBitmap:Landroid/graphics/Bitmap;

.field hue:I

.field pntColor:Landroid/graphics/Paint;

.field pntGradient:Landroid/graphics/Paint;

.field pntImage:Landroid/graphics/Paint;

.field pntImageCircle:Landroid/graphics/Paint;

.field renderMode:Z

.field renderScaleF:F

.field saturation:I

.field private usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    const/high16 p2, 0x3f800000    # 1.0f

    .line 29
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderScaleF:F

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    .line 99
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    .line 100
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    .line 101
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x64

    invoke-direct {v0, p1, p1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 118
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    .line 119
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    .line 120
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 121
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    .line 122
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 123
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    .line 124
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method private calculateContrastColor(I)Z
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 208
    const/4 v4, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x3

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 209
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 210
    const/4 v4, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 211
    const/4 v4, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float v0, v0

    const v3, 0x3e991687    # 0.299f

    mul-float v0, v0, v3

    int-to-float v2, v2

    const v3, 0x3f1645a2    # 0.587f

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    int-to-float p1, p1

    const v2, 0x3de978d5    # 0.114f

    mul-float p1, p1, v2

    add-float/2addr v0, p1

    const/high16 p1, 0x433a0000    # 186.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    const/4 v4, 0x0

    const/4 v1, 0x1

    :cond_1
    const/4 v4, 0x1

    return v1

    const/4 v0, 0x0
.end method

.method private unloadImage()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 278
    const/4 v1, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x2

    .line 178
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float p2, p2

    mul-float v1, v1, p2

    float-to-int v1, v1

    iget v3, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v2

    int-to-float p3, p3

    mul-float v3, v3, p3

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v2

    mul-float v4, v4, p2

    float-to-int p2, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v2

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-direct {v0, v1, v3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public applyEffects()V
    .locals 5

    const/4 v4, 0x1

    .line 89
    const/4 v4, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    if-nez v0, :cond_1

    const/4 v4, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    if-nez v0, :cond_1

    const/4 v4, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    if-nez v0, :cond_1

    const/4 v4, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    const/4 v0, 0x0

    goto :goto_1

    const/4 v4, 0x1

    .line 90
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    invoke-static {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/effects/ColorFilterGenerator;->adjustColor(IIII)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 92
    const/4 v4, 0x1

    :goto_1
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 93
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 95
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public contrastColorIsDark()Z
    .locals 3

    const/4 v2, 0x3

    .line 216
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    const/high16 v0, -0x1000000

    .line 219
    const/4 v2, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getColorAtTopLeft()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    const/4 v2, 0x3

    :catch_0
    move-exception v1

    .line 222
    const/4 v2, 0x0

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 224
    const/4 v2, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->calculateContrastColor(I)Z

    move-result v0

    return v0

    .line 226
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    .line 227
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v2, 0x3

    .line 228
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->loadBitmap()V

    .line 230
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    .line 232
    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 233
    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->calculateContrastColor(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    return v1

    :cond_2
    const/4 v2, 0x2

    return v1

    .line 241
    const/4 v2, 0x3

    :cond_3
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->calculateContrastColor(I)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method flipPortion(Landroid/graphics/RectF;ZZ)Landroid/graphics/RectF;
    .locals 5

    const/4 v4, 0x2

    .line 184
    const/4 v4, 0x3

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v2, v1, v2

    goto :goto_0

    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    :goto_0
    const/4 v4, 0x3

    if-eqz p3, :cond_1

    const/4 v4, 0x0

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v1, v3

    goto :goto_1

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    :goto_1
    const/4 v4, 0x3

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float p2, v1, p2

    goto :goto_2

    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    iget p2, p1, Landroid/graphics/RectF;->right:F

    :goto_2
    const/4 v4, 0x3

    if-eqz p3, :cond_3

    const/4 v4, 0x0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    goto :goto_3

    const/4 v4, 0x1

    :cond_3
    const/4 v4, 0x2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    :goto_3
    const/4 v4, 0x3

    invoke-direct {v0, v2, v3, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    const/4 v0, 0x0
.end method

.method public getBrightness()I
    .locals 2

    const/4 v1, 0x1

    .line 44
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    return v0

    const/4 v1, 0x1
.end method

.method public getContrast()I
    .locals 2

    const/4 v1, 0x0

    .line 53
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    return v0

    const/4 v1, 0x1
.end method

.method public getContrastColor()I
    .locals 2

    const/4 v1, 0x3

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrastColorIsDark()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const v0, -0xbbbbbc

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x2

    .line 291
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    return-object v0

    const/4 v0, 0x2
.end method

.method public getHue()I
    .locals 2

    const/4 v1, 0x3

    .line 62
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    return v0

    const/4 v1, 0x1
.end method

.method getOvalPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 8

    const/4 v7, 0x2

    .line 171
    const/4 v7, 0x3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 172
    const/4 v7, 0x0

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 173
    const/4 v7, 0x1

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p1, v5

    int-to-float p1, p1

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 174
    const/4 v7, 0x2

    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method getRenderScaleF()F
    .locals 2

    const/4 v1, 0x0

    .line 38
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderScaleF:F

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x1

    return v0

    const/4 v1, 0x1
.end method

.method public getSaturation()I
    .locals 2

    const/4 v1, 0x3

    .line 71
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    return v0

    const/4 v1, 0x1
.end method

.method public getUsedImage()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;
    .locals 2

    const/4 v1, 0x2

    .line 295
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    return-object v0

    const/4 v1, 0x1
.end method

.method public hasTransparency()Z
    .locals 5

    const/4 v4, 0x1

    .line 281
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x3

    .line 282
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v3, 0xff

    if-eq v0, v3, :cond_0

    const/4 v4, 0x1

    const/4 v1, 0x1

    :cond_0
    const/4 v4, 0x2

    return v1

    .line 283
    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v4, 0x1

    .line 284
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->hasAlpha()Z

    move-result v0

    return v0

    .line 285
    const/4 v4, 0x3

    :cond_2
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    const/4 v4, 0x1

    .line 286
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    :cond_3
    const/4 v4, 0x2

    const/4 v1, 0x1

    :cond_4
    const/4 v4, 0x3

    return v1

    :cond_5
    const/4 v4, 0x0

    return v1

    const/4 v0, 0x0
.end method

.method public loadBitmap()V
    .locals 10

    const/4 v9, 0x2

    .line 254
    const/4 v9, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v9, 0x0

    .line 255
    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    .line 256
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getRenderScaleF()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getRenderScaleF()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 257
    const/4 v9, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v3

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x42c80000    # 100.0f

    if-ne v3, v4, :cond_2

    const/4 v9, 0x0

    .line 258
    const/4 v9, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object v3

    .line 259
    const/4 v9, 0x2

    aget v4, v3, v6

    int-to-float v4, v4

    if-eqz v0, :cond_0

    const/4 v9, 0x3

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v8

    goto :goto_0

    const/4 v9, 0x0

    :cond_0
    const/4 v9, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    const/4 v9, 0x2

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 260
    const/4 v9, 0x3

    aget v3, v3, v5

    int-to-float v3, v3

    if-eqz v0, :cond_1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v7, v0, v8

    :cond_1
    const/4 v9, 0x1

    mul-float v3, v3, v7

    float-to-int v0, v3

    .line 261
    const/4 v9, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 262
    const/4 v9, 0x3

    invoke-static {v4, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    .line 261
    const/4 v9, 0x0

    invoke-static {v3, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    const/4 v9, 0x1

    .line 263
    const/4 v9, 0x2

    :cond_2
    const/4 v9, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getSourceType()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object v3

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v3, v4, :cond_5

    const/4 v9, 0x0

    .line 264
    const/4 v9, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I

    move-result-object v3

    .line 265
    const/4 v9, 0x2

    aget v4, v3, v6

    int-to-float v4, v4

    if-eqz v0, :cond_3

    const/4 v9, 0x3

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v8

    goto :goto_1

    const/4 v9, 0x0

    :cond_3
    const/4 v9, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    const/4 v9, 0x2

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 266
    const/4 v9, 0x3

    aget v3, v3, v5

    int-to-float v3, v3

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v7, v0, v8

    :cond_4
    const/4 v9, 0x1

    mul-float v3, v3, v7

    float-to-int v0, v3

    .line 267
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getImageSource()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 268
    const/4 v9, 0x3

    invoke-static {v4, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result v0

    .line 267
    const/4 v9, 0x0

    invoke-static {v3, v5, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->loadBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    const/4 v9, 0x1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 272
    const/4 v9, 0x2

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    .line 273
    const/4 v9, 0x3

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    const/4 v9, 0x0

    :goto_2
    const/4 v9, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x3

    .line 129
    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    const-string v0, "#f44336"

    .line 132
    const/4 v5, 0x3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    .line 135
    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    .line 136
    const/4 v5, 0x3

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    .line 137
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->shouldUnloadBitmap:Z

    .line 140
    const/4 v5, 0x1

    :cond_1
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v5, 0x3

    .line 141
    const/4 v5, 0x0

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    .line 142
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    const/4 v5, 0x3

    .line 144
    const/4 v5, 0x0

    :cond_2
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 v5, 0x2

    .line 145
    const/4 v5, 0x3

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    .line 146
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getCurrGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 147
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntGradient:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    const/4 v5, 0x2

    .line 148
    const/4 v5, 0x3

    :cond_3
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    const/4 v5, 0x1

    .line 149
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/4 v5, 0x3

    .line 150
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->loadBitmap()V

    .line 152
    const/4 v5, 0x1

    :cond_4
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    const/4 v5, 0x3

    .line 153
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v0, :cond_5

    const/4 v5, 0x2

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    const/4 v5, 0x3

    :cond_5
    const/4 v5, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v5, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    :cond_6
    const/4 v5, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 155
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 157
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getBitmapPortion()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipH()Z

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isFlipV()Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->flipPortion(Landroid/graphics/RectF;ZZ)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->rotateRect(Landroid/graphics/Rect;I)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 159
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->isCircular()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v5, 0x0

    .line 161
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->getRotation()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->rotateRect(Landroid/graphics/Rect;I)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->getOvalPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->pntImageCircle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 163
    const/4 v5, 0x2

    :cond_7
    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    const/4 v5, 0x0

    :cond_8
    const/4 v5, 0x1

    :goto_1
    const/4 v5, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    if-eqz p1, :cond_9

    const/4 v5, 0x3

    .line 167
    const/4 v5, 0x0

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    :cond_9
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x3

    .line 198
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 199
    const/4 v0, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->bounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    const/4 v0, 0x0
.end method

.method rotateRect(Landroid/graphics/Rect;I)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x3

    .line 190
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 191
    const/4 v3, 0x1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 192
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-virtual {v1, p2, v2, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 193
    const/4 v3, 0x3

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0

    const/4 v1, 0x3
.end method

.method public setBrightness(I)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    .line 49
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void

    const/4 v0, 0x0
.end method

.method public setContrast(I)V
    .locals 1

    const/4 v0, 0x1

    .line 57
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void

    const/4 v0, 0x0
.end method

.method public setEffectsNoUpdate(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->brightness:I

    .line 81
    const/4 v0, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->contrast:I

    .line 82
    const/4 v0, 0x0

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    .line 83
    const/4 v0, 0x1

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    .line 84
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void

    const/4 v0, 0x0
.end method

.method public setHue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->hue:I

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void

    const/4 v0, 0x0
.end method

.method public setRenderMode(ZF)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderMode:Z

    .line 34
    const/4 v0, 0x2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->renderScaleF:F

    const/4 p1, 0x0

    .line 35
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->currBitmap:Landroid/graphics/Bitmap;

    return-void

    const/4 v0, 0x0
.end method

.method public setSaturation(I)V
    .locals 1

    const/4 v0, 0x1

    .line 75
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->saturation:I

    .line 76
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->applyEffects()V

    return-void

    const/4 v0, 0x0
.end method

.method public setUsedImage(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/BackgroundImageHolder;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    return-void

    const/4 v0, 0x0
.end method
