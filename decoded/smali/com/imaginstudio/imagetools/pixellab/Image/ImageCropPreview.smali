.class public Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;
.super Landroid/view/View;
.source "ImageCropPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;,
        Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;
    }
.end annotation


# instance fields
.field HandlesActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field _lastX:F

.field _lastY:F

.field activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

.field private backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field bottom:F

.field bounds:Landroid/graphics/Rect;

.field public circularCrop:Z

.field cropArea:Landroid/graphics/RectF;

.field currentlyDraggedPoint:Landroid/graphics/PointF;

.field public flipH:Z

.field public flipV:Z

.field private image:Landroid/graphics/Bitmap;

.field imgArea:Landroid/graphics/RectF;

.field imgHeight:I

.field imgWidth:I

.field left:F

.field listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

.field public lockAspect:Z

.field private minDim:F

.field padding:I

.field private pntBorder:Landroid/graphics/Paint;

.field private pntCrop:Landroid/graphics/Paint;

.field private pntCropDark:Landroid/graphics/Paint;

.field private pntDarken:Landroid/graphics/Paint;

.field private pntImage:Landroid/graphics/Paint;

.field private pntOval:Landroid/graphics/Paint;

.field right:F

.field rotation:I

.field shouldUseDarkOnBitmap:Z

.field top:F

.field touchRadius:F

.field zoomWidgetReference:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    .line 40
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;-><init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    .line 42
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    .line 43
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    .line 44
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    .line 51
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 52
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    .line 53
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    .line 54
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    .line 55
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    const/16 v0, 0x64

    .line 56
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    .line 57
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    .line 58
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    const/16 v1, 0xe

    .line 59
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    .line 60
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->padding:I

    .line 61
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    const/high16 v2, 0x40200000    # 2.5f

    mul-float v1, v1, v2

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->minDim:F

    .line 63
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->shouldUseDarkOnBitmap:Z

    .line 68
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    .line 91
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntImage:Landroid/graphics/Paint;

    .line 92
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    .line 94
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    .line 98
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    const-string v2, "#2a2a2a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    .line 101
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    const-string v2, "#80ff1744"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntDarken:Landroid/graphics/Paint;

    .line 105
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntDarken:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 106
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    .line 107
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    const/16 v0, 0x3c

    invoke-static {v0, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateAvailableHandlesPos()V

    .line 112
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070081

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private drawCropper(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 198
    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->shouldUseDarkOnBitmap:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCropDark:Landroid/graphics/Paint;

    goto :goto_0

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    .line 200
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 201
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V

    goto :goto_1

    const/4 v3, 0x2

    .line 203
    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntOval:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 205
    const/4 v3, 0x1

    :goto_1
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 206
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntCrop:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x3
.end method

.method private fixCropArea()V
    .locals 8

    const/4 v7, 0x1

    .line 338
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const/4 v7, 0x3

    const/4 v0, 0x1

    goto :goto_0

    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 339
    const/4 v7, 0x2

    :goto_0
    const/4 v7, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v7, 0x0

    const/4 v3, 0x1

    goto :goto_1

    const/4 v7, 0x1

    :cond_1
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 340
    const/4 v7, 0x3

    :goto_1
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v7, 0x1

    const/4 v4, 0x1

    goto :goto_2

    const/4 v7, 0x2

    :cond_2
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 341
    const/4 v7, 0x0

    :goto_2
    const/4 v7, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    const/4 v7, 0x2

    const/4 v1, 0x1

    :cond_3
    const/4 v7, 0x3

    if-nez v0, :cond_4

    const/4 v7, 0x0

    if-nez v3, :cond_4

    const/4 v7, 0x1

    if-nez v4, :cond_4

    const/4 v7, 0x2

    if-nez v1, :cond_4

    const/4 v7, 0x3

    return-void

    .line 345
    const/4 v7, 0x0

    :cond_4
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 346
    const/4 v7, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    if-eqz v4, :cond_5

    const/4 v7, 0x3

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    .line 348
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 349
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iput v2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_3

    const/4 v7, 0x3

    :cond_5
    const/4 v7, 0x0

    if-eqz v4, :cond_6

    const/4 v7, 0x1

    .line 351
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 352
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    const/4 v7, 0x0

    :cond_6
    const/4 v7, 0x1

    if-eqz v0, :cond_7

    const/4 v7, 0x2

    .line 354
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 355
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    iput v4, v0, Landroid/graphics/RectF;->right:F

    :cond_7
    const/4 v7, 0x1

    :goto_3
    const/4 v7, 0x2

    if-eqz v1, :cond_8

    const/4 v7, 0x3

    if-eqz v3, :cond_8

    const/4 v7, 0x0

    .line 359
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 360
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    const/4 v7, 0x3

    :cond_8
    const/4 v7, 0x0

    if-eqz v1, :cond_9

    const/4 v7, 0x1

    .line 362
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 363
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_4

    const/4 v7, 0x0

    :cond_9
    const/4 v7, 0x1

    if-eqz v3, :cond_a

    const/4 v7, 0x2

    .line 365
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 366
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_a
    const/4 v7, 0x1

    :goto_4
    const/4 v7, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method private updateAvailableHandlesPos()V
    .locals 6

    const/4 v5, 0x0

    .line 503
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 505
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H0:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    .line 506
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_1H:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v5, 0x3

    .line 509
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    const/4 v5, 0x1

    :cond_1
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H1:Z

    if-eqz v0, :cond_2

    const/4 v5, 0x3

    .line 512
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    const/4 v5, 0x1

    :cond_2
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_0H:Z

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    .line 515
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    const/4 v5, 0x1

    :cond_3
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_00:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x3

    .line 519
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v5, 0x1

    :cond_4
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_10:Z

    if-eqz v0, :cond_5

    const/4 v5, 0x3

    .line 522
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v5, 0x1

    :cond_5
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_11:Z

    if-eqz v0, :cond_6

    const/4 v5, 0x3

    .line 525
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const/4 v5, 0x1

    :cond_6
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_01:Z

    if-eqz v0, :cond_7

    const/4 v5, 0x3

    .line 528
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method private useDark(Landroid/graphics/Bitmap;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, -0x1000000

    .line 535
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 536
    const/4 v5, 0x1

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 537
    const/4 v5, 0x2

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    const/4 v5, 0x3

    :catch_0
    move-exception p1

    goto :goto_0

    const/4 v5, 0x0

    :catch_1
    move-exception p1

    const/high16 v3, -0x1000000

    .line 540
    const/4 v5, 0x1

    :goto_0
    const/4 v5, 0x2

    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 542
    const/4 v5, 0x3

    :goto_1
    const/4 v5, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const v2, 0x3e991687    # 0.299f

    mul-float p1, p1, v2

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f1645a2    # 0.587f

    mul-float v2, v2, v4

    add-float/2addr p1, v2

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3de978d5    # 0.114f

    mul-float v2, v2, v3

    add-float/2addr p1, v2

    const/high16 v2, 0x433a0000    # 186.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    const/4 v5, 0x1

    const/4 v0, 0x1

    :cond_0
    const/4 v5, 0x2

    return v0

    const/4 v1, 0x1
.end method


# virtual methods
.method cyclicRotate(Z)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 397
    const/4 v2, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    .line 398
    const/4 v2, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    .line 399
    const/4 v2, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    .line 400
    const/4 v2, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v0, p1

    .line 401
    const/4 v2, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    goto :goto_0

    const/4 v2, 0x3

    .line 403
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    .line 404
    const/4 v2, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    .line 405
    const/4 v2, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    .line 406
    const/4 v2, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    sub-float/2addr v0, p1

    .line 407
    const/4 v2, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method cyclicRotateRect(Landroid/graphics/RectF;I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v1, 0x1

    return-void

    :cond_0
    const/4 v1, 0x2

    if-lez p2, :cond_1

    const/4 v1, 0x3

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 444
    const/4 v1, 0x2

    :goto_0
    const/4 v1, 0x3

    rem-int/lit16 p2, p2, 0x168

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    :goto_1
    const/4 v1, 0x0

    if-lez p2, :cond_2

    const/4 v1, 0x1

    .line 446
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotateRect(Landroid/graphics/RectF;Z)V

    add-int/lit8 p2, p2, -0x5a

    goto :goto_1

    const/4 v1, 0x3

    :cond_2
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method cyclicRotateRect(Landroid/graphics/RectF;Z)V
    .locals 3

    const/4 v2, 0x2

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    .line 426
    const/4 v2, 0x0

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 427
    const/4 v2, 0x1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 428
    const/4 v2, 0x2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 429
    const/4 v2, 0x3

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    .line 430
    const/4 v2, 0x0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    const/4 v2, 0x1

    .line 432
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget p2, p1, Landroid/graphics/RectF;->left:F

    .line 433
    const/4 v2, 0x0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 434
    const/4 v2, 0x1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 435
    const/4 v2, 0x2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    .line 436
    const/4 v2, 0x3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    const/4 v3, 0x2

    .line 278
    const/4 v3, 0x3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    const/4 v1, 0x3
.end method

.method dpToPixels(I)F
    .locals 3

    const/4 v2, 0x1

    .line 379
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 380
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method dpToPixelsInt(I)I
    .locals 3

    const/4 v2, 0x1

    .line 383
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 384
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

.method drawAvailableHandles(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    const/4 v10, 0x1

    .line 267
    const/4 v10, 0x2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 268
    const/4 v10, 0x3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 269
    const/4 v10, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    const/4 v10, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v10, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 270
    const/4 v10, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 271
    const/4 v10, 0x0

    iget v4, v2, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    const/4 v10, 0x1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_0

    const/4 v10, 0x2

    const/4 v2, 0x1

    goto :goto_1

    const/4 v10, 0x3

    :cond_0
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 272
    const/4 v10, 0x1

    :goto_1
    const/4 v10, 0x2

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eqz v2, :cond_1

    const/4 v10, 0x3

    const/4 v9, 0x2

    goto :goto_2

    const/4 v10, 0x0

    :cond_1
    const/4 v10, 0x1

    const/4 v9, 0x3

    :goto_2
    const/4 v10, 0x2

    int-to-float v9, v9

    div-float/2addr v6, v9

    iget-object v9, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 273
    const/4 v10, 0x3

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    if-eqz v2, :cond_2

    const/4 v10, 0x0

    const/4 v7, 0x2

    :cond_2
    const/4 v10, 0x1

    int-to-float v2, v7

    div-float/2addr v5, v2

    invoke-virtual {p1, v4, v3, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    const/4 v10, 0x2

    .line 275
    const/4 v10, 0x3

    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    const/4 v0, 0x2
.end method

.method drawGrid(Landroid/graphics/Canvas;Landroid/graphics/RectF;ILandroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    .line 210
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dpToPixels(I)F

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    move/from16 v3, p3

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v11, v2, v3

    const/high16 v12, 0x41200000    # 10.0f

    cmpl-float v2, v10, v12

    const/4 v13, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    add-float v14, v2, v10

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v14, v2

    if-gez v2, :cond_0

    .line 216
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float v5, v14, v2

    .line 217
    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p1

    move v3, v5

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    float-to-int v2, v14

    goto :goto_0

    :cond_0
    cmpl-float v2, v11, v12

    if-lez v2, :cond_1

    :goto_1
    int-to-float v2, v13

    add-float v10, v2, v11

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v10, v2

    if-gez v2, :cond_1

    .line 222
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float v6, v10, v2

    .line 223
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v5, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v2, p1

    move v4, v6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    float-to-int v13, v10

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    const/4 v1, 0x3
.end method

.method getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x3

    .line 229
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float p1, p1, v2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public getCropBounds()Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x2

    .line 412
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 413
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    .line 414
    const/4 v5, 0x2

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 415
    const/4 v5, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->flipPortion(Landroid/graphics/RectF;ZZ)V

    .line 416
    const/4 v5, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotateRect(Landroid/graphics/RectF;I)V

    return-object v0

    :cond_0
    const/4 v5, 0x1

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getImageRotation()I
    .locals 2

    const/4 v1, 0x3

    .line 66
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    return v0

    const/4 v1, 0x1
.end method

.method public getZoomFactor()F
    .locals 2

    const/4 v1, 0x2

    .line 75
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getZoomFactor()F

    move-result v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v1, 0x3

    return v0

    const/4 v1, 0x1
.end method

.method imageUpdated()V
    .locals 8

    const/4 v7, 0x1

    .line 141
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    const/4 v7, 0x3

    .line 142
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v7, 0x2

    const/4 v3, 0x1

    goto :goto_0

    const/4 v7, 0x3

    :cond_0
    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    .line 143
    const/4 v7, 0x2

    :cond_1
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 144
    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    .line 145
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 147
    const/4 v7, 0x2

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    .line 148
    const/4 v7, 0x3

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v3, v3, v4

    div-float/2addr v3, v2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    .line 149
    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v4, v4, v5

    div-float/2addr v4, v2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    .line 150
    const/4 v7, 0x1

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v5, v5, v6

    div-float/2addr v5, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v2

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    .line 152
    const/4 v7, 0x2

    :cond_2
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method public maximize()V
    .locals 5

    const/4 v4, 0x1

    .line 475
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 476
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    .line 477
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    const/4 v3, 0x1

    goto :goto_0

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    .line 478
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    .line 165
    const/4 v5, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 166
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v5, 0x3

    .line 168
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 169
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 170
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 173
    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    const/4 v5, 0x2

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 175
    const/4 v5, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotateRect(Landroid/graphics/RectF;I)V

    .line 176
    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    :cond_2
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 177
    const/4 v5, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 178
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntImage:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 179
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 180
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_4

    const/4 v5, 0x3

    .line 181
    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 182
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 183
    const/4 v5, 0x2

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    if-nez v1, :cond_3

    const/4 v5, 0x3

    .line 184
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    const/4 v5, 0x1

    .line 186
    const/4 v5, 0x2

    :cond_3
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 189
    const/4 v5, 0x0

    :goto_1
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->pntDarken:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    const/4 v5, 0x2

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->drawCropper(Landroid/graphics/Canvas;)V

    :cond_4
    const/4 v5, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 373
    const/4 v0, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 374
    const/4 v0, 0x3

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    .line 375
    const/4 v0, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bounds:Landroid/graphics/Rect;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->padding:I

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->padding:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->inset(II)V

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x3

    .line 283
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastY:F

    sub-float/2addr v0, v1

    .line 284
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastX:F

    sub-float/2addr v1, v2

    .line 285
    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastY:F

    .line 286
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->_lastX:F

    .line 287
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    const/4 v8, 0x1

    .line 288
    const/4 v8, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 289
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_f

    const/4 v8, 0x0

    .line 294
    const/4 v8, 0x1

    :pswitch_0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_f

    const/4 v8, 0x2

    .line 295
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v8, 0x0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v8, 0x1

    :cond_0
    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 296
    const/4 v8, 0x3

    :goto_0
    const/4 v8, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    const/4 v8, 0x1

    const/4 v1, 0x1

    goto :goto_1

    const/4 v8, 0x2

    :cond_1
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 297
    const/4 v8, 0x0

    :goto_1
    const/4 v8, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v4, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1, v6, v7}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result p1

    invoke-direct {v2, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 298
    const/4 v8, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->minDim:F

    if-eqz v0, :cond_2

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    :goto_2
    const/4 v8, 0x0

    sub-float/2addr v4, v6

    goto :goto_3

    const/4 v8, 0x1

    :cond_2
    const/4 v8, 0x2

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    goto :goto_2

    const/4 v8, 0x3

    :goto_3
    const/4 v8, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 299
    const/4 v8, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->minDim:F

    if-eqz v1, :cond_3

    const/4 v8, 0x2

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v2

    goto :goto_4

    const/4 v8, 0x3

    :cond_3
    const/4 v8, 0x0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v6

    :goto_4
    const/4 v8, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 300
    const/4 v8, 0x2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v6

    if-nez v4, :cond_6

    const/4 v8, 0x3

    .line 301
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    goto :goto_5

    const/4 v8, 0x2

    :cond_4
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    :goto_5
    const/4 v8, 0x0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 302
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_5

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_6

    const/4 v8, 0x3

    :cond_5
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    :goto_6
    const/4 v8, 0x1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_d

    const/4 v8, 0x2

    .line 303
    const/4 v8, 0x3

    :cond_6
    const/4 v8, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_9

    const/4 v8, 0x1

    .line 304
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_7

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    goto :goto_7

    const/4 v8, 0x0

    :cond_7
    const/4 v8, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p1

    :goto_7
    const/4 v8, 0x2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 305
    const/4 v8, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_8

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    goto :goto_8

    const/4 v8, 0x1

    :cond_8
    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    :goto_8
    const/4 v8, 0x3

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto :goto_d

    const/4 v8, 0x0

    .line 307
    const/4 v8, 0x1

    :cond_9
    const/4 v8, 0x2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 308
    const/4 v8, 0x3

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr p1, v4

    div-float/2addr v2, v6

    .line 309
    const/4 v8, 0x0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v4, v4, p1

    mul-float p1, p1, v6

    .line 312
    const/4 v8, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_a

    const/4 v8, 0x2

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    goto :goto_9

    const/4 v8, 0x3

    :cond_a
    const/4 v8, 0x0

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    :goto_9
    const/4 v8, 0x1

    iput v6, v2, Landroid/graphics/RectF;->right:F

    .line 313
    const/4 v8, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_b

    const/4 v8, 0x3

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    goto :goto_a

    const/4 v8, 0x0

    :cond_b
    const/4 v8, 0x1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, p1

    :goto_a
    const/4 v8, 0x2

    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    .line 314
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_c

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    goto :goto_b

    const/4 v8, 0x1

    :cond_c
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_b
    const/4 v8, 0x3

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 315
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_d

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p1

    goto :goto_c

    const/4 v8, 0x2

    :cond_d
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->top:F

    :goto_c
    const/4 v8, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 317
    const/4 v8, 0x1

    :goto_d
    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    if-eqz p1, :cond_10

    const/4 v8, 0x3

    .line 318
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    .line 319
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    const/4 v8, 0x2

    const/4 v3, 0x1

    :cond_e
    const/4 v8, 0x3

    invoke-interface {p1, v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    goto :goto_e

    const/4 v8, 0x0

    .line 322
    const/4 v8, 0x1

    :cond_f
    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getZoomFactor()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getZoomFactor()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 323
    const/4 v8, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->fixCropArea()V

    .line 325
    const/4 v8, 0x0

    :cond_10
    const/4 v8, 0x1

    :goto_e
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->invalidate()V

    goto :goto_f

    const/4 v8, 0x3

    :pswitch_1
    const/4 p1, 0x0

    .line 328
    const/4 v8, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    goto :goto_f

    const/4 v8, 0x1

    .line 291
    const/4 v8, 0x2

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V

    :goto_f
    const/4 v8, 0x3

    return v5

    :cond_11
    const/4 v8, 0x0

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method putInBounds(FFF)F
    .locals 2

    const/4 v1, 0x2

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    const/4 v1, 0x3

    move p1, p3

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    const/4 v1, 0x2

    move p1, p2

    :cond_1
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    return p1

    const/4 v1, 0x1
.end method

.method rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x2

    .line 161
    const/4 v6, 0x3

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public rotateImg(Z)V
    .locals 5

    const/4 v4, 0x1

    .line 452
    const/4 v4, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v4, 0x3

    const/4 v0, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ne v0, p1, :cond_1

    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 453
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    const/16 v0, 0x5a

    goto :goto_1

    const/4 v4, 0x3

    :cond_2
    const/4 v4, 0x0

    const/16 v0, -0x5a

    :goto_1
    const/4 v4, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    .line 454
    const/4 v4, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    .line 455
    const/4 v4, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    int-to-float p1, p1

    .line 456
    const/4 v4, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    float-to-int p1, p1

    .line 457
    const/4 v4, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    .line 458
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    .line 459
    const/4 v4, 0x3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotate(Z)V

    .line 460
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imageUpdated()V

    return-void

    const/4 v0, 0x0
.end method

.method rotateRect(Landroid/graphics/RectF;I)V
    .locals 4

    const/4 v3, 0x2

    .line 155
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 156
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void

    const/4 v1, 0x3
.end method

.method public setAspectAndLock(II)V
    .locals 4

    const/4 v3, 0x3

    .line 464
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    .line 465
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 466
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    mul-float p1, p1, v0

    mul-float v0, v0, p2

    const/4 p2, 0x0

    invoke-virtual {v1, p2, p2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 467
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 468
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateCropAreaPercentage()V

    .line 469
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 v2, v2, 0x5a

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const/4 v2, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;->cropSizeChanged(FFZ)V

    .line 470
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->toggleLockAspect(Z)V

    :cond_2
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZZ)V
    .locals 2

    const/4 v1, 0x1

    .line 116
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    .line 117
    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    .line 118
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->image:Landroid/graphics/Bitmap;

    .line 119
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->useDark(Landroid/graphics/Bitmap;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->shouldUseDarkOnBitmap:Z

    .line 120
    const/4 v1, 0x2

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    .line 121
    const/4 v1, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    .line 122
    const/4 v1, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    div-int/lit8 p1, p1, 0x5a

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 p1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 124
    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    .line 125
    const/4 v1, 0x3

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgWidth:I

    .line 126
    const/4 v1, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgHeight:I

    .line 128
    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->rotation:I

    invoke-virtual {p0, p2, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cyclicRotateRect(Landroid/graphics/RectF;I)V

    .line 129
    const/4 v1, 0x3

    invoke-static {p2, p5, p6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->flipPortion(Landroid/graphics/RectF;ZZ)V

    .line 130
    const/4 v1, 0x0

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    .line 131
    const/4 v1, 0x1

    iget p1, p2, Landroid/graphics/RectF;->top:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    .line 132
    const/4 v1, 0x2

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    .line 133
    const/4 v1, 0x3

    iget p1, p2, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    .line 134
    const/4 v1, 0x0

    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->circularCrop:Z

    .line 135
    const/4 v1, 0x1

    iput-boolean p5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    .line 136
    const/4 v1, 0x2

    iput-boolean p6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipV:Z

    .line 137
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imageUpdated()V

    return-void

    const/4 v1, 0x1
.end method

.method public setListener(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->listener:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;

    return-void

    const/4 v0, 0x0
.end method

.method public setZoomWidget(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->zoomWidgetReference:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    return-void

    const/4 v0, 0x0
.end method

.method public toggleLockAspect(Z)V
    .locals 2

    const/4 v1, 0x3

    .line 257
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    .line 258
    const/4 v1, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->lockAspect:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 259
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->toggleFree(Z)V

    goto :goto_0

    const/4 v1, 0x0

    .line 261
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->activeHandles:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->toggleAll(Z)V

    .line 263
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->updateAvailableHandlesPos()V

    .line 264
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method updateCropAreaPercentage()V
    .locals 5

    const/4 v4, 0x3

    .line 390
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->left:F

    .line 391
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    mul-float v0, v0, v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->top:F

    .line 392
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    mul-float v0, v0, v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->right:F

    .line 393
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    mul-float v0, v0, v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v0, v3

    invoke-virtual {p0, v0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->putInBounds(FFF)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->bottom:F

    return-void

    const/4 v0, 0x0
.end method

.method updateCurrentlyDraggedPoint(Landroid/graphics/PointF;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 232
    const/4 v6, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    .line 234
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2

    const/4 v6, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 235
    const/4 v6, 0x3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v4, v3

    if-nez v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    const/4 v6, 0x2

    .line 236
    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    mul-float v4, v4, v2

    cmpg-float v2, v3, v4

    if-gtz v2, :cond_0

    const/4 v6, 0x1

    .line 237
    const/4 v6, 0x2

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    return-void

    .line 242
    const/4 v6, 0x3

    :cond_2
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->HandlesActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 243
    const/4 v6, 0x3

    iget v4, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_4

    const/4 v6, 0x0

    .line 244
    const/4 v6, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    mul-float v5, v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    const/4 v6, 0x2

    .line 245
    const/4 v6, 0x3

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    return-void

    .line 248
    const/4 v6, 0x0

    :cond_4
    const/4 v6, 0x1

    iget v4, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_3

    const/4 v6, 0x2

    .line 249
    const/4 v6, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->cropArea:Landroid/graphics/RectF;

    invoke-virtual {p0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getAbsolutePoint(Landroid/graphics/PointF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->touchRadius:F

    mul-float v5, v5, v2

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    const/4 v6, 0x0

    .line 250
    const/4 v6, 0x1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->currentlyDraggedPoint:Landroid/graphics/PointF;

    return-void

    :cond_5
    const/4 v6, 0x2

    return-void

    const/4 v0, 0x2
.end method
