.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/AbstractComponent$OnHandleResize;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field private final arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    return-void
.end method


# virtual methods
.method public resized()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$18;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$18$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V

    return-void

    const/4 v0, 0x2
.end method
