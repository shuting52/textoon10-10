.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;
.super Ljava/lang/Object;
.source "PickFromBgDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zoomReset()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 53
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->resetZoom(Z)V

    return-void

    const/4 v0, 0x2
.end method

.method public zoomToggle(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 49
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->zoomWidget:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    return-void

    const/4 v1, 0x1
.end method
