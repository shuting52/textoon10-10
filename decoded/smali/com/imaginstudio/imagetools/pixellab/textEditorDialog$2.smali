.class Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;
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

    .line 45
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 48
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 49
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;)Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->editArea:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$onTextChangedListener;->onTextDone(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->dismiss()V

    return-void

    const/4 v1, 0x1
.end method
