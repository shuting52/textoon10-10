.class Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$5;
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

    .line 80
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 83
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/textEditorDialog;->dismiss()V

    return-void

    const/4 v0, 0x0
.end method
