.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 59
    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v2, 0x2

    .line 60
    const/4 v2, 0x3

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 62
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public static isHardwareAccelerated(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x3

    .line 123
    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    .line 124
    const/4 v2, 0x2

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x3

    const/4 p0, 0x0

    return p0

    const/4 v0, 0x2
.end method

.method public static isInScrollingContainer(Landroid/view/ViewParent;)Z
    .locals 3

    const/4 v2, 0x1

    .line 116
    const/4 v2, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v2, 0x3

    .line 117
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x1

    const/4 p0, 0x0

    return p0

    const/4 v0, 0x2
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x3

    .line 95
    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    .line 96
    const/4 v2, 0x2

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    const/4 v2, 0x3

    .line 98
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public static setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3

    const/4 v2, 0x0

    .line 77
    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v2, 0x2

    sub-int v0, p3, p1

    .line 79
    const/4 v2, 0x3

    div-int/lit8 v0, v0, 0x8

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    sub-int/2addr p4, v0

    .line 80
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    const/4 v2, 0x1

    .line 82
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public static setOutlineProvider(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
    .locals 3

    const/4 v2, 0x2

    .line 46
    const/4 v2, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    .line 47
    const/4 v2, 0x1

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setOutlineProvider(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public static setTextDirection(Landroid/widget/TextView;I)V
    .locals 3

    const/4 v2, 0x0

    .line 110
    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v2, 0x2

    .line 111
    const/4 v2, 0x3

    invoke-static {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompatDontCrash;->setTextDirection(Landroid/widget/TextView;I)V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method
