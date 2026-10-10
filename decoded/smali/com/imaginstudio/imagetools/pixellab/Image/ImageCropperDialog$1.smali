.class Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;
.super Ljava/lang/Object;
.source "ImageCropperDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->setAspectAndLock(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;II)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;->val$x:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 77
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;->val$x:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$1;->val$y:I

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setAspectAndLock(II)V

    return-void

    const/4 v1, 0x3
.end method
