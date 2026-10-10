.class Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;
.super Ljava/lang/Object;
.source "textEditorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 59
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-boolean p1, p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 60
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 61
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 63
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    goto :goto_0

    const/4 v2, 0x0

    .line 66
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 67
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 69
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->up:Z

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
