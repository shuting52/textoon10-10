.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;
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

.field final synthetic val$finalD:Landroid/graphics/Bitmap;

.field final synthetic val$finalSubBgPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->val$aBG:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->val$finalD:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->val$finalSubBgPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 322
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 324
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->val$aBG:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;->val$finalD:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->setContent(Landroid/graphics/Bitmap;Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method
