.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromFile(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$presetDir:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 2640
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->val$presetDir:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2643
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->val$presetDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/data.plab"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fileJsonToBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->val$presetDir:Ljava/lang/String;

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->fixAbsolute:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    .line 2647
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersHolder:Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->disable()V

    .line 2648
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->enableLayers(Z)V

    .line 2649
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->resetAll()V

    .line 2650
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2300(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 2651
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->val$presetDir:Ljava/lang/String;

    const-string v3, "/autosave/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    const-string v1, "projectDir"

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->val$presetDir:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V

    .line 2653
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    .line 2654
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 2655
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$53;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    :cond_1
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method
