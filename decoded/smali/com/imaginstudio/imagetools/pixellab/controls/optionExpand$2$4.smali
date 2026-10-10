.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;
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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 352
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2$4;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$2;->val$presetsHolder:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/presets_holder;->hideProgress()V

    return-void

    const/4 v1, 0x1
.end method
