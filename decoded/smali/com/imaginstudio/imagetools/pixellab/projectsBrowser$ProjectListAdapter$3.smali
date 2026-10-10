.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;
.super Ljava/lang/Object;
.source "projectsBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

.field final synthetic val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->val$item:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 271
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->listener:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 272
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0134

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 273
    const/4 v3, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 275
    const/4 v3, 0x1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x1040009

    const/4 v1, 0x0

    .line 276
    const/4 v3, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x1040013

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method
