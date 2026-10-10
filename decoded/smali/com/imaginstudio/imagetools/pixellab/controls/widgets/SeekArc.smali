.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;
.super Landroid/view/View;
.source "SeekArc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_PROGRESS_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeekArc"


# instance fields
.field private drawMiddle:Z

.field private ignoreTouchFor:Landroid/widget/ScrollView;

.field private final mAngleOffset:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcRadius:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mArcWidth:I

.field private mClockwise:Z

.field private mMax:I

.field private mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

.field private mProgress:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressShow:Ljava/lang/Boolean;

.field private mProgressSweep:F

.field private mProgressWidth:I

.field private mRotation:I

.field private mRoundedEdges:Z

.field private mStartAngle:I

.field private mSweepAngle:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbXPos:I

.field private mThumbYPos:I

.field private mTouchAngle:D

.field private mTouchIgnoreRadius:F

.field private mTouchInside:Z

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x5a

    .line 41
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mAngleOffset:I

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    const/16 v1, 0x64

    .line 52
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 v2, 0x4

    .line 62
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v2, 0x2

    .line 67
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    .line 72
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 v2, 0x168

    .line 77
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 82
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    .line 87
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    .line 92
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    .line 97
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    .line 100
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 112
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    const v0, 0x7f0300f9

    .line 163
    invoke-direct {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, -0x5a

    .line 41
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mAngleOffset:I

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    const/16 v1, 0x64

    .line 52
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 v2, 0x4

    .line 62
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v2, 0x2

    .line 67
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    .line 72
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 v2, 0x168

    .line 77
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 82
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    .line 87
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    .line 92
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    .line 97
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    .line 100
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    .line 102
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 112
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 3

    .line 156
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, -0x5a

    .line 41
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mAngleOffset:I

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    const/16 v1, 0x64

    .line 52
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 v2, 0x4

    .line 62
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v2, 0x2

    .line 67
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    .line 72
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 v2, 0x168

    .line 77
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 82
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    .line 87
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    .line 92
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    .line 97
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    .line 100
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    const/4 v2, 0x0

    .line 101
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    .line 102
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 112
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    .line 157
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    .line 158
    invoke-direct {p0, p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getProgressForAngle(D)I
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 416
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->valuePerDegree()F

    move-result v0

    float-to-double v0, v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    if-gez p1, :cond_0

    const/4 v2, 0x2

    .line 418
    const/4 v2, 0x3

    sget p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->INVALID_PROGRESS_VALUE:I

    .line 420
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    if-le p1, p2, :cond_1

    const/4 v2, 0x2

    sget p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->INVALID_PROGRESS_VALUE:I

    :cond_1
    const/4 v2, 0x3

    return p1

    const/4 v0, 0x2
.end method

.method private getTouchDegrees(FF)D
    .locals 4

    const/4 v3, 0x1

    .line 401
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 402
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 404
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    neg-float p1, p1

    :goto_0
    const/4 v3, 0x0

    float-to-double v0, p2

    float-to-double p1, p1

    .line 406
    const/4 v3, 0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    int-to-double v0, v0

    .line 407
    const/4 v3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p1, v0

    .line 406
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    const/4 v3, 0x0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    .line 411
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    int-to-double v0, v0

    sub-double/2addr p1, v0

    return-wide p1

    const/4 v1, 0x3
.end method

.method private ignoreTouch(FF)Z
    .locals 2

    const/4 v1, 0x0

    .line 390
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 391
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 393
    const/4 v1, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 394
    const/4 v1, 0x0

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchIgnoreRadius:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    const/4 p1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    return p1

    const/4 v1, 0x1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v8, 0x2

    .line 173
    const/4 v8, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->TAG:Ljava/lang/String;

    const-string v1, "Initialising SeekArc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x7f05005b

    .line 178
    const/4 v8, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x1060012

    .line 179
    const/4 v8, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f070196

    .line 182
    const/4 v8, 0x0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 184
    const/4 v8, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v8, 0x2

    .line 189
    const/4 v8, 0x3

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->SeekArc:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xb

    .line 192
    const/4 v8, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v8, 0x1

    .line 194
    const/4 v8, 0x2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 199
    const/4 v8, 0x3

    :cond_0
    const/4 v8, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    const/4 p3, 0x2

    div-int/2addr p2, p3

    .line 200
    const/4 v8, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/2addr v4, p3

    .line 201
    const/4 v8, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, p2

    invoke-virtual {v5, v6, v7, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p2, 0x3

    .line 204
    const/4 v8, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    const/4 p2, 0x4

    .line 205
    const/4 v8, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    const/4 p2, 0x6

    .line 206
    const/4 v8, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    int-to-float v4, v4

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    .line 208
    const/4 v8, 0x2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    const/16 p2, 0x9

    .line 210
    const/4 v8, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    const/16 p2, 0xa

    .line 211
    const/4 v8, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    const/4 p2, 0x7

    .line 212
    const/4 v8, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    const/16 p2, 0x8

    .line 213
    const/4 v8, 0x2

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    const/16 p2, 0xd

    .line 215
    const/4 v8, 0x3

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    .line 217
    const/4 v8, 0x0

    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    .line 220
    const/4 v8, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 p2, 0x5

    .line 221
    const/4 v8, 0x2

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 224
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    const/4 v8, 0x0

    :cond_1
    const/4 v8, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    if-le p1, p2, :cond_2

    const/4 v8, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    goto :goto_0

    const/4 v8, 0x3

    :cond_2
    const/4 v8, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    :goto_0
    const/4 v8, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    .line 228
    const/4 v8, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    if-gez p1, :cond_3

    const/4 v8, 0x3

    const/4 p1, 0x0

    goto :goto_1

    const/4 v8, 0x0

    :cond_3
    const/4 v8, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    :goto_1
    const/4 v8, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    .line 230
    const/4 v8, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    const/16 p2, 0x168

    if-le p1, p2, :cond_4

    const/4 v8, 0x0

    const/16 p1, 0x168

    goto :goto_2

    const/4 v8, 0x1

    :cond_4
    const/4 v8, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    :goto_2
    const/4 v8, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 231
    const/4 v8, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    if-gez p1, :cond_5

    const/4 v8, 0x1

    const/4 p1, 0x0

    goto :goto_3

    const/4 v8, 0x2

    :cond_5
    const/4 v8, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    :goto_3
    const/4 v8, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 233
    const/4 v8, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    if-le p1, p2, :cond_6

    const/4 v8, 0x2

    const/4 p1, 0x0

    goto :goto_4

    const/4 v8, 0x3

    :cond_6
    const/4 v8, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    :goto_4
    const/4 v8, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    .line 234
    const/4 v8, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    if-gez p1, :cond_7

    const/4 v8, 0x3

    goto :goto_5

    const/4 v8, 0x0

    :cond_7
    const/4 v8, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    :goto_5
    const/4 v8, 0x2

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    .line 236
    const/4 v8, 0x3

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    .line 237
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    const/4 v8, 0x0

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    .line 244
    const/4 v8, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    const/4 v8, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 246
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 247
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 249
    const/4 v8, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    if-eqz p1, :cond_8

    const/4 v8, 0x2

    .line 250
    const/4 v8, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 251
    const/4 v8, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_8
    const/4 v8, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method private onProgressRefresh(IZ)V
    .locals 1

    const/4 v0, 0x3

    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateProgress(IZ)V

    return-void

    const/4 v0, 0x0
.end method

.method private onStartTrackingTouch()V
    .locals 2

    const/4 v1, 0x2

    .line 365
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 366
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    invoke-interface {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;->onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;)V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method private onStopTrackingTouch()V
    .locals 2

    const/4 v1, 0x0

    .line 371
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 372
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    invoke-interface {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method private updateOnTouch(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v3, 0x2

    .line 377
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouch(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    return-void

    :cond_0
    const/4 v3, 0x1

    const/4 v0, 0x1

    .line 382
    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setPressed(Z)V

    .line 383
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getTouchDegrees(FF)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchAngle:D

    .line 384
    const/4 v3, 0x0

    iget-wide v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchAngle:D

    invoke-direct {p0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getProgressForAngle(D)I

    move-result p1

    .line 385
    const/4 v3, 0x1

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onProgressRefresh(IZ)V

    return-void

    const/4 v1, 0x3
.end method

.method private updateProgress(IZ)V
    .locals 2

    const/4 v1, 0x3

    .line 441
    const/4 v1, 0x0

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->INVALID_PROGRESS_VALUE:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    return-void

    .line 445
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 446
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    .line 447
    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;->onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;IZ)V

    .line 450
    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    if-le p1, p2, :cond_2

    const/4 v1, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    .line 451
    const/4 v1, 0x2

    :cond_2
    const/4 v1, 0x3

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    if-gez p2, :cond_3

    const/4 v1, 0x0

    const/4 p1, 0x0

    .line 453
    const/4 v1, 0x1

    :cond_3
    const/4 v1, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    int-to-float p1, p1

    .line 454
    const/4 v1, 0x3

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    .line 456
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    .line 458
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method private updateThumbPosition()V
    .locals 8

    const/4 v7, 0x3

    .line 434
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 435
    const/4 v7, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    double-to-int v0, v1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbXPos:I

    .line 436
    const/4 v7, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbYPos:I

    return-void

    const/4 v1, 0x3
.end method

.method private valuePerDegree()F
    .locals 3

    const/4 v2, 0x0

    .line 426
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    const/4 v0, 0x2
.end method


# virtual methods
.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x3

    .line 259
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method protected drawableStateChanged()V
    .locals 3

    const/4 v2, 0x3

    .line 356
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 357
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 358
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getDrawableState()[I

    move-result-object v0

    .line 359
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 361
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method public getArcRotation()I
    .locals 2

    const/4 v1, 0x1

    .line 496
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    return v0

    const/4 v1, 0x1
.end method

.method public getArcWidth()I
    .locals 2

    const/4 v1, 0x0

    .line 488
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    return v0

    const/4 v1, 0x1
.end method

.method public getProgressWidth()I
    .locals 2

    const/4 v1, 0x3

    .line 479
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStartAngle()I
    .locals 2

    const/4 v1, 0x2

    .line 505
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    return v0

    const/4 v1, 0x1
.end method

.method public getSweepAngle()I
    .locals 2

    const/4 v1, 0x1

    .line 514
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    return v0

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    .line 266
    const/4 v10, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->drawMiddle:Z

    if-eqz v0, :cond_0

    const/4 v10, 0x2

    .line 267
    const/4 v10, 0x3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 268
    const/4 v10, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 269
    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x14

    .line 270
    const/4 v10, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->dpToPixels(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    const/4 v10, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    const/4 v10, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    .line 273
    const/4 v10, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 275
    const/4 v10, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 278
    const/4 v10, 0x3

    :cond_0
    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    if-nez v0, :cond_1

    const/4 v10, 0x1

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 279
    const/4 v10, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 283
    const/4 v10, 0x3

    :cond_1
    const/4 v10, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    add-int/lit8 v0, v0, -0x5a

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    add-int/2addr v0, v1

    .line 284
    const/4 v10, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 285
    const/4 v10, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 287
    const/4 v10, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x0

    .line 288
    const/4 v10, 0x1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 292
    const/4 v10, 0x2

    :cond_2
    const/4 v10, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbXPos:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbYPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 293
    const/4 v10, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    const/4 v0, 0x2
.end method

.method protected onMeasure(II)V
    .locals 8

    const/4 v7, 0x2

    .line 301
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getDefaultSize(II)I

    move-result v0

    .line 303
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getDefaultSize(II)I

    move-result v1

    .line 305
    const/4 v7, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v3, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 310
    const/4 v7, 0x2

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateX:I

    int-to-float v3, v0

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 311
    const/4 v7, 0x3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTranslateY:I

    .line 313
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 314
    const/4 v7, 0x1

    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    .line 315
    const/4 v7, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 316
    const/4 v7, 0x3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    .line 317
    const/4 v7, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    add-float v4, v1, v2

    add-float/2addr v2, v0

    invoke-virtual {v3, v1, v0, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 319
    const/4 v7, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressSweep:F

    float-to-int v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5a

    .line 320
    const/4 v7, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    double-to-int v0, v1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbXPos:I

    .line 321
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumbYPos:I

    .line 323
    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setTouchInSide(Z)V

    .line 324
    const/4 v7, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    const/4 v1, 0x3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x3

    .line 329
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    const/4 v3, 0x1

    .line 345
    const/4 v3, 0x2

    :pswitch_0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onStopTrackingTouch()V

    .line 346
    const/4 v3, 0x3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setPressed(Z)V

    goto :goto_0

    const/4 v3, 0x0

    .line 338
    const/4 v3, 0x1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    const/4 v3, 0x2

    .line 341
    const/4 v3, 0x3

    :pswitch_2
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onStopTrackingTouch()V

    .line 342
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->setPressed(Z)V

    goto :goto_0

    const/4 v3, 0x1

    .line 331
    const/4 v3, 0x2

    :pswitch_3
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->onStartTrackingTouch()V

    .line 332
    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateOnTouch(Landroid/view/MotionEvent;)V

    .line 333
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouch(FF)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    .line 334
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v3, 0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public setArcRotation(I)V
    .locals 1

    const/4 v0, 0x3

    .line 500
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRotation:I

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    return-void

    const/4 v0, 0x0
.end method

.method public setArcWidth(I)V
    .locals 2

    const/4 v1, 0x3

    .line 492
    const/4 v1, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcWidth:I

    .line 493
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    const/4 v1, 0x1
.end method

.method public setClockwise(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 547
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mClockwise:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setIgnoreTouchFor(Landroid/widget/ScrollView;)V
    .locals 1

    const/4 v0, 0x2

    .line 115
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->ignoreTouchFor:Landroid/widget/ScrollView;

    return-void

    const/4 v0, 0x0
.end method

.method public setOnSeekArcChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 471
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mOnSeekArcChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc$OnSeekArcChangeListener;

    return-void

    const/4 v0, 0x0
.end method

.method public setProgress(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 475
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateProgress(IZ)V

    return-void

    const/4 v1, 0x1
.end method

.method public setProgressWidth(I)V
    .locals 2

    const/4 v1, 0x3

    .line 483
    const/4 v1, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressWidth:I

    .line 484
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    const/4 v1, 0x1
.end method

.method public setRoundedEdges(Z)V
    .locals 2

    const/4 v1, 0x3

    .line 523
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    .line 524
    const/4 v1, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mRoundedEdges:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 525
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 526
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    const/4 v1, 0x1

    .line 528
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 529
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setStartAngle(I)V
    .locals 1

    const/4 v0, 0x3

    .line 509
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mStartAngle:I

    .line 510
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    return-void

    const/4 v0, 0x0
.end method

.method public setSweepAngle(I)V
    .locals 1

    const/4 v0, 0x3

    .line 518
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mSweepAngle:I

    .line 519
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->updateThumbPosition()V

    return-void

    const/4 v0, 0x0
.end method

.method public setTouchInSide(Z)V
    .locals 3

    const/4 v2, 0x3

    .line 534
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 535
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 536
    const/4 v2, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    .line 537
    const/4 v2, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchInside:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 538
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchIgnoreRadius:F

    goto :goto_0

    const/4 v2, 0x2

    .line 541
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mArcRadius:I

    .line 542
    const/4 v2, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mTouchIgnoreRadius:F

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public setmProgressShow(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/SeekArc;->mProgressShow:Ljava/lang/Boolean;

    return-void

    const/4 v0, 0x0
.end method
