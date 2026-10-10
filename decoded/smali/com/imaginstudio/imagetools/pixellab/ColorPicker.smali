.class public Lcom/imaginstudio/imagetools/pixellab/ColorPicker;
.super Landroid/view/View;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;
    }
.end annotation


# instance fields
.field private alphaVal:I

.field private colorHSV:[F

.field private colorPointerPaint:Landroid/graphics/Paint;

.field private colorPointerRad:I

.field private colorWheelBitmap:Landroid/graphics/Bitmap;

.field private colorWheelPaint:Landroid/graphics/Paint;

.field private colorWheelRadius:I

.field mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 48
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->padding:I

    const/4 p1, 0x5

    .line 49
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerRad:I

    const/4 p1, 0x3

    .line 62
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/16 p1, 0xff

    .line 63
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    .line 135
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    .line 48
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->padding:I

    const/4 p1, 0x5

    .line 49
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerRad:I

    const/4 p1, 0x3

    .line 62
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/16 p1, 0xff

    .line 63
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    .line 130
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xa

    .line 48
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->padding:I

    const/4 p1, 0x5

    .line 49
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerRad:I

    const/4 p1, 0x3

    .line 62
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/16 p1, 0xff

    .line 63
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    .line 125
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->init()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createColorWheelBitmap(I)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 190
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xd

    .line 196
    new-array v2, v2, [I

    const/4 v3, 0x3

    .line 197
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 198
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    mul-int/lit8 v6, v5, 0x1e

    add-int/lit16 v6, v6, 0xb4

    .line 199
    rem-int/lit16 v6, v6, 0x168

    int-to-float v6, v6

    aput v6, v3, v4

    .line 200
    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    :cond_1
    aget v3, v2, v4

    aput v3, v2, v1

    .line 204
    new-instance v1, Landroid/graphics/SweepGradient;

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {v1, p1, p1, v2, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 205
    new-instance v2, Landroid/graphics/RadialGradient;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-float v6, v3

    const/4 v7, -0x1

    const v8, 0xffffff

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    move v4, p1

    move v5, p1

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 206
    new-instance v3, Landroid/graphics/ComposeShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v2, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 208
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 210
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    const/4 v0, 0x2
.end method

.method private init()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 142
    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    .line 143
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 144
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 148
    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    .line 149
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 151
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x2

    .line 138
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public getAlphaVal()I
    .locals 2

    const/4 v1, 0x2

    .line 76
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    return v0

    const/4 v1, 0x1
.end method

.method public getColor()I
    .locals 3

    const/4 v2, 0x1

    .line 256
    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public getColorHSV()[F
    .locals 2

    const/4 v1, 0x0

    .line 70
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    return-object v0

    const/4 v1, 0x1
.end method

.method public getSaturation()F
    .locals 3

    const/4 v2, 0x3

    .line 121
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method public getValue()F
    .locals 3

    const/4 v2, 0x2

    .line 117
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const/4 v10, 0x1

    .line 165
    const/4 v10, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v10, 0x3

    return-void

    .line 168
    const/4 v10, 0x0

    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 169
    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 171
    const/4 v10, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    const/4 v10, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 175
    const/4 v10, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    double-to-float v1, v3

    float-to-double v3, v1

    .line 176
    const/4 v10, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    neg-double v5, v5

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v7, 0x1

    aget v1, v1, v7

    float-to-double v8, v1

    mul-double v5, v5, v8

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-double v8, v1

    mul-double v5, v5, v8

    float-to-double v0, v0

    add-double/2addr v5, v0

    double-to-float v0, v5

    .line 177
    const/4 v10, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-double v3, v3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    aget v1, v1, v7

    float-to-double v5, v1

    mul-double v3, v3, v5

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-double v5, v1

    mul-double v3, v3, v5

    float-to-double v1, v2

    add-double/2addr v3, v1

    double-to-float v1, v3

    .line 179
    const/4 v10, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerRad:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x2

    .line 156
    const/4 v0, 0x3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 157
    const/4 v0, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 158
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 159
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setMeasuredDimension(II)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    const/4 v0, 0x1

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->padding:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    .line 185
    const/4 v0, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->createColorWheelBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelBitmap:Landroid/graphics/Bitmap;

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    .line 217
    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v10, 0x2

    if-eq v0, v1, :cond_0

    const/4 v10, 0x3

    .line 241
    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 222
    const/4 v10, 0x1

    :cond_0
    const/4 v10, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 223
    const/4 v10, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 224
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 225
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr p1, v1

    mul-float v1, v0, v0

    mul-float v2, p1, p1

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 226
    const/4 v10, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 228
    const/4 v10, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    const/4 v3, 0x1

    if-gtz v5, :cond_2

    const/4 v10, 0x0

    .line 230
    const/4 v10, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v5, 0x0

    float-to-double v6, p1

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double/2addr v6, v8

    double-to-float p1, v6

    aput p1, v4, v5

    .line 231
    const/4 v10, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorWheelRadius:I

    int-to-double v5, v5

    div-double/2addr v1, v5

    double-to-float v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v3

    .line 232
    const/4 v10, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    if-eqz p1, :cond_1

    const/4 v10, 0x0

    .line 233
    const/4 v10, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;->colorChange()V

    .line 235
    const/4 v10, 0x2

    :cond_1
    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->invalidate()V

    :cond_2
    const/4 v10, 0x0

    return v3

    const/4 v0, 0x2
.end method

.method public setAlphaVal(I)V
    .locals 1

    const/4 v0, 0x2

    .line 80
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    .line 81
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 82
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;->colorChange()V

    .line 84
    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setBlue(I)V
    .locals 3

    const/4 v2, 0x2

    .line 97
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result v0

    .line 98
    const/4 v2, 0x0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {v1, v0, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 99
    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public setColor(I)V
    .locals 2

    const/4 v1, 0x3

    .line 253
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->alphaVal:I

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(II)V

    return-void

    const/4 v1, 0x1
.end method

.method public setColor(II)V
    .locals 2

    const/4 v1, 0x2

    .line 245
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setAlphaVal(I)V

    .line 247
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 248
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;->colorChange()V

    .line 250
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public setGreen(I)V
    .locals 3

    const/4 v2, 0x3

    .line 92
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result v0

    .line 93
    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, p1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 94
    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public setOnColorChangedListener(Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    return-void

    const/4 v0, 0x0
.end method

.method public setRed(I)V
    .locals 3

    const/4 v2, 0x3

    .line 87
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result v0

    .line 88
    const/4 v2, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p1, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    .line 89
    const/4 v2, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public setSaturation(F)V
    .locals 3

    const/4 v2, 0x0

    .line 103
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 104
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 105
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;->colorChange()V

    .line 107
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public setValue(F)V
    .locals 3

    const/4 v2, 0x0

    .line 110
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->colorHSV:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 111
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 112
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->mColorChangedListener:Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;->colorChange()V

    .line 114
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method
