.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x1

    .line 763
    const/4 v8, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->hasHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->shouldAutoSave()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x3

    .line 764
    const/4 v8, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    goto :goto_0

    const/4 v8, 0x1

    :catchall_0
    move-exception v1

    goto :goto_1

    const/4 v8, 0x2

    :catch_0
    move-exception v1

    .line 780
    const/4 v8, 0x3

    :try_start_1
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    :goto_0
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1300(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)J

    move-result-wide v3

    int-to-long v5, v0

    mul-long v3, v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_1
    const/4 v8, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSaveRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1300(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)J

    move-result-wide v4

    int-to-long v6, v0

    mul-long v4, v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v1

    const/4 v0, 0x0
.end method
