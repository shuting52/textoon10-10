.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;
.super Landroid/graphics/drawable/Drawable;
.source "textSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateBackgroundColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 148
    const/4 v7, 0x3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 150
    const/4 v7, 0x0

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 151
    const/4 v7, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v1, 0x8d

    const/16 v2, 0x8b

    .line 152
    const/4 v7, 0x2

    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    const/4 v7, 0x3

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->paddingSides:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->paddingSides:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 157
    const/4 v7, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-boolean v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    if-eqz v2, :cond_0

    const/4 v7, 0x1

    .line 158
    const/4 v7, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 160
    const/4 v7, 0x3

    :cond_0
    const/4 v7, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 161
    const/4 v7, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    const/4 v7, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x3
.end method

.method public getOpacity()I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public setAlpha(I)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method
