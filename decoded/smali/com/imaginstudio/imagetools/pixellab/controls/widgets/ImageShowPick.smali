.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;
.super Landroid/view/View;
.source "ImageShowPick.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$OnImageListAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;
    }
.end annotation


# instance fields
.field ballRadius:F

.field bounds:Landroid/graphics/RectF;

.field public currColor:I

.field currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

.field dX:F

.field dY:F

.field listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

.field pickColorPoint:Landroid/graphics/PointF;

.field pntBall:Landroid/graphics/Paint;

.field pntBorder:Landroid/graphics/Paint;

.field pntImage:Landroid/graphics/Paint;

.field pntPoint:Landroid/graphics/Paint;

.field previousX:F

.field previousY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    .line 29
    new-instance p2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    const/high16 p2, -0x1000000

    .line 30
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    const/16 v1, 0xf

    .line 31
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->ballRadius:F

    .line 35
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    .line 51
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    .line 100
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntImage:Landroid/graphics/Paint;

    .line 58
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBall:Landroid/graphics/Paint;

    .line 60
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBall:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    .line 62
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xc8

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntPoint:Landroid/graphics/Paint;

    .line 66
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateCurrColor()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 92
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 93
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getColorAt(FF)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    .line 94
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 95
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;->colorChanged(I)V

    :cond_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method final synthetic lambda$selected$0$ImageShowPick(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 3

    const/4 v2, 0x0

    .line 40
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v2, 0x2

    return-void

    .line 41
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->copyForDisplay(Landroid/graphics/RectF;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    .line 42
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 43
    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->updateCurrColor()V

    .line 44
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x1

    .line 71
    const/4 v4, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const-string v0, "#f44336"

    .line 73
    const/4 v4, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    const/4 v4, 0x2

    .line 76
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 77
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->draw(Landroid/graphics/Canvas;)V

    .line 78
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->ballRadius:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBall:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 79
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->ballRadius:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pntPoint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x3

    .line 87
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 88
    const/4 v0, 0x1

    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    .line 89
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->bounds:Landroid/graphics/RectF;

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p3

    int-to-float p3, p3

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    .line 103
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    goto/16 :goto_1

    const/4 v3, 0x0

    .line 104
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 105
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currResImage:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImgArea()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    const/4 v3, 0x3

    .line 116
    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    sub-float p1, v1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    .line 117
    const/4 v3, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    .line 118
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 119
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->updateCurrColor()V

    .line 120
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->invalidate()V

    goto :goto_0

    const/4 v3, 0x2

    .line 108
    const/4 v3, 0x3

    :cond_2
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 109
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->pickColorPoint:Landroid/graphics/PointF;

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 110
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->updateCurrColor()V

    .line 111
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->invalidate()V

    const/4 p1, 0x0

    .line 112
    const/4 v3, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dX:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->dY:F

    .line 113
    const/4 v3, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousX:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->previousY:F

    :goto_0
    const/4 v3, 0x2

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 v3, 0x3

    :goto_1
    const/4 v3, 0x0

    const/4 p1, 0x0

    return p1

    const/4 v1, 0x3
.end method

.method public selected(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V
    .locals 2

    const/4 v1, 0x2

    .line 39
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$$Lambda$0;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)V

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v1, 0x1
.end method

.method public setListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;

    return-void

    const/4 v0, 0x0
.end method
