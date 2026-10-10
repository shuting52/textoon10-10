.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;
.super Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;
.source "AlmostRippleDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ACTIVE_SCALE:F = 1.0f

.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final FRAME_DURATION:J = 0x10L

.field private static final INACTIVE_SCALE:F


# instance fields
.field private mAnimationInitialValue:F

.field private mCurrentScale:F

.field private mDisabledColor:I

.field private mDuration:I

.field private mFocusedColor:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPressedColor:I

.field private mReverse:Z

.field private mRippleBgColor:I

.field private mRippleColor:I

.field private mRunning:Z

.field private mStartTime:J

.field private final mUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 5
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 40
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    const/16 v1, 0xfa

    .line 41
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 170
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 52
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    .line 53
    new-array v2, v1, [I

    const v3, 0x101009c

    aput v3, v2, v0

    const/high16 v3, -0x10000

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    .line 54
    new-array v2, v1, [I

    const v4, 0x10100a7

    aput v4, v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    .line 55
    new-array v1, v1, [I

    const v2, -0x101009e

    aput v2, v1, v0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)J
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 30
    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    return-wide v0

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)I
    .locals 1

    const/4 v0, 0x2

    .line 30
    const/4 v0, 0x3

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)Landroid/view/animation/Interpolator;
    .locals 1

    const/4 v0, 0x1

    .line 30
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 30
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;F)V
    .locals 1

    const/4 v0, 0x3

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->updateAnimation(F)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$502(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;Z)Z
    .locals 1

    const/4 v0, 0x2

    .line 30
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return p1

    const/4 v0, 0x0
.end method

.method private decreasedAlpha(I)I
    .locals 1

    const/4 v0, 0x1

    mul-int/lit8 p1, p1, 0x64

    shr-int/lit8 p1, p1, 0x8

    return p1

    const/4 v0, 0x0
.end method

.method private updateAnimation(F)V
    .locals 3

    const/4 v2, 0x3

    .line 164
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 165
    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x1

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 166
    const/4 v2, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 167
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public animateToNormal()V
    .locals 8

    const/4 v7, 0x1

    .line 151
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 152
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 153
    const/4 v7, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    .line 154
    const/4 v7, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 155
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 156
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 157
    const/4 v7, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 158
    const/4 v7, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    .line 159
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    const-wide/16 v3, 0x10

    add-long v5, v1, v3

    invoke-virtual {p0, v0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    const/4 v7, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public animateToPressed()V
    .locals 8

    const/4 v7, 0x2

    .line 138
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 139
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 140
    const/4 v7, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mReverse:Z

    const/4 v0, 0x1

    .line 141
    const/4 v7, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    .line 142
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    .line 143
    const/4 v7, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mAnimationInitialValue:F

    const/4 v2, 0x0

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 144
    const/4 v7, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDuration:I

    .line 145
    const/4 v7, 0x3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    .line 146
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mStartTime:J

    const-wide/16 v3, 0x10

    add-long v5, v1, v3

    invoke-virtual {p0, v0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    const/4 v7, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    const/4 v7, 0x3

    .line 60
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 61
    const/4 v7, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 62
    const/4 v7, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 63
    const/4 v7, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 64
    const/4 v7, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    .line 65
    const/4 v7, 0x1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    const/4 v7, 0x3

    .line 69
    const/4 v7, 0x0

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    const/4 v7, 0x1

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->decreasedAlpha(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    const/4 v7, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v7, 0x3

    if-eqz v3, :cond_1

    const/4 v7, 0x0

    .line 74
    const/4 v7, 0x1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    const/4 v7, 0x2

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->modulateAlpha(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    const/4 v7, 0x3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v7, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public isRunning()Z
    .locals 2

    const/4 v1, 0x2

    .line 201
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRunning:Z

    return v0

    const/4 v1, 0x1
.end method

.method public setState([I)Z
    .locals 12

    const/4 v11, 0x1

    .line 88
    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->getState()[I

    move-result-object v0

    .line 90
    const/4 v11, 0x3

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v11, 0x0

    const v5, 0x10100a7

    const/4 v6, 0x1

    if-ge v3, v1, :cond_1

    const/4 v11, 0x1

    aget v7, v0, v3

    if-ne v7, v5, :cond_0

    const/4 v11, 0x2

    const/4 v4, 0x1

    :cond_0
    const/4 v11, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v11, 0x0

    .line 95
    const/4 v11, 0x1

    :cond_1
    const/4 v11, 0x2

    invoke-super {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;->setState([I)Z

    .line 99
    const/4 v11, 0x3

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x0

    if-ge v1, v0, :cond_5

    const/4 v11, 0x1

    aget v9, p1, v1

    const v10, 0x101009c

    if-ne v9, v10, :cond_2

    const/4 v11, 0x2

    const/4 v8, 0x1

    goto :goto_2

    const/4 v11, 0x3

    :cond_2
    const/4 v11, 0x0

    if-ne v9, v5, :cond_3

    const/4 v11, 0x1

    const/4 v7, 0x1

    goto :goto_2

    const/4 v11, 0x2

    :cond_3
    const/4 v11, 0x3

    const v10, 0x101009e

    if-ne v9, v10, :cond_4

    const/4 v11, 0x0

    const/4 v3, 0x0

    :cond_4
    const/4 v11, 0x1

    :goto_2
    const/4 v11, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v11, 0x3

    :cond_5
    const/4 v11, 0x0

    if-eqz v3, :cond_6

    const/4 v11, 0x1

    .line 110
    const/4 v11, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 111
    const/4 v11, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mDisabledColor:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 112
    const/4 v11, 0x0

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 113
    const/4 v11, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 114
    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    goto :goto_3

    const/4 v11, 0x3

    :cond_6
    const/4 v11, 0x0

    if-eqz v7, :cond_7

    const/4 v11, 0x1

    .line 117
    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->animateToPressed()V

    .line 118
    const/4 v11, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    goto :goto_3

    const/4 v11, 0x0

    :cond_7
    const/4 v11, 0x1

    if-eqz v4, :cond_8

    const/4 v11, 0x2

    .line 120
    const/4 v11, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mPressedColor:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 121
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->animateToNormal()V

    goto :goto_3

    const/4 v11, 0x1

    :cond_8
    const/4 v11, 0x2

    if-eqz v8, :cond_9

    const/4 v11, 0x3

    .line 123
    const/4 v11, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mFocusedColor:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 124
    const/4 v11, 0x1

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 125
    const/4 v11, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 126
    const/4 v11, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    goto :goto_3

    const/4 v11, 0x0

    .line 128
    const/4 v11, 0x1

    :cond_9
    const/4 v11, 0x2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleColor:I

    .line 129
    const/4 v11, 0x3

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mRippleBgColor:I

    const/4 p1, 0x0

    .line 130
    const/4 v11, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->mCurrentScale:F

    .line 131
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/AlmostRippleDrawable;->invalidateSelf()V

    :goto_3
    const/4 v11, 0x2

    return v6

    const/4 v1, 0x3
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
