.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;
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

.field final synthetic val$aSticker:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

.field final synthetic val$finalD:Landroid/graphics/Bitmap;

.field final synthetic val$shapePath:Ljava/lang/String;

.field final synthetic val$thumbHeight:F

.field final synthetic val$thumbWidth:F


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;FF)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$aSticker:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$finalD:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$shapePath:Ljava/lang/String;

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbWidth:F

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 200
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->val$stickerType:I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->currentStickersJob:I

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    .line 202
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$aSticker:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$finalD:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method
