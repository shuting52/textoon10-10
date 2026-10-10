.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;
.super Landroid/widget/FrameLayout;
.source "floatingPanelsHolder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/floatingPanelsHolder;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 56
    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x2

    const/4 p1, 0x0

    return p1

    const/4 v0, 0x0
.end method
