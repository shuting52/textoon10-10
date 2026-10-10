.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public projectClicked(Ljava/lang/String;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 119
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->loadProject(Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->dismiss()V

    return-void

    const/4 v1, 0x1
.end method

.method public projectDelete(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x3

    .line 144
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->projectEvent:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$projectPickEvent;->removeProject(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 145
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->dismiss()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public projectShare(Ljava/io/File;)V
    .locals 5

    const/4 v4, 0x1

    .line 125
    const/4 v4, 0x2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "pixelLab"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".plp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->returnAvailableFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 127
    const/4 v4, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->zipFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    .line 128
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0153

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 130
    const/4 v4, 0x2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/zip"

    .line 131
    const/4 v4, 0x3

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 132
    const/4 v4, 0x0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x2

    :catch_0
    move-exception p1

    .line 135
    const/4 v4, 0x3

    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    const/4 v4, 0x0

    .line 138
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0154

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method
