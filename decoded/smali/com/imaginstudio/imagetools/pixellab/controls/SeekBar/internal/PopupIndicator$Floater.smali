.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;
.super Landroid/widget/FrameLayout;
.source "PopupIndicator.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Floater"
.end annotation


# instance fields
.field private mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

.field private mOffset:I

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    .line 216
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    .line 218
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    const/16 p4, 0x33

    invoke-direct {p2, p3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 211
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    return-object p0

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 2

    const/4 v1, 0x0

    .line 250
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 251
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    .line 253
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismissComplete()V

    return-void

    const/4 v1, 0x1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x3

    .line 231
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 232
    const/4 v0, 0x1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mOffset:I

    sub-int/2addr p2, p1

    .line 233
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getMeasuredHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->layout(IIII)V

    return-void

    const/4 v0, 0x0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->measureChildren(II)V

    .line 224
    const/4 v0, 0x2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 225
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getMeasuredHeight()I

    move-result p2

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->setMeasuredDimension(II)V

    return-void

    const/4 v0, 0x0
.end method

.method public onOpeningComplete()V
    .locals 2

    const/4 v1, 0x2

    .line 258
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 259
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public setColors(II)V
    .locals 2

    const/4 v1, 0x0

    .line 264
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->setColors(II)V

    return-void

    const/4 v1, 0x1
.end method

.method public setFloatOffset(I)V
    .locals 3

    const/4 v2, 0x3

    .line 237
    const/4 v2, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mOffset:I

    .line 238
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 240
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->mMarker:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->offsetLeftAndRight(I)V

    .line 243
    const/4 v2, 0x3

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->isHardwareAccelerated(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 244
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->invalidate()V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
