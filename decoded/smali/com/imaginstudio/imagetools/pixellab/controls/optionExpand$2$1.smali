.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

.field final synthetic val$aBG:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->val$aBG:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 293
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 294
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$1;->val$aBG:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->addPreset(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method
