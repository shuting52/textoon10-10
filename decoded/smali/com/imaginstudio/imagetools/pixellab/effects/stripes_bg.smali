.class public Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;
.super Landroid/view/View;
.source "stripes_bg.java"


# instance fields
.field effectAlpha:I

.field numberToRepeat:I

.field originalRes:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 23
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    const/16 p1, 0x5a

    .line 24
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    .line 27
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    .line 23
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    const/16 p1, 0x5a

    .line 24
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    .line 32
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->init()V

    return-void
.end method

.method private static getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 89
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 90
    const/4 v1, 0x2

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 91
    const/4 v1, 0x3

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 92
    const/4 v1, 0x0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

    const/4 v1, 0x1
.end method


# virtual methods
.method public getEffectAlpha()I
    .locals 2

    const/4 v1, 0x2

    .line 39
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    return v0

    const/4 v1, 0x1
.end method

.method public getNumberToRepeat()I
    .locals 2

    const/4 v1, 0x1

    .line 48
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    return v0

    const/4 v1, 0x1
.end method

.method init()V
    .locals 3

    const/4 v2, 0x0

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "effects/stripe.png"

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->originalRes:Landroid/graphics/Bitmap;

    return-void

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x3

    const/16 v0, 0x9

    .line 58
    const/4 v7, 0x0

    new-array v0, v0, [F

    .line 59
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 61
    const/4 v7, 0x2

    aget v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    const/4 v1, 0x4

    .line 62
    const/4 v7, 0x3

    aget v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    .line 64
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 67
    const/4 v7, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->originalRes:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 70
    const/4 v7, 0x2

    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 71
    const/4 v7, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->originalRes:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 74
    const/4 v7, 0x1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    const/4 v7, 0x2

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    const/4 v7, 0x3

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 78
    const/4 v7, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 79
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x3
.end method

.method public setEffectAlpha(I)V
    .locals 1

    const/4 v0, 0x3

    .line 43
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->effectAlpha:I

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setNumberToRepeat(I)V
    .locals 1

    const/4 v0, 0x3

    .line 52
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->numberToRepeat:I

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
