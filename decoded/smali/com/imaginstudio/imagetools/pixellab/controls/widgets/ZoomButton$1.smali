.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$1;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 61
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 62
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->zoomListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$OnZoomEvent;->zoomReset()V

    :cond_0
    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method
