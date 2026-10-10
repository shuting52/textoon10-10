.class Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;
.super Ljava/lang/Object;
.source "ImageCropperDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 176
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 179
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    .line 180
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->invalidate()V

    .line 181
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$400(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/widget/ImageButton;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v0

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->flipH:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    return-void

    const/4 v1, 0x1
.end method
