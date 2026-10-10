.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$4;
.super Ljava/lang/Object;
.source "EraseBitmapDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zoomReset()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 146
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    return-void

    const/4 v0, 0x2
.end method

.method public zoomToggle(Z)V
    .locals 2

    const/4 v1, 0x2

    .line 142
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    return-void

    const/4 v1, 0x1
.end method
