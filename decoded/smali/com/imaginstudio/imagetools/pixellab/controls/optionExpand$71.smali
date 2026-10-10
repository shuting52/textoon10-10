.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;
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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V
    .locals 0

    .line 1613
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1616
    const/4 v1, 0x3

    sget v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_COLOR:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    .line 1617
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsColor(I)V

    goto :goto_0

    const/4 v1, 0x2

    .line 1619
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    sget p2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->TYPE_GRADIENT:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    .line 1620
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsGradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    .line 1622
    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$71;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground()V

    return-void

    const/4 v1, 0x1
.end method
