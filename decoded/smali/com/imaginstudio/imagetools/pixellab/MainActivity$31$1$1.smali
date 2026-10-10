.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;
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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;)V
    .locals 0

    .line 1383
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1388
    const/4 v4, 0x2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->val$whereToSaveStyleDir:Ljava/io/File;

    const-string v3, "thumb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1389
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->val$text:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 v3, 0x19

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->renderPreview(Landroid/os/Bundle;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x0

    :catch_0
    move-exception v0

    .line 1391
    const/4 v4, 0x1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v4, 0x2

    return-void

    const/4 v0, 0x0
.end method
