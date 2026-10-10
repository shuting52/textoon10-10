.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/compat/AnimatorCompat$AnimationFrameUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->animateSetProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFrame(F)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 772
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->setAnimationPosition(F)V

    return-void

    const/4 v1, 0x1
.end method
