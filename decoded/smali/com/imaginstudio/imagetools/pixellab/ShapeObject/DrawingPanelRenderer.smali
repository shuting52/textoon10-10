.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;
.super Ljava/lang/Object;
.source "DrawingPanelRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 87
    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    const/4 v5, 0x3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    const/4 v5, 0x0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, p0, v2, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public static getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x2

    .line 80
    const/4 v4, 0x3

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapTopPadding(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 81
    const/4 v4, 0x0

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapLeftPadding(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 82
    const/4 v4, 0x1

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapBottomPadding(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 83
    const/4 v4, 0x2

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapRightPadding(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 84
    const/4 v4, 0x3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v0, p0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    const/4 v0, 0x0
.end method

.method private static getBitmapBottomPadding(Landroid/graphics/Bitmap;)I
    .locals 11

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 61
    new-array v9, v8, [I

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_0
    if-ltz v10, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v9

    move v3, v8

    move v5, v10

    move v6, v8

    .line 63
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 64
    array-length v0, v9

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget v2, v9, v1

    .line 65
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v10, v10, 0x1

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v10, v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    :goto_2
    return v10

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0

    const/4 v1, 0x3
.end method

.method public static getBitmapFromDrawing(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x2

    .line 73
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getWidth()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->getHeight()I

    move-result v1

    mul-int v1, v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 76
    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method private static getBitmapLeftPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 31
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 33
    new-array v10, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v12

    move v8, v9

    .line 35
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 36
    array-length v1, v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, v10, v2

    .line 37
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 p0, v12, -0x1

    if-lez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_2
    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0

    const/4 v1, 0x1
.end method

.method private static getBitmapRightPadding(Landroid/graphics/Bitmap;)I
    .locals 11

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 47
    new-array v10, v9, [I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v10

    move v5, v0

    move v8, v9

    .line 49
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 50
    array-length v1, v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, v10, v2

    .line 51
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0

    const/4 v1, 0x3
.end method

.method private static getBitmapTopPadding(Landroid/graphics/Bitmap;)I
    .locals 13

    .line 17
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 19
    new-array v10, v8, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v5, v12

    move v6, v8

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    array-length v0, v10

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget v2, v10, v1

    .line 23
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p0, v12, -0x1

    if-lez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_2
    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0

    const/4 v1, 0x1
.end method
