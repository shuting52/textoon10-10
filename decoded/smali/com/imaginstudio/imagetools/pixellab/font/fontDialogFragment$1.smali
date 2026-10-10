.class Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;
.super Ljava/lang/Object;
.source "fontDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 83
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 84
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->access$000(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;->onOkButton(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 86
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->dismiss()V

    return-void

    const/4 v1, 0x1
.end method
