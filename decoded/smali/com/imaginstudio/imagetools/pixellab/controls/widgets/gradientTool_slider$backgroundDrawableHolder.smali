.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;
.super Landroid/graphics/drawable/Drawable;
.source "gradientTool_slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "backgroundDrawableHolder"
.end annotation


# instance fields
.field colors:[I

.field linGrad:Landroid/graphics/LinearGradient;

.field pnGradient:Landroid/graphics/Paint;

.field positions:[F

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->positions:[F

    .line 103
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->colors:[I

    .line 104
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->linGrad:Landroid/graphics/LinearGradient;

    .line 105
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->pnGradient:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v11, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 108
    const/4 v11, 0x2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result v1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleH:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 109
    const/4 v11, 0x3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 110
    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    const/4 v11, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    div-int/2addr v3, v2

    int-to-float v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    const/4 v11, 0x2

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 113
    const/4 v11, 0x3

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v4, -0xbbbbbc

    .line 114
    const/4 v11, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    const/4 v11, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    const/4 v11, 0x2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    const v4, -0x333334

    .line 117
    const/4 v11, 0x3

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    const/4 v11, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result v2

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 120
    const/4 v11, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    const/4 v11, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 122
    const/4 v11, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->positions:[F

    if-eqz v2, :cond_0

    const/4 v11, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->colors:[I

    if-eqz v2, :cond_0

    const/4 v11, 0x2

    .line 124
    const/4 v11, 0x3

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->colors:[I

    iget-object v9, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->positions:[F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->linGrad:Landroid/graphics/LinearGradient;

    .line 125
    const/4 v11, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->pnGradient:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->linGrad:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 126
    const/4 v11, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->pnGradient:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    const/4 v11, 0x2

    :cond_0
    const/4 v11, 0x3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    const/4 v1, 0x3
.end method

.method public getOpacity()I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public setAlpha(I)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public updateGradient([I[F)V
    .locals 1

    const/4 v0, 0x3

    .line 132
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->colors:[I

    .line 133
    const/4 v0, 0x1

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->positions:[F

    .line 134
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
