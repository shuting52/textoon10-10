.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;
.super Landroid/view/View;
.source "DiscreteSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;,
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$DefaultNumericTransformer;,
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;,
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMATTER:Ljava/lang/String; = "%d"

.field private static final FOCUSED_STATE:I = 0x101009c

.field private static final INDICATOR_DELAY_FOR_TAPS:I = 0x96

.field private static final PRESSED_STATE:I = 0x10100a7

.field private static final PROGRESS_ANIMATION_DURATION:I = 0xfa

.field private static final isLollipopOrGreater:Z


# instance fields
.field private bubbleEnabled:Z

.field private mAddedTouchBounds:I

.field private mAllowTrackClick:Z

.field private mAnimationPosition:F

.field private mAnimationTarget:I

.field private mDownX:F

.field private mDragOffset:I

.field private mFloaterListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

.field private mIndicatorFormatter:Ljava/lang/String;

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mKeyProgressIncrement:I

.field private mMax:I

.field private mMin:I

.field private mMirrorForRtl:Z

.field private mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

.field private mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

.field private mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

.field private mRipple:Landroid/graphics/drawable/Drawable;

.field private mScrubber:Landroid/graphics/drawable/Drawable;

.field private mScrubberHeight:I

.field private mShowIndicatorRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

.field private mTouchSlop:F

.field private mTrack:Landroid/graphics/drawable/Drawable;

.field private mTrackHeight:I

.field private mValue:I

.field private notifyButtonAsStopTrack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isLollipopOrGreater:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0d00a7

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mKeyProgressIncrement:I

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 152
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 162
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->bubbleEnabled:Z

    .line 164
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    .line 165
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 902
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$2;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    .line 927
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$3;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFloaterListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .line 183
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setFocusable(Z)V

    .line 184
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setWillNotDraw(Z)V

    .line 186
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTouchSlop:F

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 188
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrackHeight:I

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 189
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubberHeight:I

    const/high16 v3, 0x41400000    # 12.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    const/high16 v4, 0x42000000    # 32.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    sub-int/2addr v2, v3

    .line 194
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 197
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/R$styleable;->DiscreteSeekBar:[I

    const v4, 0x7f030070

    invoke-virtual {p1, p2, v2, v4, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 203
    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMirrorForRtl:Z

    const/16 v5, 0x8

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMirrorForRtl:Z

    .line 204
    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAllowTrackClick:Z

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAllowTrackClick:Z

    .line 209
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/4 v5, 0x6

    .line 211
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    const/4 v7, 0x5

    const/16 v8, 0x64

    if-eqz v6, :cond_1

    .line 212
    iget v6, v4, Landroid/util/TypedValue;->type:I

    if-ne v6, v7, :cond_0

    .line 213
    invoke-virtual {v2, v5, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v2, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    :cond_1
    :goto_0
    const/4 v5, 0x7

    .line 218
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    iget v6, v4, Landroid/util/TypedValue;->type:I

    if-ne v6, v7, :cond_2

    .line 220
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    .line 222
    :cond_2
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0xc

    .line 225
    invoke-virtual {v2, v6, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 226
    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v7, :cond_4

    .line 227
    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_2

    .line 229
    :cond_4
    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 233
    :goto_2
    iput v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    add-int/lit8 v6, v5, 0x1

    .line 234
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    .line 235
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    .line 236
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateKeyboardRange()V

    const/4 v4, 0x4

    .line 238
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    const/16 v4, 0xb

    .line 240
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/16 v5, 0x9

    .line 241
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/16 v6, 0xa

    .line 242
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 243
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    .line 245
    new-instance v6, Landroid/content/res/ColorStateList;

    new-array v8, v0, [[I

    new-array v9, v1, [I

    aput-object v9, v8, v1

    new-array v9, v0, [I

    const v10, -0xbbbbbc

    aput v10, v9, v1

    invoke-direct {v6, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_6
    if-eqz v7, :cond_7

    if-nez v4, :cond_7

    .line 248
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v8, v0, [[I

    new-array v9, v1, [I

    aput-object v9, v8, v1

    new-array v9, v0, [I

    const v10, -0x777778

    aput v10, v9, v1

    invoke-direct {v4, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :cond_7
    if-eqz v7, :cond_8

    if-nez v5, :cond_8

    .line 251
    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v8, v0, [[I

    new-array v9, v1, [I

    aput-object v9, v8, v1

    new-array v9, v0, [I

    const v10, -0xff6978

    aput v10, v9, v1

    invoke-direct {v5, v8, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 253
    :cond_8
    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->getRipple(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    .line 254
    sget-boolean v6, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-eqz v6, :cond_9

    .line 255
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 257
    :cond_9
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 261
    :goto_3
    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackRectDrawable;

    invoke-direct {v6, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 262
    iput-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrack:Landroid/graphics/drawable/Drawable;

    .line 263
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 265
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackRectDrawable;

    invoke-direct {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/TrackRectDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 266
    iput-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-direct {v4, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;-><init>(Landroid/content/res/ColorStateList;I)V

    .line 270
    iput-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    .line 271
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v3, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 272
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->setBounds(IIII)V

    if-nez v7, :cond_a

    .line 276
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    invoke-direct {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, p2, p3, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    .line 277
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFloaterListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->setListener(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V

    :cond_a
    const/4 p1, 0x3

    .line 280
    invoke-virtual {v2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setBubbleEnabled(Z)V

    .line 282
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$DefaultNumericTransformer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$DefaultNumericTransformer;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;)V

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setNumericTransformer(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 52
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->showFloater()V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 52
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    return-object p0

    const/4 v0, 0x0
.end method

.method private attemptClaimDrag()V
    .locals 3

    const/4 v2, 0x3

    .line 896
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    .line 898
    const/4 v2, 0x2

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method private convertValueToMessage(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    .line 625
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    goto :goto_0

    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    const-string v0, "%d"

    .line 634
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->locale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    const/4 v5, 0x2

    .line 643
    const/4 v5, 0x3

    :cond_1
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    const/4 v5, 0x1

    .line 635
    const/4 v5, 0x2

    :cond_2
    const/4 v5, 0x3

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 636
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v3, :cond_3

    const/4 v5, 0x2

    .line 637
    const/4 v5, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    goto :goto_2

    const/4 v5, 0x0

    .line 639
    const/4 v5, 0x1

    :cond_3
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 641
    const/4 v5, 0x3

    :goto_2
    const/4 v5, 0x0

    new-instance v1, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    .line 645
    const/4 v5, 0x1

    :goto_3
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mFormatter:Ljava/util/Formatter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    const/4 v1, 0x1
.end method

.method private getAnimatedProgress()I
    .locals 2

    const/4 v1, 0x0

    .line 745
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getAnimationTarget()I

    move-result v0

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    :goto_0
    const/4 v1, 0x1

    return v0

    const/4 v1, 0x1
.end method

.method private getAnimationTarget()I
    .locals 2

    const/4 v1, 0x3

    .line 780
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAnimationTarget:I

    return v0

    const/4 v1, 0x1
.end method

.method private hideFloater()V
    .locals 2

    const/4 v1, 0x2

    .line 920
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 921
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 922
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismiss()V

    const/4 v0, 0x0

    .line 923
    const/4 v1, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->notifyBubble(Z)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method private isDragging()Z
    .locals 2

    const/4 v1, 0x2

    .line 710
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    return v0

    const/4 v1, 0x1
.end method

.method private isInScrollingContainer()Z
    .locals 2

    const/4 v1, 0x1

    .line 678
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->isInScrollingContainer(Landroid/view/ViewParent;)Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method private notifyBubble(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 479
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->onShowBubble()V

    goto :goto_0

    const/4 v0, 0x3

    .line 481
    const/4 v0, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->onHideBubble()V

    :goto_0
    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method private notifyProgress(IZ)V
    .locals 2

    const/4 v1, 0x0

    .line 471
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 472
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;->onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V

    .line 474
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->onValueChanged(I)V

    return-void

    const/4 v1, 0x1
.end method

.method private setHotspot(FF)V
    .locals 2

    const/4 v1, 0x3

    .line 887
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    return-void

    const/4 v1, 0x1
.end method

.method private setProgress(IZ)V
    .locals 3

    const/4 v2, 0x2

    .line 417
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 418
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 419
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;->cancel()V

    .line 422
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    .line 423
    const/4 v2, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    .line 424
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 425
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateProgressMessage(I)V

    .line 426
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    :cond_1
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method private showFloater()V
    .locals 3

    const/4 v2, 0x0

    .line 910
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isBubbleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 911
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 912
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->animateToPressed()V

    .line 913
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 914
    const/4 v2, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->notifyBubble(Z)V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method private startDragging(Landroid/view/MotionEvent;Z)Z
    .locals 4

    const/4 v3, 0x2

    .line 682
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 683
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 685
    const/4 v3, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 686
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    .line 687
    const/4 v3, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAllowTrackClick:Z

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-nez p2, :cond_0

    const/4 v3, 0x2

    .line 690
    const/4 v3, 0x3

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    .line 691
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mDragOffset:I

    .line 692
    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    .line 694
    const/4 v3, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 695
    const/4 v3, 0x3

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int p2, p2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v1

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 697
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    if-eqz p2, :cond_1

    const/4 v3, 0x2

    .line 698
    const/4 v3, 0x3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setPressed(Z)V

    .line 699
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->attemptClaimDrag()V

    .line 700
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setHotspot(FF)V

    .line 701
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mDragOffset:I

    .line 702
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    .line 703
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;->onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    .line 706
    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    return p1

    const/4 v1, 0x3
.end method

.method private stopDragging()V
    .locals 2

    const/4 v1, 0x1

    .line 714
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 715
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 717
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIsDragging:Z

    .line 718
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setPressed(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method private updateDragging(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x1

    .line 795
    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setHotspot(FF)V

    .line 796
    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 797
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 798
    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 799
    const/4 v5, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 800
    const/4 v5, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mDragOffset:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v0

    .line 801
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 802
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int v0, v3, v4

    if-ge p1, v2, :cond_0

    const/4 v5, 0x2

    move p1, v2

    goto :goto_0

    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    if-le p1, v0, :cond_1

    const/4 v5, 0x1

    move p1, v0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    sub-int/2addr v0, v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 811
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    .line 814
    const/4 v5, 0x2

    :cond_2
    const/4 v5, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    .line 815
    const/4 v5, 0x0

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(IZ)V

    return-void

    const/4 v1, 0x1
.end method

.method private updateFromDrawableState()V
    .locals 9

    const/4 v8, 0x2

    .line 590
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 593
    const/4 v8, 0x0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v2, v1, :cond_2

    const/4 v8, 0x2

    aget v5, v0, v2

    const v6, 0x101009c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v8, 0x3

    const/4 v3, 0x1

    goto :goto_1

    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    const v6, 0x10100a7

    if-ne v5, v6, :cond_1

    const/4 v8, 0x2

    const/4 v4, 0x1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    const/4 v8, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v8, 0x1

    .line 600
    const/4 v8, 0x2

    :cond_2
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    if-nez v3, :cond_3

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    const/4 v8, 0x2

    .line 603
    const/4 v8, 0x3

    :cond_3
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 604
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    const/4 v8, 0x2

    .line 606
    const/4 v8, 0x3

    :cond_4
    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->hideFloater()V

    .line 608
    const/4 v8, 0x1

    :goto_2
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->setState([I)Z

    .line 609
    const/4 v8, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 610
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 611
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    const/4 v0, 0x0
.end method

.method private updateKeyboardRange()V
    .locals 4

    const/4 v3, 0x3

    .line 516
    const/4 v3, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    .line 517
    const/4 v3, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x1

    int-to-float v0, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v0, v2

    .line 520
    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mKeyProgressIncrement:I

    :cond_1
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method private updateProgressFromAnimation(F)V
    .locals 6

    const/4 v5, 0x0

    .line 819
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 820
    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 821
    const/4 v5, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 822
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    .line 823
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    .line 825
    const/4 v5, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 828
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v5, 0x0

    .line 829
    const/4 v5, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    .line 830
    const/4 v5, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->notifyProgress(IZ)V

    .line 831
    const/4 v5, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateProgressMessage(I)V

    :cond_0
    const/4 v5, 0x0

    int-to-float v0, v3

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 834
    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateThumbPos(I)V

    return-void

    const/4 v1, 0x1
.end method

.method private updateProgressMessage(I)V
    .locals 3

    const/4 v2, 0x3

    .line 615
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 616
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;->useStringTransform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 617
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;->transformToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->setValue(Ljava/lang/CharSequence;)V

    goto :goto_0

    const/4 v2, 0x1

    .line 619
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;->transform(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->setValue(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method private updateThumbPos(I)V
    .locals 7

    const/4 v6, 0x3

    .line 853
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 854
    const/4 v6, 0x1

    div-int/lit8 v1, v0, 0x2

    .line 856
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x3

    .line 857
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    sub-int/2addr v2, v3

    sub-int p1, v2, p1

    sub-int/2addr p1, v0

    goto :goto_0

    const/4 v6, 0x1

    .line 860
    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 863
    const/4 v6, 0x0

    :goto_0
    const/4 v6, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 864
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, p1, v4, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->setBounds(IIII)V

    .line 865
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 866
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 867
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    const/4 v6, 0x3

    .line 869
    const/4 v6, 0x0

    :cond_1
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 870
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 872
    const/4 v6, 0x3

    :goto_1
    const/4 v6, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 873
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 874
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x3

    .line 875
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->move(I)V

    .line 878
    const/4 v6, 0x1

    :cond_2
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 879
    const/4 v6, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 880
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 881
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/SeekBarCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 882
    const/4 v6, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->invalidate(Landroid/graphics/Rect;)V

    return-void

    const/4 v0, 0x2
.end method

.method private updateThumbPosFromCurrentProgress()V
    .locals 7

    const/4 v6, 0x0

    .line 838
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 839
    const/4 v6, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 840
    const/4 v6, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 841
    const/4 v6, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 844
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    .line 845
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v0, v4

    mul-float v2, v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v2, v0

    float-to-int v0, v2

    .line 849
    const/4 v6, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateThumbPos(I)V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method animateSetProgress(I)V
    .locals 3

    const/4 v2, 0x1

    .line 754
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getAnimationPosition()F

    move-result v0

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    .line 756
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    if-ge p1, v1, :cond_1

    const/4 v2, 0x0

    .line 757
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    goto :goto_1

    const/4 v2, 0x2

    .line 758
    const/4 v2, 0x3

    :cond_1
    const/4 v2, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    if-le p1, v1, :cond_2

    const/4 v2, 0x1

    .line 759
    const/4 v2, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    .line 763
    const/4 v2, 0x3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    .line 764
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;->cancel()V

    .line 767
    const/4 v2, 0x0

    :cond_3
    const/4 v2, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAnimationTarget:I

    int-to-float p1, p1

    .line 768
    const/4 v2, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    invoke-static {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;->create(FFLcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    .line 775
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    const/16 v0, 0xfa

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;->setDuration(I)V

    .line 776
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;->start()V

    return-void

    const/4 v0, 0x2
.end method

.method protected drawableStateChanged()V
    .locals 1

    const/4 v0, 0x2

    .line 585
    const/4 v0, 0x3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 586
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateFromDrawableState()V

    return-void

    const/4 v0, 0x0
.end method

.method getAnimationPosition()F
    .locals 2

    const/4 v1, 0x2

    .line 790
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAnimationPosition:F

    return v0

    const/4 v1, 0x1
.end method

.method public getMax()I
    .locals 2

    const/4 v1, 0x1

    .line 363
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    return v0

    const/4 v1, 0x1
.end method

.method public getMin()I
    .locals 2

    const/4 v1, 0x0

    .line 391
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    return v0

    const/4 v1, 0x1
.end method

.method public getNumericTransformer()Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;
    .locals 2

    const/4 v1, 0x3

    .line 334
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getProgress()I
    .locals 2

    const/4 v1, 0x2

    .line 436
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    return v0

    const/4 v1, 0x1
.end method

.method isAnimationRunning()Z
    .locals 2

    const/4 v1, 0x1

    .line 750
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPositionAnimator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    return v0

    const/4 v1, 0x1
.end method

.method public isBubbleEnabled()Z
    .locals 2

    const/4 v1, 0x1

    .line 289
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->bubbleEnabled:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isRtl()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x2

    .line 942
    const/4 v1, 0x3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 943
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 944
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    .line 945
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismissComplete()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x2

    monitor-enter p0

    .line 574
    const/4 v1, 0x3

    :try_start_0
    sget-boolean v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isLollipopOrGreater:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 575
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 577
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 578
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 579
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 580
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    const/4 v1, 0x3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 573
    const/4 v1, 0x0

    monitor-exit p0

    throw p1

    const/4 v1, 0x1
.end method

.method protected onHideBubble()V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x0

    .line 725
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    .line 726
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getAnimatedProgress()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    const/4 v4, 0x0

    .line 735
    const/4 v4, 0x1

    :pswitch_0
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    if-lt v0, v3, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    const/4 v4, 0x3

    .line 736
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->animateSetProgress(I)V

    goto :goto_0

    const/4 v4, 0x2

    .line 730
    const/4 v4, 0x3

    :pswitch_1
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    if-gt v0, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    const/4 v4, 0x1

    .line 731
    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mKeyProgressIncrement:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->animateSetProgress(I)V

    :goto_0
    const/4 v4, 0x0

    const/4 v0, 0x1

    goto :goto_2

    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    :goto_1
    const/4 v4, 0x3

    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    .line 741
    const/4 v4, 0x2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v4, 0x3

    :cond_3
    const/4 v4, 0x0

    const/4 v1, 0x1

    :cond_4
    const/4 v4, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x3

    .line 535
    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 537
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mShowIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 538
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 539
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->dismissComplete()V

    .line 541
    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateFromDrawableState()V

    :cond_1
    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method protected onMeasure(II)V
    .locals 2

    const/4 v1, 0x2

    .line 527
    const/4 v1, 0x3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 528
    const/4 v1, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 529
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 530
    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMeasuredDimension(II)V

    return-void

    const/4 v1, 0x1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 965
    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    const/4 v2, 0x0

    .line 970
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    .line 971
    const/4 v2, 0x3

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->access$500(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMin(I)V

    .line 972
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->access$400(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMax(I)V

    .line 973
    const/4 v2, 0x1

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(IZ)V

    .line 974
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 966
    const/4 v2, 0x3

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    const/4 v0, 0x2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    const/4 v2, 0x3

    .line 955
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 956
    const/4 v2, 0x1

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;

    invoke-direct {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;-><init>(Landroid/os/Parcelable;)V

    .line 957
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getProgress()I

    move-result v0

    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->access$302(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I

    .line 958
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->access$402(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I

    .line 959
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;->access$502(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$CustomState;I)I

    return-object v1

    const/4 v0, 0x2
.end method

.method protected onShowBubble()V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    const/4 v6, 0x0

    .line 552
    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 553
    const/4 v6, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicWidth()I

    move-result p1

    .line 554
    const/4 v6, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getIntrinsicHeight()I

    move-result p2

    .line 555
    const/4 v6, 0x0

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAddedTouchBounds:I

    .line 556
    const/4 v6, 0x1

    div-int/lit8 p4, p1, 0x2

    .line 557
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p3

    .line 558
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingRight()I

    move-result v1

    .line 559
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p3

    .line 560
    const/4 v6, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    sub-int p2, v2, p2

    add-int/2addr p1, v0

    invoke-virtual {v3, v0, p2, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->setBounds(IIII)V

    .line 561
    const/4 v6, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrackHeight:I

    const/4 p2, 0x2

    div-int/2addr p1, p2

    const/4 v3, 0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 562
    const/4 v6, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrack:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, p4

    sub-int/2addr v2, p4

    sub-int v4, v2, p1

    .line 563
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->getWidth()I

    move-result v5

    sub-int/2addr v5, p4

    sub-int/2addr v5, v1

    sub-int/2addr v5, p3

    add-int/2addr p1, v2

    .line 562
    const/4 v6, 0x1

    invoke-virtual {v3, v0, v4, v5, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 564
    const/4 v6, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubberHeight:I

    div-int/2addr p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 565
    const/4 v6, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    sub-int p3, v2, p1

    add-int/2addr v2, p1

    invoke-virtual {p2, v0, p3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 569
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateThumbPosFromCurrentProgress()V

    return-void

    const/4 v0, 0x2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x2

    .line 650
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    return v1

    .line 653
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    const/4 v3, 0x3

    .line 660
    const/4 v3, 0x0

    :pswitch_0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 661
    const/4 v3, 0x2

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateDragging(Landroid/view/MotionEvent;)V

    goto :goto_0

    const/4 v3, 0x3

    .line 663
    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 664
    const/4 v3, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 v3, 0x3

    .line 665
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    goto :goto_0

    const/4 v3, 0x1

    .line 671
    const/4 v3, 0x2

    :pswitch_1
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->stopDragging()V

    goto :goto_0

    const/4 v3, 0x3

    .line 656
    const/4 v3, 0x0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mDownX:F

    .line 657
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInScrollingContainer()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->startDragging(Landroid/view/MotionEvent;Z)Z

    :cond_2
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v1, 0x3
.end method

.method protected onValueChanged(I)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x3

    .line 547
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void

    const/4 v0, 0x0
.end method

.method setAnimationPosition(F)V
    .locals 3

    const/4 v2, 0x2

    .line 784
    const/4 v2, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mAnimationPosition:F

    .line 785
    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 786
    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateProgressFromAnimation(F)V

    return-void

    const/4 v0, 0x2
.end method

.method public setBubbleEnabled(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 293
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->bubbleEnabled:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setIndicatorFormatter(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 304
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicatorFormatter:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateProgressMessage(I)V

    return-void

    const/4 v0, 0x0
.end method

.method public setMax(I)V
    .locals 2

    const/4 v1, 0x2

    .line 351
    const/4 v1, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    .line 352
    const/4 v1, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    .line 353
    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMin(I)V

    .line 355
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 357
    const/4 v1, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    if-lt p1, v0, :cond_1

    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    if-le p1, v0, :cond_2

    const/4 v1, 0x3

    .line 358
    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(I)V

    :cond_2
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public setMin(I)V
    .locals 2

    const/4 v1, 0x0

    .line 379
    const/4 v1, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    .line 380
    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    if-le p1, v0, :cond_0

    const/4 v1, 0x3

    .line 381
    const/4 v1, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setMax(I)V

    .line 383
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateKeyboardRange()V

    .line 385
    const/4 v1, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    if-lt p1, v0, :cond_1

    const/4 v1, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    if-le p1, v0, :cond_2

    const/4 v1, 0x1

    .line 386
    const/4 v1, 0x2

    :cond_1
    const/4 v1, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMin:I

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(I)V

    :cond_2
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public setNotifyButtonAsStopTrack(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 413
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->notifyButtonAsStopTrack:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setNumericTransformer(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;)V
    .locals 3
    .param p1    # Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    const/4 v2, 0x3

    .line 315
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$DefaultNumericTransformer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$DefaultNumericTransformer;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;)V

    :goto_0
    const/4 v2, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    .line 317
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v2, 0x0

    .line 318
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;->useStringTransform()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    .line 319
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;->transformToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->updateSizes(Ljava/lang/String;)V

    goto :goto_1

    const/4 v2, 0x0

    .line 321
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mNumericTransformer:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mMax:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$NumericTransformer;->transform(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->convertValueToMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->updateSizes(Ljava/lang/String;)V

    .line 324
    const/4 v2, 0x3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mValue:I

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->updateProgressMessage(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public setOnProgressChangeListener(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;)V
    .locals 1

    const/4 v0, 0x3

    .line 447
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    return-void

    const/4 v0, 0x0
.end method

.method public setProgress(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 403
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(IZ)V

    return-void

    const/4 v1, 0x1
.end method

.method public setProgressAsIfTheUserHadDoneSo(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x1

    .line 406
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setProgress(IZ)V

    .line 407
    const/4 v1, 0x3

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->notifyButtonAsStopTrack:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 408
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mPublicChangeListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;

    invoke-interface {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;->onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public setScrubberColor(I)V
    .locals 3

    const/4 v2, 0x1

    .line 467
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    const/4 v0, 0x2
.end method

.method public setThumbColor(II)V
    .locals 3

    const/4 v2, 0x0

    .line 457
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->setColorStateList(Landroid/content/res/ColorStateList;)V

    .line 458
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/PopupIndicator;->setColors(II)V

    return-void

    const/4 v0, 0x2
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v1, 0x0

    .line 892
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mThumb:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mTrack:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mScrubber:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->mRipple:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 p1, 0x0

    goto :goto_1

    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    :goto_0
    const/4 v1, 0x3

    const/4 p1, 0x1

    :goto_1
    const/4 v1, 0x0

    return p1

    const/4 v1, 0x1
.end method
