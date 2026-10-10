.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->showPLPPicker()V
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

    .line 187
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSelected(Ljava/io/File;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 195
    const/4 v3, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0047

    .line 196
    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opening project : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    .line 198
    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0100

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$2;

    invoke-direct {v2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$5;Ljava/io/File;)V

    const p1, 0x7f0c0103

    .line 204
    const/4 v3, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 210
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    const/4 v1, 0x3
.end method

.method public onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
