.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector$onColorChangeListener;


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

.field final synthetic val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    .line 3565
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;->val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3568
    const/4 v1, 0x1

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x2

    .line 3569
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;->val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget p3, p3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;->val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setColorFill(III)V

    goto :goto_0

    const/4 v1, 0x0

    .line 3570
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x3

    .line 3571
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$193;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setGradientFill(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    :cond_1
    const/4 v1, 0x1

    :goto_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method
