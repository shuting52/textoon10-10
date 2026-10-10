.class Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;
.super Ljava/lang/Object;
.source "ContactDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ContactDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 36
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xf

    if-le p1, v0, :cond_0

    const/4 v2, 0x0

    .line 37
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->access$100(Lcom/imaginstudio/imagetools/pixellab/ContactDialog;)V

    .line 38
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->dismiss()V

    goto :goto_0

    const/4 v2, 0x3

    .line 40
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Message below required length !"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
