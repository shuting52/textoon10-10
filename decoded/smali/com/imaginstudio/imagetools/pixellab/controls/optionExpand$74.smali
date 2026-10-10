.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;
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

.field final synthetic val$oldImgSource:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->val$message:I

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->val$oldImgSource:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1674
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->val$message:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v7, 0x0

    .line 1675
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeCurrentObject()V

    goto :goto_0

    const/4 v7, 0x2

    .line 1676
    const/4 v7, 0x3

    :cond_0
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->val$message:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    .line 1677
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v1

    sget v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$74;->val$oldImgSource:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->editCurrShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V

    :cond_1
    const/4 v7, 0x3

    :goto_0
    const/4 v7, 0x0

    return-void

    const/4 v1, 0x3
.end method
