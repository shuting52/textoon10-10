.class Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;
.super Ljava/lang/Object;
.source "fontFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 174
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 187
    const/4 v1, 0x3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x0

    .line 188
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->access$200(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    const/4 v1, 0x2

    .line 191
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->access$200(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    .line 182
    const/4 v0, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->listAdapter:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x0
.end method
