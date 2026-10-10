.class public Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;
.super Ljava/lang/Object;
.source "uniformScale.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removeColorTolerance(I)I
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/16 v0, 0x4b

    if-le p0, v0, :cond_0

    const/4 v1, 0x3

    const v0, 0x3fcccccd    # 1.6f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p0, v0

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const v0, 0x3ecccccd    # 0.4f

    int-to-float p0, p0

    mul-float p0, p0, v0

    :goto_0
    const/4 v1, 0x2

    float-to-int p0, p0

    return p0

    const/4 v1, 0x1
.end method

.method public static removeColorToleranceInverse(I)I
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_0

    const/4 v4, 0x1

    const/high16 v0, 0x3f200000    # 0.625f

    int-to-float p0, p0

    mul-float p0, p0, v0

    float-to-double v0, p0

    const-wide v2, 0x404c200000000000L    # 56.25

    add-double/2addr v0, v2

    goto :goto_0

    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    const/high16 v0, 0x40200000    # 2.5f

    int-to-float p0, p0

    mul-float p0, p0, v0

    float-to-double v0, p0

    :goto_0
    const/4 v4, 0x0

    double-to-int p0, v0

    return p0

    const/4 v0, 0x0
.end method

.method public static scaleBezier(I)I
    .locals 2

    const/4 v1, 0x2

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_0

    const/4 v1, 0x3

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0xa

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    mul-int/lit8 p0, p0, 0x6

    add-int/lit16 p0, p0, -0xaa

    :goto_0
    const/4 v1, 0x2

    return p0

    const/4 v1, 0x1
.end method

.method public static scaleBezierInverse(I)I
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    const/4 v1, 0x1

    add-int/lit8 p0, p0, -0xa

    .line 38
    const/4 v1, 0x2

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    add-int/lit16 p0, p0, 0xaa

    div-int/lit8 p0, p0, 0x6

    :goto_0
    const/4 v1, 0x1

    return p0

    const/4 v1, 0x1
.end method

.method public static scaleObjects(I)I
    .locals 2

    const/4 v1, 0x3

    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    const/4 v1, 0x0

    mul-int/lit8 p0, p0, 0x5

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    mul-int/lit8 p0, p0, 0x6

    sub-int/2addr p0, v0

    :goto_0
    const/4 v1, 0x3

    return p0

    const/4 v1, 0x1
.end method

.method public static textSize(I)I
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v1, 0x2

    const v0, 0x3fcccccd    # 1.6f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x41a00000    # 20.0f

    add-float/2addr p0, v0

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/high16 v0, 0x40200000    # 2.5f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x428c0000    # 70.0f

    sub-float/2addr p0, v0

    :goto_0
    const/4 v1, 0x1

    float-to-int p0, p0

    return p0

    const/4 v1, 0x1
.end method

.method public static textSizeInverse(I)I
    .locals 2

    const/4 v1, 0x3

    const/16 v0, 0xb4

    if-ge p0, v0, :cond_0

    const/4 v1, 0x0

    const/high16 v0, 0x3f200000    # 0.625f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x41480000    # 12.5f

    sub-float/2addr p0, v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const v0, 0x3ecccccd    # 0.4f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x41e00000    # 28.0f

    add-float/2addr p0, v0

    :goto_0
    const/4 v1, 0x3

    float-to-int p0, p0

    return p0

    const/4 v1, 0x1
.end method

.method public static textureSize(I)I
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 v1, 0x2

    mul-int/lit8 p0, p0, 0xa

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    mul-int/lit8 p0, p0, 0x64

    add-int/lit16 p0, p0, -0x384

    :goto_0
    const/4 v1, 0x1

    return p0

    const/4 v1, 0x1
.end method

.method public static textureSizeInverse(I)I
    .locals 2

    const/4 v1, 0x3

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v1, 0x0

    const v0, 0x3dcccccd    # 0.1f

    int-to-float p0, p0

    mul-float p0, p0, v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const v0, 0x3c23d70a    # 0.01f

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x41100000    # 9.0f

    add-float/2addr p0, v0

    :goto_0
    const/4 v1, 0x3

    float-to-int p0, p0

    return p0

    const/4 v1, 0x1
.end method

.method public static textureSizeShape(I)I
    .locals 2

    const/4 v1, 0x1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 v1, 0x2

    mul-int/lit8 p0, p0, 0xa

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    mul-int/lit8 p0, p0, 0xf

    add-int/lit8 p0, p0, -0x32

    :goto_0
    const/4 v1, 0x1

    return p0

    const/4 v1, 0x1
.end method

.method public static textureSizeShapeInverse(I)I
    .locals 2

    const/4 v1, 0x3

    const/16 v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v1, 0x0

    const v0, 0x3dcccccd    # 0.1f

    int-to-float p0, p0

    mul-float p0, p0, v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    add-int/lit8 p0, p0, 0x32

    int-to-float p0, p0

    const/high16 v0, 0x41700000    # 15.0f

    div-float/2addr p0, v0

    :goto_0
    const/4 v1, 0x3

    float-to-int p0, p0

    return p0

    const/4 v1, 0x1
.end method
