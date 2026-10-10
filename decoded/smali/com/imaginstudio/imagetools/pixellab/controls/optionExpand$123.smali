.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field final synthetic val$toggleablePanel:Landroid/widget/LinearLayout;

.field final synthetic val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V
    .locals 0

    .line 2496
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->val$toggleablePanel:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2500
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->val$toggleablePanel:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/16 v0, 0x8

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2501
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->val$widthVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$123;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->getCurrColor()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setStroke(ZII)V

    return-void

    const/4 v0, 0x2
.end method
