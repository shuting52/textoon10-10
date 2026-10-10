.class Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1$1;
.super Ljava/lang/Object;
.source "fontFragment.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSelected(Ljava/io/File;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    return-void

    const/4 v0, 0x0
.end method

.method public onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 127
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-static {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->access$000(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;Ljava/util/ArrayList;)V

    return-void

    const/4 v0, 0x0
.end method
