.class public Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;
.super Ljava/lang/Object;
.source "CropInfo.java"


# static fields
.field static final floatInvPrecision:F = 0.001f

.field static final floatPrecision:I = 0x3e8


# instance fields
.field circular:Z

.field flipH:Z

.field flipV:Z

.field portion:Landroid/graphics/RectF;

.field rot:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->portion:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->rot:I

    .line 16
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->circular:Z

    .line 17
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipH:Z

    .line 18
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipV:Z

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->portion:Landroid/graphics/RectF;

    const-string v1, "cropInfoPorLeft"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    mul-float v1, v1, v2

    const-string v3, "cropInfoPorTop"

    .line 43
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const-string v4, "cropInfoPorRight"

    .line 44
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    const-string v5, "cropInfoPorBottom"

    .line 45
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v2

    .line 42
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "cropInfRot"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->rot:I

    const-string v0, "cropInfCirc"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->circular:Z

    const-string v0, "n7gV4v"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipH:Z

    const-string v0, "mHbGHc"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipV:Z

    return-void
.end method

.method public static makeBundle(Landroid/graphics/RectF;IZZZ)Landroid/os/Bundle;
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 52
    const/4 v4, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cropInfoPorLeft"

    .line 53
    const/4 v4, 0x2

    iget v2, p0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cropInfoPorTop"

    .line 54
    const/4 v4, 0x3

    iget v2, p0, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cropInfoPorRight"

    .line 55
    const/4 v4, 0x0

    iget v2, p0, Landroid/graphics/RectF;->right:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cropInfoPorBottom"

    .line 56
    const/4 v4, 0x1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float p0, p0, v3

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "cropInfRot"

    .line 57
    const/4 v4, 0x2

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "cropInfCirc"

    .line 58
    const/4 v4, 0x3

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "mHbGHc"

    .line 59
    const/4 v4, 0x0

    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "n7gV4v"

    .line 60
    const/4 v4, 0x1

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    const/4 v0, 0x0
.end method


# virtual methods
.method public getPortion()Landroid/graphics/RectF;
    .locals 2

    const/4 v1, 0x3

    .line 21
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->portion:Landroid/graphics/RectF;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getRot()I
    .locals 2

    const/4 v1, 0x2

    .line 25
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->rot:I

    return v0

    const/4 v1, 0x1
.end method

.method public isCircular()Z
    .locals 2

    const/4 v1, 0x1

    .line 29
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->circular:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isFlipH()Z
    .locals 2

    const/4 v1, 0x0

    .line 33
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipH:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isFlipV()Z
    .locals 2

    const/4 v1, 0x3

    .line 37
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/Image/CropInfo;->flipV:Z

    return v0

    const/4 v1, 0x1
.end method
