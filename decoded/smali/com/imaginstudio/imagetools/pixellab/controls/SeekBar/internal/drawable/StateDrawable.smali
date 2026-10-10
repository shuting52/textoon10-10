.class public abstract Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StateDrawable.java"


# instance fields
.field private mAlpha:I

.field private mCurrentColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mTintStateList:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 40
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mAlpha:I

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    .line 45
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mCurrentColor:I

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private updateTint([I)Z
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 67
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 68
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mCurrentColor:I

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    .line 69
    const/4 v2, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mCurrentColor:I

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->invalidateSelf()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v2, 0x1

    const/4 p1, 0x0

    return p1

    const/4 v0, 0x2
.end method


# virtual methods
.method abstract doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x3

    .line 79
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mCurrentColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->modulateAlpha(I)I

    move-result v0

    .line 81
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method

.method public getAlpha()I
    .locals 2

    const/4 v1, 0x1

    .line 111
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mAlpha:I

    return v0

    const/4 v1, 0x1
.end method

.method public getOpacity()I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x3

    return v0

    const/4 v1, 0x1
.end method

.method public isStateful()Z
    .locals 2

    const/4 v1, 0x2

    .line 51
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 v0, 0x0

    goto :goto_1

    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v1, 0x2

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x3

    return v0

    const/4 v1, 0x1
.end method

.method modulateAlpha(I)I
    .locals 3

    const/4 v2, 0x1

    .line 105
    const/4 v2, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mAlpha:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mAlpha:I

    shr-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    mul-int p1, p1, v0

    shr-int/lit8 p1, p1, 0x8

    return p1

    const/4 v0, 0x2
.end method

.method public setAlpha(I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mAlpha:I

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->invalidateSelf()V

    return-void

    const/4 v0, 0x0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    const/4 v1, 0x0

    .line 116
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void

    const/4 v1, 0x1
.end method

.method public setColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 86
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->mTintStateList:Landroid/content/res/ColorStateList;

    return-void

    const/4 v0, 0x0
.end method

.method public setState([I)Z
    .locals 2

    const/4 v1, 0x2

    .line 56
    const/4 v1, 0x3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 57
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->updateTint([I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 p1, 0x0

    goto :goto_1

    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/4 v1, 0x3

    const/4 p1, 0x1

    :goto_1
    const/4 v1, 0x0

    return p1

    const/4 v1, 0x1
.end method
