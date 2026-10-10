.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;
.super Ljava/lang/Object;
.source "ThumbDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 90
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->access$002(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;Z)Z

    .line 91
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->invalidateSelf()V

    .line 92
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;->access$102(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/ThumbDrawable;Z)Z

    return-void

    const/4 v0, 0x2
.end method
