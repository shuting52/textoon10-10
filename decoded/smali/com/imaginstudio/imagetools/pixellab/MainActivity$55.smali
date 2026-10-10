.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentAsPresetOverwrite(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$bundleSave:Landroid/os/Bundle;

.field final synthetic val$chosenName:Ljava/lang/String;

.field final synthetic val$pr:Landroid/app/ProgressDialog;

.field final synthetic val$whereToSavePresetDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/os/Bundle;Ljava/lang/String;Ljava/io/File;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 2692
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$bundleSave:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$chosenName:Ljava/lang/String;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$whereToSavePresetDir:Ljava/io/File;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$pr:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2697
    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$bundleSave:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$chosenName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveJson(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :catch_0
    const/4 v0, 0x0

    .line 2701
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 2717
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->val$whereToSavePresetDir:Ljava/io/File;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    .line 2721
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;Z)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void

    const/4 v1, 0x3
.end method
