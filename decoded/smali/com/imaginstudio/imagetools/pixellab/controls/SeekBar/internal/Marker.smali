.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;
.super Landroid/view/ViewGroup;
.source "Marker.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# static fields
.field private static final ELEVATION_DP:I = 0x8

.field private static final PADDING_DP:I = 0x4

.field private static final SEPARATION_DP:I = 0x1e


# instance fields
.field mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

.field private mNumber:Landroid/widget/TextView;

.field private mSeparation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030070

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "0"

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 6

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 77
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->DiscreteSeekBar:[I

    const v1, 0x7f030070

    const v2, 0x7f0d00a7

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 80
    iget v0, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x5

    const v3, 0x7f0d00a6

    .line 81
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 83
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    .line 85
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v4, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 91
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->setTextDirection(Landroid/widget/TextView;I)V

    .line 92
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->setPadding(IIII)V

    .line 98
    invoke-virtual {p0, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    .line 100
    iget p1, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41f00000    # 30.0f

    mul-float p1, p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mSeparation:I

    .line 101
    iget p1, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41400000    # 12.0f

    mul-float p1, p1, p4

    float-to-int p1, p1

    .line 102
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    .line 103
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-direct {v2, p4, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;-><init>(Landroid/content/res/ColorStateList;I)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    .line 104
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->setMarkerListener(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    .line 106
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->setExternalOffset(I)V

    .line 109
    iget p1, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41000000    # 8.0f

    mul-float p1, p1, p3

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    .line 110
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 111
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_0

    .line 112
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->setOutlineProvider(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 193
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->stop()V

    .line 194
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->animateToNormal()V

    return-void

    const/4 v0, 0x2
.end method

.method public animateOpen()V
    .locals 2

    const/4 v1, 0x3

    .line 188
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->stop()V

    .line 189
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->animateToPressed()V

    return-void

    const/4 v1, 0x1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x3

    .line 134
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    const/4 v1, 0x1
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x3

    .line 184
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x2

    .line 171
    const/4 v0, 0x3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateOpen()V

    return-void

    const/4 v0, 0x0
.end method

.method public onClosingComplete()V
    .locals 2

    const/4 v1, 0x2

    .line 208
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 209
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    .line 215
    const/4 v1, 0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 216
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->stop()V

    return-void

    const/4 v1, 0x1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v2, 0x0

    .line 153
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingLeft()I

    move-result p1

    .line 154
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingTop()I

    move-result p2

    .line 155
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    .line 156
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    .line 158
    const/4 v2, 0x1

    iget-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    add-int/2addr v1, p2

    invoke-virtual {p5, p1, p2, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 161
    const/4 v2, 0x2

    iget-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->setBounds(IIII)V

    return-void

    const/4 v0, 0x2
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v2, 0x0

    .line 140
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->measureChildren(II)V

    .line 141
    const/4 v2, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    .line 142
    const/4 v2, 0x3

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 147
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    int-to-float v0, v0

    const v1, 0x3fb47ae1    # 1.41f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 148
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mSeparation:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->setMeasuredDimension(II)V

    return-void

    const/4 v0, 0x2
.end method

.method public onOpeningComplete()V
    .locals 3

    const/4 v2, 0x3

    .line 200
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 202
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public resetSizes(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    .line 118
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 120
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/4 v4, 0x1

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, -0x80000000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 125
    const/4 v4, 0x2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 126
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 127
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    .line 128
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->removeView(Landroid/view/View;)V

    .line 129
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mWidth:I

    const/16 v3, 0x33

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v0, 0x0
.end method

.method public setColors(II)V
    .locals 2

    const/4 v1, 0x0

    .line 220
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->setColors(II)V

    return-void

    const/4 v1, 0x1
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x3

    .line 180
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v1, 0x2

    .line 166
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->mMarkerDrawable:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 p1, 0x0

    goto :goto_1

    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v1, 0x2

    const/4 p1, 0x1

    :goto_1
    const/4 v1, 0x3

    return p1

    const/4 v1, 0x1
.end method
