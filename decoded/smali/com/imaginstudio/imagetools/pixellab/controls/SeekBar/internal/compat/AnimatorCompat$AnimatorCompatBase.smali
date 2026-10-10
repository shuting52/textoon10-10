.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;
.super Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
.source "AnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorCompatBase"
.end annotation


# instance fields
.field private final mEndValue:F

.field private final mListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;


# direct methods
.method public constructor <init>(FFLcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;-><init>()V

    .line 70
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    .line 71
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mEndValue:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    return-void

    const/4 v0, 0x0
.end method

.method public isRunning()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public setDuration(I)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x3

    .line 91
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mListener:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;->mEndValue:F

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;->onAnimationFrame(F)V

    return-void

    const/4 v0, 0x2
.end method
