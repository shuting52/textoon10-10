.class Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;
.super Ljava/lang/Object;
.source "fontFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 121
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const-string v10, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 124
    const/4 v10, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILES_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    const v3, 0x7f0c0044

    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "ttf"

    const/4 v3, 0x0

    aput-object v0, v6, v3

    const-string v0, "otf"

    const/4 v3, 0x1

    aput-object v0, v6, v3

    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1$1;

    invoke-direct {v9, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v7, 0x7f070102

    const v8, 0x7f070101

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;)V

    .line 135
    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->show()V

    return-void

    const/4 v0, 0x2
.end method
