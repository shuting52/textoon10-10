.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrentTextAsStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$text:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    .locals 0

    .line 1347
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->val$text:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1350
    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 1351
    const/4 v6, 0x2

    new-instance v3, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/pixelLab/textstyles/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1352
    const/4 v6, 0x3

    new-instance v4, Ljava/io/File;

    const-string p2, "data.plab"

    invoke-direct {v4, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1353
    const/4 v6, 0x0

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/pixelLab/textstyles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/res"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1355
    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1356
    const/4 v6, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->val$text:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->saveToBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 1358
    const/4 v6, 0x3

    new-instance v5, Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {v5, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1359
    const/4 v6, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const p2, 0x7f0c012e

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1360
    const/4 v6, 0x1

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 1361
    const/4 v6, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$31$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$31;Landroid/os/Bundle;Ljava/io/File;Ljava/io/File;Landroid/app/ProgressDialog;)V

    invoke-static {p1}, Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    return-void

    const/4 v0, 0x2
.end method
