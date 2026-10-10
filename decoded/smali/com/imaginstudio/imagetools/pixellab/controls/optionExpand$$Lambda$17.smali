.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleRotate;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$17;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    return-void
.end method


# virtual methods
.method public rotated(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$17;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$17$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;I)V

    return-void

    const/4 v1, 0x1
.end method
