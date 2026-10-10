.class Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
    }
.end annotation


# instance fields
.field private cbItemCheck:Landroid/widget/CheckBox;

.field private itemClickListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

.field private ivItemIcon:Landroid/widget/ImageView;

.field private tvItemName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;)V
    .locals 0
    .param p2    # Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->itemClickListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    const p2, 0x7f08011b

    .line 30
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->ivItemIcon:Landroid/widget/ImageView;

    const p2, 0x7f08011c

    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->tvItemName:Landroid/widget/TextView;

    const p2, 0x7f08011a

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 13
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->itemClickListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;

    return-object p0

    const/4 v0, 0x0
.end method


# virtual methods
.method bind(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;Z)V
    .locals 3

    const/4 v2, 0x3

    .line 36
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->tvItemName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->ivItemIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isCheckable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 55
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 56
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    const/4 v2, 0x0

    .line 58
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder;->cbItemCheck:Landroid/widget/CheckBox;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
