.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

.field final synthetic val$finalDone:Z


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;Z)V
    .locals 0

    .line 2721
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->val$finalDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2726
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    .line 2727
    const/4 v4, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->val$finalDone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    .line 2728
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00be

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    const/4 v4, 0x2

    .line 2730
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c00ec

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2732
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->presetsChanged()V

    .line 2733
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2739
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$pr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$pr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x2

    .line 2741
    const/4 v4, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$pr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2746
    const/4 v4, 0x0

    :catch_0
    :cond_1
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->showInterstitial()V

    :cond_2
    const/4 v4, 0x2

    return-void

    const/4 v0, 0x0
.end method
