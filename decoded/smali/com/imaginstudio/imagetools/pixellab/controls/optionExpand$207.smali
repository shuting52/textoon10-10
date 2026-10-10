.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;
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

.field final synthetic val$oldBolds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field final synthetic val$oldItalics:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field final synthetic val$oldUnder:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 0

    .line 3850
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->val$oldBolds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->val$oldItalics:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->val$oldUnder:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3853
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->val$oldBolds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBolds(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 3854
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->val$oldItalics:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setItalics(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 3855
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->val$oldUnder:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setUnders(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 3856
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$207;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateSpans(Z)V

    return-void

    const/4 v0, 0x2
.end method
