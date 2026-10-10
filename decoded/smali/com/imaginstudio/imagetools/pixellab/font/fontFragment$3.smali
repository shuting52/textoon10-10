.class Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;
.super Ljava/lang/Object;
.source "fontFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 168
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 169
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->hideKeyboardFrom(Landroid/content/Context;Landroid/view/View;)V

    return-void

    const/4 v1, 0x1
.end method
