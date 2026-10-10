.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$16$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 769
    const/4 v1, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1200(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 770
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$16;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->autoSaveDone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x0

    :catch_0
    move-exception v0

    .line 773
    const/4 v1, 0x1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method
