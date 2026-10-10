.class Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;
.super Ljava/lang/Object;
.source "fontDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 92
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->dismiss()V

    return-void

    const/4 v0, 0x0
.end method
