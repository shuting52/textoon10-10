.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;
.super Landroid/widget/FrameLayout;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;
    }
.end annotation


# instance fields
.field label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

.field width:I

.field zoom:Landroid/widget/ImageButton;

.field zoomListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;

.field zoomOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    const/16 p1, 0x4c

    .line 32
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->width:I

    .line 79
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->init()V

    return-void
.end method


# virtual methods
.method init()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 52
    const/4 v5, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    .line 53
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701bc

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    const/4 v5, 0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 55
    const/4 v5, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070056

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    const/4 v5, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 58
    const/4 v5, 0x2

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$1;

    invoke-direct {v4, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    invoke-direct {v2, p0, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    .line 66
    const/4 v5, 0x3

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    const/4 v5, 0x0

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->setVisibility(I)V

    .line 69
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    invoke-virtual {p0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v1, 0x1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    .line 119
    const/4 v0, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomOn(Z)V

    return-void

    const/4 v0, 0x0
.end method

.method public setZoomListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 46
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;

    return-void

    const/4 v0, 0x0
.end method

.method public setZoomOn(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 34
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    .line 35
    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    .line 36
    const/4 v1, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    if-eq v0, p1, :cond_0

    const/4 v1, 0x0

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->updateButtons()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method updateButtons()V
    .locals 10

    const/4 v9, 0x0

    .line 82
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 83
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;

    if-eqz v0, :cond_0

    const/4 v9, 0x3

    .line 84
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;->zoomToggle(Z)V

    .line 86
    const/4 v9, 0x1

    :cond_0
    const/4 v9, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomOn:Z

    const-wide/16 v1, 0x96

    const-wide/16 v3, 0x64

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    const/4 v9, 0x3

    .line 87
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 88
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    invoke-virtual {v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->setAlpha(F)V

    .line 89
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->setVisibility(I)V

    .line 90
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    const/4 v9, 0x0

    .line 92
    const/4 v9, 0x1

    :cond_1
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoom:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    sub-float/2addr v6, v8

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 94
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$2;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 v9, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public updateZoom(F)V
    .locals 2

    const/4 v1, 0x3

    .line 49
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->setZoom(F)V

    return-void

    const/4 v1, 0x1
.end method
