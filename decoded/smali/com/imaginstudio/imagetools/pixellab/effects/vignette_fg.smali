.class public Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;
.super Landroid/view/View;
.source "vignette_fg.java"


# instance fields
.field vignetteColorA:I

.field vignetteColorB:I

.field vignetteColorG:I

.field vignetteColorR:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    .line 19
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    .line 20
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    const/16 p1, 0xaa

    .line 21
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    .line 24
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    .line 19
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    .line 20
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    const/16 p1, 0xaa

    .line 21
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    .line 29
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->init()V

    return-void
.end method


# virtual methods
.method public getVignetteColor()I
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 83
    const/4 v3, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public getVignetteColorAlpha()I
    .locals 2

    const/4 v1, 0x2

    .line 86
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    return v0

    const/4 v1, 0x1
.end method

.method init()V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    .line 37
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/16 v1, 0x9

    .line 38
    new-array v1, v1, [F

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    .line 41
    aget v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    const/4 v3, 0x4

    .line 42
    aget v1, v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    .line 45
    new-instance v10, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 47
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 48
    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 49
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getHeight()I

    move-result v7

    invoke-direct {v5, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v6, v1, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v6, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v6, 0x3

    .line 53
    new-array v15, v6, [I

    aput v4, v15, v2

    aput v4, v15, v1

    const/4 v1, 0x2

    aput v3, v15, v1

    .line 54
    new-array v1, v6, [F

    fill-array-data v1, :array_0

    .line 55
    new-instance v2, Landroid/graphics/RadialGradient;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v12, v3

    .line 56
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v13, v3

    .line 57
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v3, v4

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v14, v3, v4

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v11, v2

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 61
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v6, v1, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 64
    invoke-virtual {v2, v3}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 65
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getWidth()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->getHeight()I

    move-result v1

    int-to-float v9, v1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    const/4 v1, 0x3
.end method

.method public setVignetteAlpha(I)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorA:I

    .line 80
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setVignetteColor(I)V
    .locals 2

    const/4 v1, 0x0

    .line 73
    const/4 v1, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorB:I

    .line 74
    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorR:I

    .line 75
    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->vignetteColorG:I

    .line 76
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/effects/vignette_fg;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
