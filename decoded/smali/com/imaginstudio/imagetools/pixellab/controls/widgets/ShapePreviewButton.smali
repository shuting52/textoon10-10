.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;
.super Landroid/view/View;
.source "ShapePreviewButton.java"


# instance fields
.field area:Landroid/graphics/RectF;

.field currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

.field pnt:Landroid/graphics/Paint;

.field pnt1:Landroid/graphics/Paint;

.field shapeId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->shapeId:I

    .line 27
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070137

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->setClickable(Z)V

    .line 29
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->shapeId:I

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->shapeId:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->pnt:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->pnt:Landroid/graphics/Paint;

    const-string v1, "#c7c7c8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->pnt1:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->pnt1:Landroid/graphics/Paint;

    const-string v1, "#37a56f"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->area:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-direct {v0, p2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;Z)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    return-void
.end method


# virtual methods
.method dpToPixels(I)F
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 56
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x3

    .line 40
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->area:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->getPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 42
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x3

    .line 43
    const/4 v3, 0x3

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->dpToPixels(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 45
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->pnt1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x3
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 52
    const/4 v0, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->area:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 53
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->area:Landroid/graphics/RectF;

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->dpToPixels(I)F

    move-result p3

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapePreviewButton;->dpToPixels(I)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void

    const/4 v0, 0x0
.end method
