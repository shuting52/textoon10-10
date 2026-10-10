.class Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;
.super Ljava/lang/Object;
.source "MarkerDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v9, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 186
    const/4 v9, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 187
    const/4 v9, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 188
    const/4 v9, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    const/4 v9, 0x0

    .line 189
    const/4 v9, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)Landroid/view/animation/Interpolator;

    move-result-object v2

    long-to-float v3, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 190
    const/4 v9, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x10

    add-long v7, v0, v5

    invoke-virtual {v3, v4, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 191
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$400(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;F)V

    goto :goto_0

    const/4 v9, 0x0

    .line 193
    const/4 v9, 0x1

    :cond_0
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 194
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$502(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;Z)Z

    .line 195
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$400(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;F)V

    .line 196
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;->access$600(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/internal/drawable/MarkerDrawable;)V

    :goto_0
    const/4 v9, 0x2

    return-void

    const/4 v1, 0x1
.end method
