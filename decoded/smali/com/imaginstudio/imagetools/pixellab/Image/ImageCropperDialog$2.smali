.class Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;
.super Ljava/lang/Object;
.source "ImageCropperDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lockAspect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

.field final synthetic val$toggle:Z


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Z)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->val$toggle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 88
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$2;->val$toggle:Z

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->toggleLockAspect(Z)V

    return-void

    const/4 v0, 0x2
.end method
