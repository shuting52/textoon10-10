.class Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$1;
.super Ljava/lang/Object;
.source "textEditorDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 35
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 39
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method
