.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 222
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    .line 223
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->hideProgress()V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
