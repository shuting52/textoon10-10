.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;
.super Landroid/view/View;
.source "cropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;
    }
.end annotation


# instance fields
.field private _lastX:F

.field private _lastY:F

.field private bmpArea:Landroid/graphics/RectF;

.field cropArea:Landroid/graphics/RectF;

.field cropOverlayPath:Landroid/graphics/Path;

.field currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

.field draggingDist:F

.field handleRad:F

.field lowResBMP:Landroid/graphics/Bitmap;

.field path:Ljava/lang/String;

.field pntBG:Landroid/graphics/Paint;

.field private final pntBMP:Landroid/graphics/Paint;

.field private final pntBounds:Landroid/graphics/Paint;

.field pntCropOverLay:Landroid/graphics/Paint;

.field stroke:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->none:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    const/4 p1, 0x5

    .line 45
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->dpToPixels(I)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    .line 46
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->dpToPixels(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->handleRad:F

    const/4 p1, 0x2

    .line 47
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->dpToPixels(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->stroke:F

    .line 53
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->path:Ljava/lang/String;

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBG:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBG:Landroid/graphics/Paint;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBMP:Landroid/graphics/Paint;

    .line 57
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBMP:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 58
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBMP:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    .line 60
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->stroke:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntCropOverLay:Landroid/graphics/Paint;

    .line 63
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntCropOverLay:Landroid/graphics/Paint;

    const/16 p2, 0xaa

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public dpToPixels(I)F
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 190
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 191
    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method public getAspectX()I
    .locals 2

    const/4 v1, 0x0

    .line 30
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    return v0

    const/4 v1, 0x1
.end method

.method public getAspectY()I
    .locals 2

    const/4 v1, 0x3

    .line 34
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    return v0

    const/4 v1, 0x1
.end method

.method public getCropBoundsBottom()F
    .locals 3

    const/4 v2, 0x2

    .line 187
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method public getCropBoundsLeft()F
    .locals 3

    const/4 v2, 0x1

    .line 178
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method public getCropBoundsRight()F
    .locals 3

    const/4 v2, 0x0

    .line 181
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method public getCropBoundsTop()F
    .locals 3

    const/4 v2, 0x3

    .line 184
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method initOrFixCropArea()V
    .locals 6

    const/4 v5, 0x2

    .line 84
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 85
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 86
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 87
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 88
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    const/4 v5, 0x1

    .line 91
    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    .line 92
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    :goto_0
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x3

    .line 69
    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBG:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 71
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    .line 72
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBMP:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 73
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntCropOverLay:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 76
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->handleRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->handleRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->handleRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->handleRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->pntBounds:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v7, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, 0x1

    .line 97
    const/4 v2, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .line 100
    const/4 v2, 0x1

    :try_start_0
    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->path:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleFromFile(Ljava/lang/String;II)I

    move-result v0

    invoke-static {p4, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->loadBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    .line 102
    const/4 v2, 0x2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x3

    .line 104
    const/4 v2, 0x0

    :catch_0
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    .line 106
    const/4 v2, 0x1

    :goto_0
    const/4 v2, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    const/4 v2, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    int-to-float p3, p1

    .line 107
    const/4 v2, 0x2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    int-to-float p4, p2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 108
    const/4 v2, 0x3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p3, p3, v1

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v1, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 109
    const/4 v2, 0x0

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 110
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    sub-float/2addr p2, p4

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float p3, p3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 111
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->initOrFixCropArea()V

    .line 112
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 113
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 114
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    const/4 v2, 0x2

    .line 118
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->lowResBMP:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v2, 0x1

    :goto_1
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    .line 123
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->_lastY:F

    sub-float/2addr v0, v1

    .line 124
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->_lastX:F

    sub-float/2addr v1, v2

    .line 125
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->_lastY:F

    .line 126
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->_lastX:F

    .line 127
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    const/4 v4, 0x2

    .line 146
    const/4 v4, 0x3

    :pswitch_0
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$controls$widgets$cropView$draggingSides:[I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    const/4 v4, 0x0

    .line 160
    const/4 v4, 0x1

    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 161
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v4, 0x3

    .line 162
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    const/4 v4, 0x1

    .line 157
    const/4 v4, 0x2

    :pswitch_2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    add-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    const/4 v4, 0x3

    .line 154
    const/4 v4, 0x0

    :pswitch_3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    add-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    const/4 v4, 0x1

    .line 151
    const/4 v4, 0x2

    :pswitch_4
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    const/4 v4, 0x3

    .line 148
    const/4 v4, 0x0

    :pswitch_5
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 166
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    :goto_0
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 167
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->bmpArea:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 168
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropOverlayPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 169
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->invalidate()V

    goto/16 :goto_1

    const/4 v4, 0x3

    .line 172
    const/4 v4, 0x0

    :pswitch_6
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->none:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    goto :goto_1

    const/4 v4, 0x1

    .line 129
    const/4 v4, 0x2

    :pswitch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v4, 0x3

    .line 130
    const/4 v4, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->left:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    goto :goto_1

    const/4 v4, 0x1

    .line 132
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v4, 0x0

    .line 133
    const/4 v4, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->right:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    goto :goto_1

    const/4 v4, 0x2

    .line 135
    const/4 v4, 0x3

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v4, 0x1

    .line 136
    const/4 v4, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->top:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    goto :goto_1

    const/4 v4, 0x3

    .line 138
    const/4 v4, 0x0

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->draggingDist:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    const/4 v4, 0x2

    .line 139
    const/4 v4, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->bottom:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    goto :goto_1

    const/4 v4, 0x0

    .line 142
    const/4 v4, 0x1

    :cond_4
    const/4 v4, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;->none:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView;->currentlyDragged:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/cropView$draggingSides;

    :goto_1
    const/4 v4, 0x3

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    const/4 v0, 0x0
.end method
