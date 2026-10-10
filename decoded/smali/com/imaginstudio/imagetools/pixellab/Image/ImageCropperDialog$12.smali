.class Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;
.super Ljava/lang/Object;
.source "ImageCropperDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;Landroid/graphics/RectF;IZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zoomReset()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 225
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$600(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    return-void

    const/4 v0, 0x2
.end method

.method public zoomToggle(Z)V
    .locals 2

    const/4 v1, 0x2

    .line 221
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$600(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    return-void

    const/4 v1, 0x1
.end method
