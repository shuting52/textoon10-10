.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$3;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$MarkerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;
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

    .line 927
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingComplete()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 930
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->animateToNormal()V

    return-void

    const/4 v1, 0x1
.end method

.method public onOpeningComplete()V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
