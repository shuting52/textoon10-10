.class Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;
.super Ljava/lang/Object;
.source "SegmentedSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SegmentedItem"
.end annotation


# instance fields
.field arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

.field hovered:Z

.field iconD:Landroid/graphics/drawable/Drawable;

.field iconRes:I

.field selected:Z

.field text:Ljava/lang/String;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;I)V
    .locals 2

    .line 212
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 206
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconRes:I

    const/4 v1, 0x0

    .line 207
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    .line 208
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 210
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->selected:Z

    .line 211
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->hovered:Z

    .line 213
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconRes:I

    .line 215
    :try_start_0
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconRes:I

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 210
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->selected:Z

    .line 211
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->hovered:Z

    .line 224
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    return-void
.end method

.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;Ljava/lang/String;)V
    .locals 1

    .line 220
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 206
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconRes:I

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    .line 209
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    .line 210
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->selected:Z

    .line 211
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->hovered:Z

    .line 221
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drawIcon(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 238
    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->selected:Z

    if-nez v0, :cond_1

    const/4 v5, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->hovered:Z

    if-nez v0, :cond_0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->selectedColor:I

    goto :goto_0

    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->hoverColor:I

    goto :goto_0

    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->unselectedColor:I

    .line 239
    const/4 v5, 0x0

    :goto_0
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    const/4 v5, 0x2

    .line 240
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 241
    const/4 v5, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 242
    const/4 v5, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 243
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    const/4 v5, 0x3

    .line 244
    const/4 v5, 0x0

    :cond_2
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    if-eqz v1, :cond_3

    const/4 v5, 0x2

    .line 245
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntArrow:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->arrowHead:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntArrow:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/PointF;F)V

    goto :goto_1

    const/4 v5, 0x1

    .line 247
    const/4 v5, 0x2

    :cond_3
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v5, 0x0

    .line 248
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 250
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    const/4 v5, 0x0

    :goto_1
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method getTextWidth()F
    .locals 3

    const/4 v2, 0x3

    .line 254
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    const/4 v0, 0x0

    return v0

    .line 255
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->pntText:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public isHovered()Z
    .locals 2

    const/4 v1, 0x1

    .line 233
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->hovered:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isSelected()Z
    .locals 2

    const/4 v1, 0x0

    .line 227
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->selected:Z

    return v0

    const/4 v1, 0x1
.end method

.method public setHovered(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 235
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->hovered:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 230
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->selected:Z

    .line 231
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$SegmentedItem;->iconD:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return-void

    :cond_0
    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
