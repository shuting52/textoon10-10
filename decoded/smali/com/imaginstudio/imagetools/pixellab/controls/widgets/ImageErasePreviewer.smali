.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;
.super Landroid/widget/FrameLayout;
.source "ImageErasePreviewer.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field dp:F

.field eraserStroke:F

.field imgArea:Landroid/graphics/RectF;

.field pntPoint:Landroid/graphics/Paint;

.field pntStroke:Landroid/graphics/Paint;

.field pntStrokeInv:Landroid/graphics/Paint;

.field previewCenters:[Landroid/graphics/PointF;

.field previewPadding:F

.field previewRad:F

.field relX:F

.field relY:F

.field topLeftCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x28

    .line 35
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    const/4 p1, 0x6

    .line 36
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewPadding:F

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStroke:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStrokeInv:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    .line 40
    sget p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->eraserStroke:F

    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    aput-object v0, p1, p2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenters:[Landroid/graphics/PointF;

    .line 42
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->topLeftCenter:Z

    .line 43
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->dp:F

    .line 46
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStroke:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStroke:Landroid/graphics/Paint;

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStroke:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStrokeInv:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStrokeInv:Landroid/graphics/Paint;

    const/16 p2, 0x64

    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStrokeInv:Landroid/graphics/Paint;

    const/4 p2, 0x7

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    const/16 v0, 0x96

    invoke-static {v0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 123
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    .line 124
    const/4 v1, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->imgArea:Landroid/graphics/RectF;

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x2

    .line 63
    const/4 v7, 0x3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 64
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    return-void

    .line 65
    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->imgArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 66
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 68
    const/4 v7, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->eraserStroke:F

    div-float/2addr v1, v2

    .line 69
    const/4 v7, 0x0

    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 70
    const/4 v7, 0x1

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    const/4 v7, 0x2

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 72
    const/4 v7, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->relX:F

    neg-float v4, v4

    div-float/2addr v4, v0

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->relY:F

    neg-float v5, v5

    div-float/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 74
    const/4 v7, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 75
    const/4 v7, 0x2

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 76
    const/4 v7, 0x3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 77
    const/4 v7, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 79
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenter()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenter()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    const/4 v7, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    const/4 v7, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStrokeInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    const/4 v7, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 84
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->relX:F

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->relY:F

    div-float/2addr v6, v0

    float-to-int v0, v6

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getContrastColor(I)I

    move-result v0

    .line 85
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    const/4 v7, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 87
    const/4 v7, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 88
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->invertColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->dp:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 91
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    .line 92
    const/4 v7, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    .line 93
    const/4 v7, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->imgArea:Landroid/graphics/RectF;

    :cond_1
    const/4 v7, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x2

    .line 106
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenter()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 v2, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->topLeftCenter:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->topLeftCenter:Z

    :cond_0
    const/4 v2, 0x2

    const/4 p1, 0x0

    return p1

    const/4 v0, 0x2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, 0x0

    .line 99
    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 100
    const/4 v2, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenters:[Landroid/graphics/PointF;

    const/4 p4, 0x0

    aget-object p3, p3, p4

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewPadding:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    add-float/2addr p4, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewPadding:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    add-float/2addr v0, v1

    invoke-virtual {p3, p4, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 101
    const/4 v2, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenters:[Landroid/graphics/PointF;

    const/4 p4, 0x1

    aget-object p3, p3, p4

    int-to-float p1, p1

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewPadding:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    add-float/2addr p4, v0

    sub-float/2addr p1, p4

    int-to-float p2, p2

    iget p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewPadding:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewRad:F

    add-float/2addr p4, v0

    sub-float/2addr p2, p4

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void

    const/4 v0, 0x2
.end method

.method previewCenter()Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x1

    .line 58
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->previewCenters:[Landroid/graphics/PointF;

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->topLeftCenter:Z

    xor-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    const/4 v0, 0x2
.end method

.method public update(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/PointF;FF)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->bmp:Landroid/graphics/Bitmap;

    .line 113
    const/4 v0, 0x2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->imgArea:Landroid/graphics/RectF;

    .line 114
    const/4 v0, 0x3

    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget p5, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p5

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p5

    invoke-static {p1, p5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p5, 0x0

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->relX:F

    .line 115
    const/4 v0, 0x0

    iget p1, p3, Landroid/graphics/PointF;->y:F

    iget p3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->relY:F

    .line 116
    const/4 v0, 0x1

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->eraserStroke:F

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageErasePreviewer;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
