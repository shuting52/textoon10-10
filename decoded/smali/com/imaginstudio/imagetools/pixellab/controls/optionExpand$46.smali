.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;


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

.field final synthetic val$beginSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;)V
    .locals 0

    .line 1070
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->val$beginSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1073
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$46;->val$beginSelector:Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector;->getArrowHeadFromId(I)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setStartArrowHead(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$ArrowHead;)V

    return-void

    const/4 v0, 0x2
.end method
