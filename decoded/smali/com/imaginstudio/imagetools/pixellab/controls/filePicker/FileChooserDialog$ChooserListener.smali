.class public interface abstract Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;
.super Ljava/lang/Object;
.source "FileChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChooserListener"
.end annotation


# virtual methods
.method public abstract onFileSelected(Ljava/io/File;)V
.end method

.method public abstract onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method
