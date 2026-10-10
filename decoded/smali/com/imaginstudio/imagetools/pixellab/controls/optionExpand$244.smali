.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;
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

.field final synthetic val$depthColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V
    .locals 0

    .line 4460
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;->val$depthColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4463
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$244;->val$depthColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->isAutomatic()Z

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepthColor(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    return-void

    const/4 v0, 0x2
.end method
