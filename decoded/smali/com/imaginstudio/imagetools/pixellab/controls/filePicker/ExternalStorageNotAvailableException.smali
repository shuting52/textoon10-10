.class public Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ExternalStorageNotAvailableException;
.super Ljava/lang/Exception;
.source "ExternalStorageNotAvailableException.java"


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "There is no external storage available on this device."

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
