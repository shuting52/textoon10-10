.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;
.super Landroid/view/View;
.source "ZoomButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomLabel"
.end annotation


# instance fields
.field bounds:Landroid/graphics/RectF;

.field isClicked:Z

.field listener:Landroid/view/View$OnClickListener;

.field pntBg:Landroid/graphics/Paint;

.field pntText:Landroid/graphics/Paint;

.field roundness:F

.field textArea:Landroid/graphics/RectF;

.field textBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field zoomText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 132
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    .line 133
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 124
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->roundness:F

    const-string p1, "100%"

    .line 127
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->zoomText:Ljava/lang/String;

    .line 129
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 130
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->isClicked:Z

    .line 134
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntBg:Landroid/graphics/Paint;

    .line 135
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntBg:Landroid/graphics/Paint;

    const-string v0, "#152e59"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntText:Landroid/graphics/Paint;

    .line 137
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntText:Landroid/graphics/Paint;

    const/16 p2, 0xc

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->spToPx(I)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntText:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 144
    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v5, 0x2

    return-void

    .line 148
    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntBg:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->isClicked:Z

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    const/16 v1, 0xaa

    goto :goto_0

    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    const/16 v1, 0xff

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->roundness:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->roundness:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 150
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntText:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->zoomText:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->zoomText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 151
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->zoomText:Ljava/lang/String;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x1
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    const/4 v0, 0x2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 161
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->width:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->setMeasuredDimension(II)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v1, 0x1

    .line 166
    const/4 v1, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 167
    const/4 v1, 0x3

    new-instance p3, Landroid/graphics/RectF;

    const/16 p4, 0x14

    invoke-static {p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p4

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->bounds:Landroid/graphics/RectF;

    .line 168
    const/4 v1, 0x0

    new-instance p1, Landroid/graphics/RectF;

    const/16 p3, 0x26

    invoke-static {p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->bounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    invoke-direct {p1, p3, v0, p4, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->textArea:Landroid/graphics/RectF;

    return-void

    const/4 v1, 0x1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x2

    .line 173
    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    const/4 v2, 0x1

    .line 175
    const/4 v2, 0x2

    :pswitch_0
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->isClicked:Z

    .line 176
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->invalidate()V

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    :pswitch_1
    const/4 p1, 0x0

    .line 180
    const/4 v2, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->isClicked:Z

    .line 181
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->invalidate()V

    .line 182
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->listener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    const/4 v2, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v0, 0x2
.end method

.method public setZoom(F)V
    .locals 3

    const/4 v2, 0x3

    .line 154
    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->zoomText:Ljava/lang/String;

    .line 155
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method
