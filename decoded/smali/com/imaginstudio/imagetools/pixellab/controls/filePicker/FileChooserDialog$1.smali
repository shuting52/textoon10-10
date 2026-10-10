.class Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;
.super Ljava/lang/Object;
.source "FileChooserDialog.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 172
    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    .line 174
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    .line 175
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x3

    .line 176
    const/4 v6, 0x0

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 177
    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v6, 0x2

    .line 178
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x0

    if-ge v4, v3, :cond_1

    const/4 v6, 0x1

    aget-object v5, v0, v4

    .line 179
    const/4 v6, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x3

    return v2

    :cond_0
    const/4 v6, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v6, 0x1

    :cond_1
    const/4 v6, 0x2

    return v1

    :cond_2
    const/4 v6, 0x3

    return v2

    .line 188
    const/4 v6, 0x0

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v6, 0x3

    const/4 v1, 0x1

    :cond_4
    const/4 v6, 0x0

    return v1

    :cond_5
    const/4 v6, 0x1

    return v1

    const/4 v0, 0x2
.end method
