.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

.field final synthetic val$bundleSave:Landroid/os/Bundle;

.field final synthetic val$pr:Landroid/app/ProgressDialog;

.field final synthetic val$whereToSaveStyleData:Ljava/io/File;

.field final synthetic val$whereToSaveStyleDir:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;Landroid/os/Bundle;Ljava/io/File;Ljava/io/File;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 1361
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$bundleSave:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleDir:Ljava/io/File;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleData:Ljava/io/File;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$pr:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBackground()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1366
    const/4 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$bundleSave:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;->persist:Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doOpOnBundleRes(Landroid/os/Bundle;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/MainActivity$ResOp;)Landroid/os/Bundle;

    .line 1368
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1369
    const/4 v4, 0x3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/pixelLab/textstyles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->putNoMediaHere(Ljava/io/File;)V

    .line 1370
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$bundleSave:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 1372
    const/4 v4, 0x2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    const/4 v4, 0x3

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleData:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1375
    const/4 v4, 0x0

    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1376
    const/4 v4, 0x1

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1377
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v4, 0x3

    const/4 v0, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :catch_0
    const/4 v0, 0x0

    .line 1383
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    if-nez v0, :cond_1

    const/4 v4, 0x3

    .line 1397
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleDir:Ljava/io/File;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteDir(Ljava/io/File;)Z

    .line 1400
    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;Z)V

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    return-void

    const/4 v0, 0x0
.end method
