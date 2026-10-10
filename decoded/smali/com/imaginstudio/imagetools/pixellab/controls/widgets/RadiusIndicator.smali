.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;
.super Landroid/view/View;
.source "RadiusIndicator.java"


# instance fields
.field bounds:Landroid/graphics/Rect;

.field pnt:Landroid/graphics/Paint;

.field radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x40a00000    # 5.0f

    .line 23
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->radius:F

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->bounds:Landroid/graphics/Rect;

    .line 28
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->pnt:Landroid/graphics/Paint;

    .line 29
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->pnt:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xe6

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator$1;

    invoke-direct {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;)V

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 52
    const/4 v4, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->bounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v4, 0x1

    return-void

    .line 54
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->radius:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    const/4 v0, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 47
    const/4 v0, 0x3

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->bounds:Landroid/graphics/Rect;

    return-void

    const/4 v0, 0x0
.end method

.method public setBlur(I)V
    .locals 4

    const/4 v3, 0x1

    .line 59
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->pnt:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    int-to-float p1, p1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, p1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    goto :goto_0

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 60
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method setRadius(F)V
    .locals 1

    const/4 v0, 0x1

    .line 40
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->radius:F

    .line 41
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
