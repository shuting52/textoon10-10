.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

.field final synthetic val$finalSavingDone:Z

.field final synthetic val$whereToSave:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;ZLjava/io/File;)V
    .locals 0

    .line 2378
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->val$finalSavingDone:Z

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->val$whereToSave:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2381
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->access$1800(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;)V

    .line 2382
    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->val$finalSavingDone:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    .line 2383
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V

    .line 2384
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    .line 2385
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->val$whereToSave:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->access$2100(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;Ljava/io/File;)V

    .line 2386
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showInterstitial()V

    goto :goto_0

    const/4 v3, 0x0

    .line 2388
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method
