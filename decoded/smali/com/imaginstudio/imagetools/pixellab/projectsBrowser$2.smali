.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 99
    const/4 v3, 0x0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    .line 100
    const/4 v3, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 102
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;->currentSort:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    const/4 v3, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$2;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 111
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    const/4 v1, 0x3
.end method
