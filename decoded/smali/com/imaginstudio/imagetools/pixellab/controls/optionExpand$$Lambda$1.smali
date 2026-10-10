.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field private final arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field private final arg$3:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;->arg$3:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    return-void
.end method


# virtual methods
.method public onShapeChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;->arg$2:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$1;->arg$3:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0, v1, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$1$optionExpand(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    return-void

    const/4 v1, 0x3
.end method
