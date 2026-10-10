.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;
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

.field final synthetic val$oldAlign:I

.field final synthetic val$oldJustify:Z


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IZ)V
    .locals 0

    .line 3384
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->val$oldAlign:I

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->val$oldJustify:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3387
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->val$oldAlign:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextAlign(I)V

    .line 3388
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$180;->val$oldJustify:Z

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setJustify(Z)V

    return-void

    const/4 v0, 0x2
.end method
