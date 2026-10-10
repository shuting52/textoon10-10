.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$2;
.super Ljava/lang/Object;
.source "DiscreteSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 902
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 905
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V

    return-void

    const/4 v1, 0x1
.end method
