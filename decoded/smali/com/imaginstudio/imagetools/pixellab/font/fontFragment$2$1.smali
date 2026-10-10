.class Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;
.super Ljava/lang/Object;
.source "fontFragment.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    .line 144
    const/4 v2, 0x0

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->mainFontDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    return-void

    .line 147
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v0, "userFontDirs"

    .line 148
    const/4 v2, 0x0

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 150
    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p1, "userFontDirs"

    const/4 v1, 0x1

    .line 151
    const/4 v2, 0x3

    invoke-virtual {p2, p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 152
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontFragment;->reloadFonts()V

    return-void

    const/4 v0, 0x2
.end method
