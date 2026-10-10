.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

.field final synthetic val$finalDone:Z


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;Z)V
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->val$finalDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1403
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 1404
    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->val$finalDone:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 1405
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(I)V

    goto :goto_0

    const/4 v2, 0x2

    .line 1407
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v1, 0x7f0c00ec

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(I)V

    .line 1409
    const/4 v2, 0x1

    :goto_0
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$pr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$pr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1411
    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$pr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
