.class Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "projectsBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProjectListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;",
        ">;"
    }
.end annotation


# instance fields
.field listener:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;)V
    .locals 0
    .param p1    # Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->this$0:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser;

    const/4 p1, 0x0

    .line 242
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 243
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->listener:Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectAdapterListener;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 249
    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;

    if-nez p2, :cond_0

    const/4 v2, 0x1

    .line 251
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0a0054

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const/4 v2, 0x3

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const p3, 0x7f080166

    .line 254
    const/4 v2, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    const/4 v2, 0x2

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f080167

    .line 261
    const/4 v2, 0x3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f080165

    .line 267
    const/4 v2, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectListAdapter;Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const/4 v2, 0x1

    new-instance p3, Ljava/io/File;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/projectsBrowser$ProjectItem;->projectDir:Ljava/io/File;

    const-string v0, "thumb"

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    .line 290
    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-lez p3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-lez p3, :cond_1

    const/4 v2, 0x1

    const p3, 0x7f080168

    .line 291
    const/4 v2, 0x2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v2, 0x3

    return-object p2

    const/4 v0, 0x2
.end method
