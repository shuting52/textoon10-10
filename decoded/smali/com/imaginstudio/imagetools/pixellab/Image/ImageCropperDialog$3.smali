.class Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;
.super Ljava/lang/Object;
.source "ImageCropperDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$angle:I

.field final synthetic val$circular:Z

.field final synthetic val$flipH:Z

.field final synthetic val$flipV:Z

.field final synthetic val$portion:Landroid/graphics/RectF;

.field final synthetic val$reCrop:Z

.field final synthetic val$source:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZLandroid/graphics/RectF;IZZZ)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$source:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$reCrop:Z

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$portion:Landroid/graphics/RectF;

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$angle:I

    iput-boolean p6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$circular:Z

    iput-boolean p7, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$flipH:Z

    iput-boolean p8, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$flipV:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v8, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 118
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$source:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->loadImage(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;II)V

    .line 119
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$100(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v8, 0x3

    .line 120
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    move-result-object v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;->access$100(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$reCrop:Z

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$portion:Landroid/graphics/RectF;

    :goto_0
    const/4 v8, 0x2

    move-object v3, v0

    goto :goto_1

    const/4 v8, 0x3

    :cond_0
    const/4 v8, 0x0

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    const/4 v8, 0x1

    :goto_1
    const/4 v8, 0x2

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$angle:I

    iget-boolean v5, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$circular:Z

    iget-boolean v6, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$flipH:Z

    iget-boolean v7, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$3;->val$flipV:Z

    invoke-virtual/range {v1 .. v7}, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZZ)V

    :cond_1
    const/4 v8, 0x3

    return-void

    const/4 v0, 0x0
.end method
