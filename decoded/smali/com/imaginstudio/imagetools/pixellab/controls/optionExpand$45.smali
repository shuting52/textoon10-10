.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$OnArrowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$beginArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$beginArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$endArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

.field final synthetic val$endArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 1047
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$endArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$endArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1060
    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->isAdjustableSize()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 1061
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$endArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1062
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$endArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setVisibility(I)V

    goto :goto_0

    const/4 v1, 0x3

    .line 1064
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$endArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1065
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$endArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public startChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V
    .locals 2

    const/4 v1, 0x1

    .line 1050
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;->isAdjustableSize()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 1051
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1052
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setVisibility(I)V

    goto :goto_0

    const/4 v1, 0x2

    .line 1054
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSizeLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 1055
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$45;->val$beginArrowSize:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method
