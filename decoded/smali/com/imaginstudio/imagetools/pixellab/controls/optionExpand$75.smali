.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;
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

.field final synthetic val$message:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;I)V
    .locals 0

    .line 1681
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;->val$message:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1684
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;->val$message:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isEmptySticker()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 1685
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$75;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentObject()V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
