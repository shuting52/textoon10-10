.class public Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "FileChooserDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;,
        Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;
    }
.end annotation


# instance fields
.field private btnPrevDir:Landroid/widget/ImageButton;

.field btnSelectDir:Landroid/widget/Button;

.field checkedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private chooserListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

.field private chooserType:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

.field private currentDirPath:Ljava/lang/String;

.field private directoryIconId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private doneText:Ljava/lang/String;

.field private drawableDir:Landroid/graphics/drawable/Drawable;

.field private drawableFile:Landroid/graphics/drawable/Drawable;

.field private fileFormats:[Ljava/lang/String;

.field private fileIconId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private initDir:Ljava/lang/String;

.field private itemsAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

.field private rvItems:Landroid/support/v7/widget/RecyclerView;

.field private title:Ljava/lang/String;

.field private tvCurrentDir:Landroid/widget/TextView;

.field private tvSelectedCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IILcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f070100

    .line 53
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileIconId:I

    const p1, 0x7f070101

    .line 55
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->directoryIconId:I

    .line 130
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    .line 72
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserType:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    .line 73
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileFormats:[Ljava/lang/String;

    .line 75
    iput p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileIconId:I

    .line 76
    iput p8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->directoryIconId:I

    .line 77
    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->initDir:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->doneText:Ljava/lang/String;

    .line 79
    iput-object p9, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)[Ljava/lang/String;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 37
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileFormats:[Ljava/lang/String;

    return-object p0

    const/4 v0, 0x0
.end method

.method private findViews(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f08011e

    .line 212
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->rvItems:Landroid/support/v7/widget/RecyclerView;

    const v0, 0x7f080162

    .line 213
    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnPrevDir:Landroid/widget/ImageButton;

    const v0, 0x7f0801a7

    .line 214
    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    const v0, 0x7f0800a5

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvCurrentDir:Landroid/widget/TextView;

    const v0, 0x7f0801aa

    .line 216
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    return-void

    const/4 v1, 0x1
.end method

.method private loadItems(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x3

    .line 164
    const/4 v10, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    const-string v0, "/"

    .line 166
    const/4 v10, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 167
    const/4 v10, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvCurrentDir:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v10, 0x3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    .line 194
    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    const/4 v10, 0x1

    return-void

    .line 198
    const/4 v10, 0x2

    :cond_0
    const/4 v10, 0x3

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v10, 0x0

    if-ge v4, v2, :cond_3

    const/4 v10, 0x1

    aget-object v5, p1, v4

    .line 199
    const/4 v10, 0x2

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v10, 0x3

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableFile:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    const/4 v10, 0x0

    :cond_1
    const/4 v10, 0x1

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableDir:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/4 v10, 0x2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v10, 0x3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserType:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    sget-object v9, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILES_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    if-ne v5, v9, :cond_2

    const/4 v10, 0x0

    const/4 v5, 0x1

    goto :goto_2

    const/4 v10, 0x1

    :cond_2
    const/4 v10, 0x2

    const/4 v5, 0x0

    :goto_2
    const/4 v10, 0x3

    invoke-direct {v6, v7, v8, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v10, 0x0

    .line 201
    const/4 v10, 0x1

    :cond_3
    const/4 v10, 0x2

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 202
    const/4 v10, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;->setItems(Ljava/util/List;)V

    return-void

    const/4 v0, 0x2
.end method

.method private setListeners()V
    .locals 2

    const/4 v1, 0x1

    .line 207
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnPrevDir:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    .line 150
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080162

    if-ne p1, v0, :cond_0

    const/4 v2, 0x3

    .line 152
    const/4 v2, 0x0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 154
    const/4 v2, 0x2

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const v0, 0x7f0801a7

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    .line 157
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->currentDirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onSelectFiles(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->dismiss()V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x3

    .line 85
    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 87
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->requestWindowFeature(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v3, 0x2

    :catch_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0a002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 91
    const/4 v3, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->setContentView(Landroid/view/View;)V

    .line 92
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->findViews(Landroid/view/View;)V

    .line 93
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->setListeners()V

    .line 95
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const v0, 0x7f0800dd

    .line 96
    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/4 v3, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->doneText:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 101
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->doneText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    const/4 v3, 0x3

    .line 103
    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->btnSelectDir:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-direct {v0, p0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemHolder$OnItemClickListener;Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    .line 107
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->rvItems:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 108
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->rvItems:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->itemsAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/ItemsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 110
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->directoryIconId:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableDir:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->fileIconId:I

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->drawableFile:Landroid/graphics/drawable/Drawable;

    .line 113
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->initDir:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->initDir:Ljava/lang/String;

    goto :goto_1

    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V

    return-void

    const/4 v1, 0x3
.end method

.method public onItemCheck(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 3

    const/4 v2, 0x2

    .line 136
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x2
.end method

.method public onItemClick(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 3

    const/4 v2, 0x3

    .line 121
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 122
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->loadItems(Ljava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x3

    .line 123
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserType:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILE_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    .line 124
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 125
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->chooserListener:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserListener;->onFileSelected(Ljava/io/File;)V

    .line 126
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->dismiss()V

    :cond_1
    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public onItemUnCheck(Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;)V
    .locals 3

    const/4 v2, 0x2

    .line 143
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->tvSelectedCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x2
.end method

.method public shouldCheckItem(Ljava/io/File;)Z
    .locals 2

    const/4 v1, 0x3

    .line 132
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;->checkedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    const/4 v1, 0x1
.end method
