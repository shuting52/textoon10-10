.class public Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;
.super Landroid/view/View;
.source "ColorPickerSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;
    }
.end annotation


# static fields
.field static final COMPONENT_ALPHA:I = 0x3

.field static final COMPONENT_SATURATION:I = 0x1

.field static final COMPONENT_VALUE:I = 0x2


# instance fields
.field HandlePos:F

.field private _xDelta:F

.field backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field private colorAlpha:I

.field private colorHue:F

.field colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

.field private colorSaturation:F

.field private colorValue:F

.field controlledComponent:I

.field handleRad:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

    const/high16 p1, 0x42480000    # 50.0f

    .line 37
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    .line 43
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070081

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method clipVal(FFF)F
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 153
    const/4 v0, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    const/4 v0, 0x0
.end method

.method convertToAbsolutePosition(F)F
    .locals 4

    const/4 v3, 0x2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 150
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    return p1

    const/4 v1, 0x3
.end method

.method convertToRelativePosition(F)F
    .locals 4

    const/4 v3, 0x1

    .line 156
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const/4 v1, 0x0

    .line 157
    const/4 v3, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->clipVal(FFF)F

    move-result p1

    return p1

    const/4 v1, 0x3
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x1

    .line 49
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 50
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method getDisplayGradient(F)Landroid/graphics/LinearGradient;
    .locals 16

    move-object/from16 v0, p0

    .line 132
    iget v1, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_1

    .line 142
    :pswitch_0
    new-array v1, v6, [F

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    aput v2, v1, v7

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorSaturation:F

    aput v2, v1, v5

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorValue:F

    aput v2, v1, v4

    invoke-static {v7, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    const/16 v2, 0xff

    .line 143
    new-array v3, v6, [F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    aput v6, v3, v7

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorSaturation:F

    aput v6, v3, v5

    iget v5, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorValue:F

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    goto :goto_0

    .line 138
    :pswitch_1
    new-array v1, v6, [F

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    aput v8, v1, v7

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorSaturation:F

    aput v8, v1, v5

    aput v3, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 139
    new-array v3, v6, [F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    aput v6, v3, v7

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorSaturation:F

    aput v6, v3, v5

    aput v2, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    goto :goto_0

    .line 134
    :pswitch_2
    new-array v1, v6, [F

    iget v8, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    aput v8, v1, v7

    aput v3, v1, v5

    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorValue:F

    aput v3, v1, v4

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    .line 135
    new-array v3, v6, [F

    iget v6, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    aput v6, v3, v7

    aput v2, v3, v5

    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorValue:F

    aput v2, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    :goto_0
    move v13, v1

    move v14, v7

    .line 147
    :goto_1
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v1

    move/from16 v11, p1

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method public initialize(II)V
    .locals 1

    const/4 v0, 0x2

    .line 164
    const/4 v0, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColor(I)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x2

    .line 103
    const/4 v8, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    const/4 v8, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 105
    const/4 v8, 0x1

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 106
    const/4 v8, 0x2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getDisplayGradient(F)Landroid/graphics/LinearGradient;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    const/4 v8, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v4, v4

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    const/4 v8, 0x0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    const v4, -0x777778

    .line 110
    const/4 v8, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    const/4 v8, 0x2

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    const/4 v8, 0x3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->dpToPixels(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    const v4, -0x333334

    .line 113
    const/4 v8, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    const/4 v8, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 115
    const/4 v8, 0x2

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->dpToPixels(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 116
    const/4 v8, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v8, 0x0

    .line 117
    const/4 v8, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    const/4 v8, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    const/4 v8, 0x3

    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 122
    const/4 v8, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->convertToAbsolutePosition(F)F

    move-result v1

    .line 123
    const/4 v8, 0x2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    const v4, -0xbbbbbc

    .line 124
    const/4 v8, 0x3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v4, -0x1

    .line 126
    const/4 v8, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    const/4 v8, 0x2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->dpToPixels(I)I

    move-result v2

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x3

    .line 54
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 55
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    const/4 v4, 0x0

    .line 65
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->_xDelta:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v1, v3

    sub-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->convertToRelativePosition(F)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    .line 66
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    .line 67
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    div-float/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;->onColorChanged(F)V

    .line 69
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->invalidate()V

    goto :goto_0

    const/4 v4, 0x0

    .line 57
    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->convertToRelativePosition(F)F

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    .line 58
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    .line 59
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    div-float/2addr v3, v2

    invoke-interface {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;->onColorChanged(F)V

    .line 61
    const/4 v4, 0x2

    :cond_3
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->invalidate()V

    .line 62
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->handleRad:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->_xDelta:F

    :goto_0
    const/4 v4, 0x1

    const/4 p1, 0x1

    return p1

    const/4 v0, 0x0
.end method

.method public setColor(I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x3

    .line 97
    const/4 v1, 0x0

    new-array v0, v0, [F

    .line 98
    const/4 v1, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 99
    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColor(I[F)V

    return-void

    const/4 v1, 0x1
.end method

.method public setColor(I[F)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 82
    const/4 v2, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorHue:F

    const/4 v0, 0x1

    .line 83
    const/4 v2, 0x2

    aget v1, p2, v0

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorSaturation:F

    const/4 v1, 0x2

    .line 84
    const/4 v2, 0x3

    aget p2, p2, v1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorValue:F

    .line 85
    const/4 v2, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorAlpha:I

    .line 86
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    const/high16 p2, 0x42c80000    # 100.0f

    if-ne p1, v0, :cond_0

    const/4 v2, 0x2

    .line 87
    const/4 v2, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorSaturation:F

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setValue(F)V

    goto :goto_0

    const/4 v2, 0x0

    .line 89
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    if-ne p1, v1, :cond_1

    const/4 v2, 0x3

    .line 90
    const/4 v2, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorValue:F

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setValue(F)V

    goto :goto_0

    const/4 v2, 0x1

    .line 92
    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->controlledComponent:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 v2, 0x0

    .line 93
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorAlpha:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setValue(F)V

    :cond_2
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public setColorListener(Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->colorListener:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider$colorSliderEvent;

    return-void

    const/4 v0, 0x0
.end method

.method public setValue(F)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->HandlePos:F

    .line 79
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
