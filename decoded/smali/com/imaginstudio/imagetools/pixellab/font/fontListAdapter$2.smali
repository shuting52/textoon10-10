.class Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;
.super Ljava/lang/Object;
.source "fontListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

.field final synthetic val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 116
    const/4 v2, 0x0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c013b

    .line 118
    const/4 v2, 0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 119
    const/4 v2, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;)V

    const v1, 0x7f0c009b

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 134
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    const/4 v0, 0x2
.end method
