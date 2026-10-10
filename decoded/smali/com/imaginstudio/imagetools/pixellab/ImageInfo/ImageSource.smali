.class public Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
.super Ljava/lang/Object;
.source "ImageSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    }
.end annotation


# instance fields
.field assetFolder:Z

.field path:Ljava/lang/String;

.field sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 36
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 36
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->fromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 36
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    .line 47
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setLocalFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 36
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->setAssetsPath(Ljava/lang/String;Z)V

    return-void
.end method

.method private fromBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const-string v0, "imgSrcAssetFolder"

    .line 83
    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    const-string v0, "imgSrcPath"

    .line 85
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    const-string v0, "imgSrcSourceType"

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const-string v0, "imgSrcSourceType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    move-result-object p1

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public checkValid()Z
    .locals 2

    const/4 v1, 0x3

    .line 17
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x3

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    return v0

    const/4 v1, 0x1
.end method

.method public compare(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)Z
    .locals 3

    const/4 v2, 0x0

    .line 90
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->checkValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    .line 92
    const/4 v2, 0x1

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->compareStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    iget-boolean p1, p1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    if-ne v0, p1, :cond_0

    const/4 v2, 0x3

    const/4 p1, 0x1

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    return p1

    const/4 v0, 0x2
.end method

.method public copy()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
    .locals 5

    const/4 v4, 0x0

    .line 25
    const/4 v4, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    .line 26
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->set(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;Ljava/lang/String;Z)V

    return-object v0

    const/4 v0, 0x0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 31
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getSourceType()Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    .locals 2

    const/4 v1, 0x3

    .line 53
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isAssetFolder()Z
    .locals 2

    const/4 v1, 0x2

    .line 40
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    return v0

    const/4 v1, 0x1
.end method

.method set(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 20
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 21
    const/4 v0, 0x3

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setAssetsPath(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x2

    .line 57
    const/4 v0, 0x3

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    .line 58
    const/4 v0, 0x0

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 59
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    return-void

    const/4 v0, 0x0
.end method

.method public setLocalFilePath(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    .line 63
    const/4 v1, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    .line 64
    const/4 v1, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    return-void

    const/4 v1, 0x1
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x3

    .line 72
    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "imgSrcAssetFolder"

    .line 73
    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->assetFolder:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    const-string v1, "imgSrcSourceType"

    .line 75
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->sourceType:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    const-string v1, "imgSrcPath"

    .line 78
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x1

    return-object v0

    const/4 v1, 0x3
.end method
