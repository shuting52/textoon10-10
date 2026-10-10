.class Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private itemClickListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->itemClickListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->parent:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 42
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    const/4 v0, 0x1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->onBindViewHolder(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;I)V

    return-void

    const/4 v0, 0x0
.end method

.method public onBindViewHolder(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;I)V
    .locals 2

    const/4 v1, 0x3

    .line 36
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->parent:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;

    invoke-virtual {v0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->shouldCheckItem(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->bind(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    .line 12
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    move-result-object p1

    return-object p1

    const/4 v0, 0x0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;
    .locals 4

    const/4 v3, 0x3

    .line 30
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 31
    const/4 v3, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;

    const v1, 0x7f0a002b

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->itemClickListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    invoke-direct {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;-><init>(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 24
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->items:Ljava/util/List;

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->notifyDataSetChanged()V

    return-void

    const/4 v0, 0x0
.end method
