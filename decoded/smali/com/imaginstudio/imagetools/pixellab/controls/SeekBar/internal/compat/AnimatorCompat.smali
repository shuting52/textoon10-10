.class public abstract Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
.super Ljava/lang/Object;
.source "AnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;,
        Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(FFLcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat;
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 57
    const/4 v2, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v2, 0x0

    .line 58
    const/4 v2, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompatV11;

    invoke-direct {v0, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompatV11;-><init>(FFLcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V

    return-object v0

    .line 60
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;

    invoke-direct {v0, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimatorCompatBase;-><init>(FFLcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;)V

    return-object v0

    const/4 v0, 0x2
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract isRunning()Z
.end method

.method public abstract setDuration(I)V
.end method

.method public abstract start()V
.end method
