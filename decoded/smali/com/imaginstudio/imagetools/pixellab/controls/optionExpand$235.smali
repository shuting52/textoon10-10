.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;
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

.field final synthetic val$opacityVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 4228
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;->val$opacityVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4231
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;->val$opacityVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    invoke-virtual {p3, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->toPercent(II)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->setBarValue(I)V

    .line 4232
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$235;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setOuterShadowColor(I)V

    return-void

    const/4 v0, 0x2
.end method
