.class Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;
.super Ljava/lang/Object;
.source "fontListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->removeSection(Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V
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

    .line 169
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 172
    const/4 v2, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string p2, "userFontDirs"

    .line 173
    const/4 v2, 0x3

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 174
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;->val$item:Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "userFontDirs"

    const/4 v1, 0x1

    .line 175
    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 176
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->changeListener:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;->contentInvalidated()V

    return-void

    const/4 v0, 0x2
.end method
