.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;
.super Ljava/lang/Object;
.source "SeekBarCompatDontCrash.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 50
    const/4 v2, 0x2

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method public static isInScrollingContainer(Landroid/view/ViewParent;)Z
    .locals 2

    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 62
    const/4 v1, 0x2

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 63
    const/4 v1, 0x0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 p0, 0x1

    return p0

    .line 66
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    const/4 p0, 0x0

    return p0

    const/4 v1, 0x1
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x3

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    const/4 v0, 0x0
.end method

.method public static setOutlineProvider(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
    .locals 2

    const/4 v1, 0x2

    .line 41
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash$1;

    invoke-direct {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    const/4 v1, 0x1
.end method

.method public static setTextDirection(Landroid/widget/TextView;I)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextDirection(I)V

    return-void

    const/4 v0, 0x0
.end method
