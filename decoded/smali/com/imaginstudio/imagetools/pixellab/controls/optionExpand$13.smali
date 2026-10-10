.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$moveByVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;->val$moveByVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 615
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->references:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$13;->val$moveByVal:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/slider_ui;->getBarValue()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->positionObjects(Ljava/util/ArrayList;FF)V

    return-void

    const/4 v1, 0x3
.end method
