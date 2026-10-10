.class Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;
.super Ljava/lang/Object;
.source "ImageCropPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "handlesToggle"
.end annotation


# instance fields
.field active_00:Z

.field active_01:Z

.field active_0H:Z

.field active_10:Z

.field active_11:Z

.field active_1H:Z

.field active_H0:Z

.field active_H1:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->this$0:Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 482
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_00:Z

    .line 483
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_10:Z

    .line 484
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_11:Z

    .line 485
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_01:Z

    .line 487
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H0:Z

    .line 488
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_1H:Z

    .line 489
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H1:Z

    .line 490
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_0H:Z

    return-void
.end method


# virtual methods
.method toggleAll(Z)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 499
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_00:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_0H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H0:Z

    return-void

    const/4 v0, 0x0
.end method

.method toggleFree(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 496
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_0H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_H0:Z

    return-void

    const/4 v0, 0x0
.end method

.method toggleMaintain(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 493
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropPreview$handlesToggle;->active_00:Z

    return-void

    const/4 v0, 0x0
.end method
