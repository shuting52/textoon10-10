.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;
.super Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;
.source "MarkerDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FRAME_DURATION:J = 0x10L


# instance fields
.field private mAnimationInitialValue:F

.field private mClosedStateSize:F

.field private mCurrentScale:F

.field private mDuration:I

.field private mEndColor:I

.field private mExternalOffset:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMarkerListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field mMatrix:Landroid/graphics/Matrix;

.field mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mReverse:Z

.field private mRunning:Z

.field private mStartColor:I

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mReverse:Z

    .line 54
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRunning:Z

    const/16 v1, 0xfa

    .line 55
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mDuration:I

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRect:Landroid/graphics/RectF;

    .line 69
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 181
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 74
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float p2, p2

    .line 75
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mClosedStateSize:F

    const/4 p2, 0x1

    .line 76
    new-array p2, p2, [I

    const v1, 0x10100a7

    aput v1, p2, v0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartColor:I

    .line 77
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mEndColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)J
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 46
    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartTime:J

    return-wide v0

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)I
    .locals 1

    const/4 v0, 0x3

    .line 46
    const/4 v0, 0x0

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mDuration:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)Landroid/view/animation/Interpolator;
    .locals 1

    const/4 v0, 0x2

    .line 46
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x1

    .line 46
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;F)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->updateAnimation(F)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$502(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;Z)Z
    .locals 1

    const/4 v0, 0x3

    .line 46
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRunning:Z

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$600(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
    .locals 1

    const/4 v0, 0x2

    .line 46
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->notifyFinishedToListener()V

    return-void

    const/4 v0, 0x0
.end method

.method private static blendColors(IIF)I
    .locals 6

    const/4 v5, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 232
    const/4 v5, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 233
    const/4 v5, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 234
    const/4 v5, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    .line 235
    const/4 v5, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 236
    const/4 v5, 0x2

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    const/4 v1, 0x1
.end method

.method private computePath(Landroid/graphics/Rect;)V
    .locals 13

    const/4 v12, 0x0

    .line 117
    const/4 v12, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    .line 118
    const/4 v12, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    .line 119
    const/4 v12, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRect:Landroid/graphics/RectF;

    .line 120
    const/4 v12, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 122
    const/4 v12, 0x1

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 123
    const/4 v12, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 125
    const/4 v12, 0x3

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mClosedStateSize:F

    int-to-float v4, v4

    sub-float/2addr v4, v5

    mul-float v4, v4, v0

    add-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v5, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    mul-float v0, v6, v7

    const/16 v8, 0x8

    .line 132
    const/4 v12, 0x0

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v6, v8, v9

    const/4 v9, 0x2

    aput v6, v8, v9

    const/4 v9, 0x3

    aput v6, v8, v9

    const/4 v9, 0x4

    aput v6, v8, v9

    const/4 v9, 0x5

    aput v6, v8, v9

    const/4 v9, 0x6

    aput v0, v8, v9

    const/4 v9, 0x7

    aput v0, v8, v9

    .line 133
    const/4 v12, 0x1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v9, p1, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, p1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    add-float/2addr v10, v5

    iget v11, p1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v11, v5

    invoke-virtual {v2, v0, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 134
    const/4 v12, 0x2

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v8, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 135
    const/4 v12, 0x3

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 136
    const/4 v12, 0x0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v6

    const/high16 v6, -0x3dcc0000    # -45.0f

    invoke-virtual {v3, v6, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 137
    const/4 v12, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 138
    const/4 v12, 0x2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v5

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mExternalOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float p1, p1, v7

    .line 139
    const/4 v12, 0x3

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    const/4 v12, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void

    const/4 v0, 0x0
.end method

.method private notifyFinishedToListener()V
    .locals 2

    const/4 v1, 0x2

    .line 206
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mMarkerListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 207
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mReverse:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 208
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mMarkerListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    goto :goto_0

    const/4 v1, 0x0

    .line 210
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mMarkerListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-interface {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_1
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method private updateAnimation(F)V
    .locals 3

    const/4 v2, 0x2

    .line 144
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mAnimationInitialValue:F

    .line 145
    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mReverse:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x0

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 146
    const/4 v2, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    .line 147
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->computePath(Landroid/graphics/Rect;)V

    .line 148
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->invalidateSelf()V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public animateToNormal()V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x1

    .line 167
    const/4 v7, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mReverse:Z

    .line 168
    const/4 v7, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 169
    const/4 v7, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v7, 0x1

    .line 170
    const/4 v7, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRunning:Z

    .line 171
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mAnimationInitialValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 172
    const/4 v7, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    rsub-int v0, v0, 0xfa

    .line 173
    const/4 v7, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mDuration:I

    .line 174
    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartTime:J

    .line 175
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartTime:J

    const-wide/16 v3, 0x10

    add-long v5, v1, v3

    invoke-virtual {p0, v0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    const/4 v7, 0x0

    .line 177
    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->notifyFinishedToListener()V

    :goto_0
    const/4 v7, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method public animateToPressed()V
    .locals 8

    const/4 v7, 0x1

    .line 152
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 153
    const/4 v7, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mReverse:Z

    .line 154
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v7, 0x1

    const/4 v0, 0x1

    .line 155
    const/4 v7, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRunning:Z

    .line 156
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mAnimationInitialValue:F

    .line 157
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 158
    const/4 v7, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mDuration:I

    .line 159
    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartTime:J

    .line 160
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartTime:J

    const-wide/16 v3, 0x10

    add-long v5, v1, v3

    invoke-virtual {p0, v0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    const/4 v7, 0x0

    .line 162
    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->notifyFinishedToListener()V

    :goto_0
    const/4 v7, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    const/4 v3, 0x1

    .line 98
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    .line 99
    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    const/4 v3, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartColor:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mEndColor:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mCurrentScale:F

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->blendColors(IIF)I

    move-result v0

    .line 101
    const/4 v3, 0x2

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    const/4 v1, 0x2

    .line 107
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mPath:Landroid/graphics/Path;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isRunning()Z
    .locals 2

    const/4 v1, 0x1

    .line 227
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mRunning:Z

    return v0

    const/4 v1, 0x1
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 113
    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->computePath(Landroid/graphics/Rect;)V

    return-void

    const/4 v0, 0x0
.end method

.method public setColors(II)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mStartColor:I

    .line 93
    const/4 v0, 0x2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mEndColor:I

    return-void

    const/4 v0, 0x0
.end method

.method public setExternalOffset(I)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mExternalOffset:I

    return-void

    const/4 v0, 0x0
.end method

.method public setMarkerListener(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 1

    const/4 v0, 0x3

    .line 202
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mMarkerListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-void

    const/4 v0, 0x0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public stop()V
    .locals 2

    const/4 v1, 0x0

    .line 222
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    const/4 v1, 0x1
.end method
