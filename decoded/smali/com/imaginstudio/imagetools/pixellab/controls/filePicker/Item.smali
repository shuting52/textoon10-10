.class Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;
.super Ljava/io/File;
.source "Item.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/io/File;",
        "Ljava/lang/Comparable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private checkable:Z

.field private icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->checkable:Z

    .line 13
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->checkable:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 26
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 p1, -0x1

    return p1

    .line 29
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v1, 0x2

    const/4 p1, 0x0

    return p1

    const/4 v1, 0x1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 8
    const/4 v0, 0x1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1

    const/4 v0, 0x0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x3

    .line 18
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isCheckable()Z
    .locals 2

    const/4 v1, 0x2

    .line 36
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/Item;->checkable:Z

    return v0

    const/4 v1, 0x1
.end method
