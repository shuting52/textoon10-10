.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$oldColors:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field final synthetic val$oldFillType:I

.field final synthetic val$oldGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ILcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    .line 3579
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldFillType:I

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldColors:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3582
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldFillType:I

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    .line 3583
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldColors:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColors(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 3584
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateSpans(Z)V

    goto :goto_0

    const/4 v2, 0x1

    .line 3585
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldFillType:I

    sget v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 3586
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$194;->val$oldGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setGradientFill(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
