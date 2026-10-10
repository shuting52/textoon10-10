.class public Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;
.super Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;
.source "ThumbDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final DEFAULT_SIZE_DP:I = 0xc


# instance fields
.field private mOpen:Z

.field private mRunning:Z

.field private final mSize:I

.field private opener:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/StateDrawable;-><init>(Landroid/content/res/ColorStateList;)V

    .line 87
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    .line 53
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mSize:I

    return-void
.end method

.method static synthetic access$002(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;Z)Z
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 44
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mOpen:Z

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$102(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;Z)Z
    .locals 1

    const/4 v0, 0x2

    .line 44
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mRunning:Z

    return p1

    const/4 v0, 0x0
.end method


# virtual methods
.method public animateToNormal()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 81
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mOpen:Z

    .line 82
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mRunning:Z

    .line 83
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->invalidateSelf()V

    return-void

    const/4 v1, 0x1
.end method

.method public animateToPressed()V
    .locals 8

    const/4 v7, 0x3

    .line 76
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->opener:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    add-long v5, v1, v3

    invoke-virtual {p0, v0, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    .line 77
    const/4 v7, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mRunning:Z

    return-void

    const/4 v1, 0x3
.end method

.method public doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    const/4 v3, 0x3

    .line 68
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mOpen:Z

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 69
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 70
    const/4 v3, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 71
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method public getIntrinsicHeight()I
    .locals 2

    const/4 v1, 0x3

    .line 63
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mSize:I

    return v0

    const/4 v1, 0x1
.end method

.method public getIntrinsicWidth()I
    .locals 2

    const/4 v1, 0x2

    .line 58
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mSize:I

    return v0

    const/4 v1, 0x1
.end method

.method public isRunning()Z
    .locals 2

    const/4 v1, 0x1

    .line 108
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->mRunning:Z

    return v0

    const/4 v1, 0x1
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

    .line 103
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->animateToNormal()V

    return-void

    const/4 v0, 0x0
.end method
