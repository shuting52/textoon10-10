.class final synthetic Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$OnCropPreviewAction;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$0;->arg$1:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    return-void
.end method


# virtual methods
.method public cropSizeChanged(FFZ)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$$Lambda$0;->arg$1:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->lambda$new$0$ImageCropperDialog(FFZ)V

    return-void

    const/4 v1, 0x1
.end method
