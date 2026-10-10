.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;
.super Ljava/lang/Object;
.source "PopupIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;
    }
.end annotation


# instance fields
.field private mDrawingLocation:[I

.field private mListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field screenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    const-string v0, "window"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget p3, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 49
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-object p0

    const/4 v0, 0x0
.end method

.method private computeFlags(I)I
    .locals 2

    const/4 v1, 0x3

    const v0, -0x68219

    and-int/2addr p1, v0

    const v0, 0x8000

    or-int/2addr p1, v0

    or-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x10

    or-int/lit16 p1, p1, 0x200

    return p1

    const/4 v1, 0x1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, 0x1

    .line 170
    const/4 v2, 0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    .line 171
    const/4 v2, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    .line 172
    const/4 v2, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 173
    const/4 v2, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    .line 174
    const/4 v2, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 175
    const/4 v2, 0x3

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x3e8

    .line 176
    const/4 v2, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 177
    const/4 v2, 0x1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p1, 0x3

    .line 178
    const/4 v2, 0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 179
    const/4 v2, 0x3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscreteSeekBar Indicator:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    const/4 v0, 0x2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const/4 v2, 0x1

    .line 165
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateOpen()V

    return-void

    const/4 v0, 0x2
.end method

.method private measureFloater()V
    .locals 4

    const/4 v3, 0x1

    .line 85
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 86
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 87
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {v2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->measure(II)V

    return-void

    const/4 v1, 0x3
.end method

.method private translateViewIntoPosition(I)V
    .locals 4

    const/4 v3, 0x2

    .line 161
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->setFloatOffset(I)V

    return-void

    const/4 v1, 0x3
.end method

.method private updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 4

    const/4 v3, 0x1

    .line 150
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->measureFloater()V

    .line 151
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->getMeasuredHeight()I

    move-result v0

    .line 152
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->getPaddingBottom()I

    move-result v1

    .line 153
    const/4 v3, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 154
    const/4 v3, 0x2

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 155
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    add-int/2addr p1, v1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 156
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 157
    const/4 v3, 0x1

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v1, 0x3

    .line 132
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateClose()V

    return-void

    const/4 v1, 0x1
.end method

.method public dismissComplete()V
    .locals 3

    const/4 v2, 0x2

    .line 140
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 141
    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mShowing:Z

    .line 143
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public isShowing()Z
    .locals 2

    const/4 v1, 0x1

    .line 95
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mShowing:Z

    return v0

    const/4 v1, 0x1
.end method

.method public move(I)V
    .locals 2

    const/4 v1, 0x0

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    return-void

    .line 121
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    return-void

    const/4 v1, 0x1
.end method

.method public setColors(II)V
    .locals 2

    const/4 v1, 0x2

    .line 125
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->setColors(II)V

    return-void

    const/4 v1, 0x1
.end method

.method public setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-void

    const/4 v0, 0x0
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    .line 91
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->setValue(Ljava/lang/CharSequence;)V

    return-void

    const/4 v1, 0x1
.end method

.method public showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x3

    .line 99
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 100
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->animateOpen()V

    return-void

    .line 104
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 106
    const/4 v2, 0x2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x800033

    .line 108
    const/4 v2, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 109
    const/4 v2, 0x0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    const/4 p1, 0x1

    .line 110
    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mShowing:Z

    .line 112
    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    .line 113
    const/4 v2, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public updateSizes(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    .line 70
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismissComplete()V

    .line 71
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 72
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->mPopupView:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator$Floater;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method
