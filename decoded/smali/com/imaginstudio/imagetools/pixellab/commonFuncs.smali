.class public Lcom/imaginstudio/imagetools/pixellab/commonFuncs;
.super Ljava/lang/Object;
.source "commonFuncs.java"


# static fields
.field private static final AB:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

.field public static final FORMAT_JPG:I = 0x2

.field public static final FORMAT_PNG:I = 0x1

.field private static final abLength:I

.field private static pntBorder:Landroid/graphics/Paint;

.field private static rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 343
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rnd:Ljava/security/SecureRandom;

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->abLength:I

    .line 915
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pntBorder:Landroid/graphics/Paint;

    .line 917
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pntBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NearestPowerOf2LessThan32(F)I
    .locals 7

    const-string v6, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    float-to-double v0, p0

    .line 365
    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    const/4 v0, 0x2
.end method

.method public static absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x3

    .line 789
    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float p1, p1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v2

    int-to-float p2, p2

    mul-float v3, v3, p2

    float-to-int v3, v3

    iget v4, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v2

    mul-float v4, v4, p1

    float-to-int p1, v4

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, v2

    mul-float p0, p0, p2

    float-to-int p0, p0

    invoke-direct {v0, v1, v3, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public static absolutePortionF(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 6

    const/4 v5, 0x2

    .line 795
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float p1, p1

    mul-float v1, v1, p1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v2

    int-to-float p2, p2

    mul-float v3, v3, p2

    iget v4, p0, Landroid/graphics/RectF;->right:F

    div-float/2addr v4, v2

    mul-float v4, v4, p1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, v2

    mul-float p0, p0, p2

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public static arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    const/4 v5, 0x2

    .line 754
    const/4 v5, 0x3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v5, 0x0

    .line 755
    const/4 v5, 0x1

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 757
    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    const/4 v1, 0x1
.end method

.method public static arrayContains([II)Z
    .locals 5

    const/4 v4, 0x1

    .line 853
    const/4 v4, 0x2

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v0, :cond_1

    const/4 v4, 0x0

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v4, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    return v1

    const/4 v0, 0x0
.end method

.method public static boolToString(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    const-string p0, "1"

    goto :goto_0

    const/4 v0, 0x0

    :cond_0
    const/4 v0, 0x1

    const-string p0, ""

    :goto_0
    const/4 v0, 0x2

    return-object p0

    const/4 v0, 0x0
.end method

.method public static ceilConvert(F)I
    .locals 3

    const/4 v2, 0x0

    float-to-double v0, p0

    .line 120
    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    const/4 v0, 0x2
.end method

.method public static changeAlpha(II)I
    .locals 3

    const/4 v2, 0x3

    .line 137
    const/4 v2, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    const/4 v0, 0x2
.end method

.method public static varargs checkEquality([F)Z
    .locals 6

    const/4 v5, 0x2

    .line 126
    const/4 v5, 0x3

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    return v1

    .line 127
    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    aget v0, p0, v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 128
    const/4 v5, 0x3

    :goto_0
    const/4 v5, 0x0

    array-length v4, p0

    if-ge v3, v4, :cond_2

    const/4 v5, 0x1

    .line 129
    const/4 v5, 0x2

    aget v4, p0, v3

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    return v1

    :cond_1
    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v5, 0x1

    :cond_2
    const/4 v5, 0x2

    return v2

    const/4 v1, 0x1
.end method

.method public static checkIfSidesClipped(Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v4, 0x0

    .line 502
    const/4 v4, 0x1

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->checkImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x2

    return v1

    :cond_0
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 503
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v4, 0x2

    .line 504
    const/4 v4, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    return v3

    .line 505
    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x3

    return v3

    :cond_2
    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v4, 0x1

    :cond_3
    const/4 v4, 0x2

    return v1

    const/4 v0, 0x0
.end method

.method public static checkImage(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 610
    const/4 v2, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-le p0, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    return v0

    const/4 v0, 0x2
.end method

.method public static clipValue(FFF)F
    .locals 1

    const/4 v0, 0x2

    .line 921
    const/4 v0, 0x3

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method public static clipValue(III)I
    .locals 1

    const/4 v0, 0x1

    .line 924
    const/4 v0, 0x2

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method public static compareStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    const/4 p0, 0x1

    goto :goto_0

    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x0

    const/4 p0, 0x0

    goto :goto_0

    const/4 v0, 0x1

    .line 498
    const/4 v0, 0x2

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    const/4 v0, 0x0

    return p0

    const/4 v0, 0x0
.end method

.method public static varargs computePathsBounds(Landroid/graphics/RectF;[Landroid/graphics/Path;)V
    .locals 6

    const/4 v5, 0x2

    .line 747
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 748
    const/4 v5, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_0

    const/4 v5, 0x2

    aget-object v4, p1, v3

    .line 749
    const/4 v5, 0x3

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 750
    const/4 v5, 0x0

    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->unionRects(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public static copyBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    const/4 p0, 0x0

    return-object p0

    .line 729
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    .line 67
    const/4 v6, 0x2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x3

    return-void

    .line 70
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    .line 71
    const/4 v6, 0x3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v6, 0x1

    .line 72
    const/4 v6, 0x2

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 76
    const/4 v6, 0x1

    array-length v2, v0

    :goto_0
    const/4 v6, 0x2

    if-ge v1, v2, :cond_5

    const/4 v6, 0x3

    aget-object v3, v0, v1

    .line 77
    const/4 v6, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v6, 0x1

    .line 83
    const/4 v6, 0x2

    :cond_2
    const/4 v6, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    .line 84
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x3

    .line 85
    const/4 v6, 0x0

    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot create dir "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    const/4 v6, 0x1

    :cond_3
    const/4 v6, 0x2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 89
    const/4 v6, 0x3

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    .line 92
    const/4 v6, 0x0

    new-array p1, p1, [B

    .line 94
    const/4 v6, 0x1

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v6, 0x3

    .line 95
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    const/4 v6, 0x1

    .line 97
    const/4 v6, 0x2

    :cond_4
    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_5
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public static cropRotBitmap(Landroid/graphics/Bitmap;Landroid/graphics/RectF;IZZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 807
    iget v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-object p0

    .line 810
    :cond_0
    div-int/lit8 v0, p2, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 811
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->absolutePortion(Landroid/graphics/RectF;II)Landroid/graphics/Rect;

    move-result-object p1

    if-nez v0, :cond_2

    .line 812
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 813
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 814
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 815
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 816
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz p3, :cond_4

    const/high16 p3, -0x40800000    # -1.0f

    goto :goto_3

    :cond_4
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_3
    if-eqz p4, :cond_5

    const/high16 v2, -0x40800000    # -1.0f

    .line 818
    :cond_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v1, p3, v2, p4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p3, p2

    .line 819
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v1, p3, p4, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 820
    invoke-static {v3, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {v1, p0, p1, p2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public static directionToString(Landroid/graphics/Path$Direction;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    .line 772
    const/4 v1, 0x1

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    if-ne p0, v0, :cond_0

    const/4 v1, 0x2

    const-string p0, ""

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const-string p0, "1"

    :goto_0
    const/4 v1, 0x1

    return-object p0

    const/4 v1, 0x1
.end method

.method public static dist(FFFF)F
    .locals 1

    const/4 v0, 0x3

    sub-float/2addr p0, p2

    mul-float p0, p0, p0

    sub-float/2addr p1, p3

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    .line 572
    const/4 v0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    const/4 v0, 0x0
.end method

.method public static dist(Landroid/graphics/PointF;FF)F
    .locals 3

    const/4 v2, 0x2

    .line 580
    const/4 v2, 0x3

    iget v0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    iget p1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    mul-float p1, p1, p0

    add-float/2addr v0, p1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    const/4 v0, 0x2
.end method

.method public static dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    const/4 v3, 0x1

    .line 576
    const/4 v3, 0x2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    mul-float v1, v1, p0

    add-float/2addr v0, v1

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    const/4 v1, 0x3
.end method

.method public static dpToPx(I)F
    .locals 2

    const/4 v1, 0x0

    int-to-float p0, p0

    .line 250
    const/4 v1, 0x1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    return p0

    const/4 v1, 0x1
.end method

.method public static dpToPxInt(I)I
    .locals 1

    const/4 v0, 0x3

    .line 267
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    const/4 v0, 0x0
.end method

.method public static drawBorder(Landroid/graphics/RectF;IFLandroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x2

    .line 911
    const/4 v1, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 912
    const/4 v1, 0x0

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 913
    const/4 v1, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x1
.end method

.method public static drawGrid(FFFFIZLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 14

    move/from16 v6, p4

    move-object/from16 v7, p7

    sub-float v0, p2, p0

    int-to-float v1, v6

    div-float v8, v0, v1

    sub-float v0, p3, p1

    div-float v9, v0, v1

    .line 902
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    const/4 v11, 0x1

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v6, :cond_2

    if-eqz p5, :cond_1

    .line 904
    div-int/lit8 v0, v6, 0x2

    if-ne v5, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    int-to-float v0, v0

    mul-float v0, v0, v10

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_1
    int-to-float v4, v5

    mul-float v0, v4, v8

    add-float v3, p0, v0

    move-object/from16 v0, p6

    move v1, v3

    move v2, p1

    move v12, v4

    move/from16 v4, p3

    move v13, v5

    move-object v5, v7

    .line 905
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v4, v12, v9

    add-float/2addr v4, p1

    move v1, p0

    move v2, v4

    move/from16 v3, p2

    .line 906
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v13, 0x1

    goto :goto_0

    .line 908
    :cond_2
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    const/4 v0, 0x2
.end method

.method public static drawGrid(Landroid/graphics/RectF;IZLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    .line 897
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->drawGrid(FFFFIZLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x0
.end method

.method public static drawRoundedRectCustom(Landroid/graphics/RectF;FZZLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 180
    invoke-virtual {p5, p0, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p5, p0, p1, p1, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    .line 183
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    if-nez p2, :cond_1

    .line 185
    iget p2, p0, Landroid/graphics/RectF;->left:F

    sub-float v2, p2, v0

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget p2, p0, Landroid/graphics/RectF;->left:F

    add-float v4, p2, p1

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p5

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    if-nez p3, :cond_2

    .line 188
    iget p2, p0, Landroid/graphics/RectF;->right:F

    sub-float v2, p2, p1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget p1, p0, Landroid/graphics/RectF;->right:F

    add-float v4, p1, v0

    iget v5, p0, Landroid/graphics/RectF;->bottom:F

    move-object v1, p5

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void

    const/4 v1, 0x3
.end method

.method public static drawSquare(FFFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x2

    sub-float v1, p0, p2

    sub-float v2, p1, p2

    add-float v3, p0, p2

    add-float v4, p1, p2

    move-object v0, p4

    move-object v5, p3

    .line 584
    const/4 v6, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method

.method public static equalBundles(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 3

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    .line 57
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    const/4 p0, 0x1

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x1

    return p0

    const/4 v0, 0x2
.end method

.method public static equalsRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3

    const/4 v2, 0x3

    .line 625
    const/4 v2, 0x0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 v2, 0x0

    const/4 p0, 0x1

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x3

    return p0

    const/4 v0, 0x2
.end method

.method public static findExtremaCubicCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 870
    iget v1, p0, Landroid/graphics/PointF;->x:F

    neg-float v1, v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    mul-float v1, v1, v3

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    sub-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v4

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float v2, v2, v4

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float v6, v6, v3

    invoke-static {v1, v2, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->solveQuadratic(FFF)[F

    move-result-object v1

    .line 871
    array-length v2, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-ge v7, v2, :cond_1

    aget v11, v1, v7

    invoke-static {v11, v10, v9, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->inRange(FFFZ)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {p0, p1, p2, p3, v11}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getPointOnCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)[Landroid/graphics/PointF;

    move-result-object v9

    aget-object v8, v9, v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 872
    :cond_1
    iget v1, p0, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    mul-float v1, v1, v3

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v5

    sub-float/2addr v2, v7

    iget v5, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v5

    mul-float v2, v2, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v3

    invoke-static {v1, v2, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->solveQuadratic(FFF)[F

    move-result-object v1

    .line 873
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    invoke-static {v4, v10, v9, v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->inRange(FFFZ)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p0, p1, p2, p3, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getPointOnCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)[Landroid/graphics/PointF;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    const/4 v0, 0x0
.end method

.method public static fitTextInRect(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x2

    .line 110
    const/4 v4, 0x3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 111
    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 113
    const/4 v4, 0x2

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v1, v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    return-object v0

    .line 114
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    const/4 v4, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0

    const/4 v4, 0x0

    const/4 v0, 0x0
.end method

.method public static flipPortion(Landroid/graphics/RectF;ZZ)V
    .locals 4

    const/4 v3, 0x2

    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    .line 801
    const/4 v3, 0x0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float v1, v0, v1

    goto :goto_0

    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget v1, p0, Landroid/graphics/RectF;->left:F

    :goto_0
    const/4 v3, 0x3

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v2

    goto :goto_1

    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget v2, p0, Landroid/graphics/RectF;->top:F

    :goto_1
    const/4 v3, 0x3

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    iget p1, p0, Landroid/graphics/RectF;->left:F

    sub-float p1, v0, p1

    goto :goto_2

    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    iget p1, p0, Landroid/graphics/RectF;->right:F

    :goto_2
    const/4 v3, 0x3

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    iget p2, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    goto :goto_3

    const/4 v3, 0x1

    :cond_3
    const/4 v3, 0x2

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    :goto_3
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    const/4 v1, 0x3
.end method

.method public static floorConvert(F)I
    .locals 3

    const/4 v2, 0x1

    float-to-double v0, p0

    .line 123
    const/4 v2, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    const/4 v0, 0x2
.end method

.method public static fromHex(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 353
    const/4 v0, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method public static generateName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    .line 356
    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getRandomString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v1, 0x1
.end method

.method public static getAngleThreePoints(FFFFFF)F
    .locals 3

    const/4 v2, 0x2

    sub-float/2addr p1, p3

    float-to-double v0, p1

    sub-float/2addr p0, p2

    float-to-double p0, p0

    .line 944
    const/4 v2, 0x3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sub-float/2addr p5, p3

    float-to-double v0, p5

    sub-float/2addr p4, p2

    float-to-double p2, p4

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    const/4 v0, 0x2
.end method

.method public static getBitmapFromPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    .line 317
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 318
    const/4 v1, 0x3

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 319
    const/4 v1, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    const/4 v1, 0x1
.end method

.method public static getCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v3, 0x2

    .line 380
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 381
    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/pixelLab/.cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 383
    const/4 v3, 0x2

    new-instance v0, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x0

    :catch_0
    move-exception v0

    .line 387
    const/4 v3, 0x1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 389
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v0

    const/4 v1, 0x3
.end method

.method public static getContrastColor(I)I
    .locals 4

    const/4 v3, 0x2

    .line 721
    const/4 v3, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const/4 p0, 0x0

    invoke-static {p0, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    .line 722
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 723
    const/4 v3, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 724
    const/4 v3, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v0, v0

    const v2, 0x3e991687    # 0.299f

    mul-float v0, v0, v2

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float p0, p0

    const v1, 0x3de978d5    # 0.114f

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x433a0000    # 186.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    const/4 v3, 0x1

    const p0, -0xbbbbbc

    goto :goto_0

    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    const/4 p0, -0x1

    :goto_0
    const/4 v3, 0x0

    return p0

    const/4 v1, 0x3
.end method

.method public static getDimensionsFromAssets(Ljava/lang/String;Landroid/content/Context;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x2

    .line 293
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 294
    const/4 v3, 0x0

    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 295
    const/4 v3, 0x1

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 296
    const/4 v3, 0x2

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 297
    const/4 v3, 0x3

    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 298
    const/4 v3, 0x0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 299
    const/4 v3, 0x1

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x2

    .line 300
    const/4 v3, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    aput p1, v1, v0

    return-object v1

    const/4 v1, 0x3
.end method

.method static getDimensionsFromFile(Ljava/lang/String;)[I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    const/4 v4, 0x1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 275
    const/4 v4, 0x2

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 276
    const/4 v4, 0x3

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    .line 278
    const/4 v4, 0x0

    invoke-static {v2, v3, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 279
    const/4 v4, 0x1

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    const/4 v4, 0x2

    :try_start_1
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    const/4 v4, 0x3

    :catch_0
    move-exception p0

    goto :goto_0

    const/4 v4, 0x0

    :catch_1
    move-exception p0

    const/4 v2, 0x0

    .line 283
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 285
    const/4 v4, 0x0

    new-array v3, v3, [I

    aput v2, v3, v1

    aput p0, v3, v0

    return-object v3

    const/4 v0, 0x0
.end method

.method public static getDimensionsFromPath(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x2

    .line 305
    const/4 v4, 0x3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 306
    const/4 v4, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 307
    const/4 v4, 0x1

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 308
    const/4 v4, 0x2

    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 309
    const/4 v4, 0x3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x2

    .line 310
    const/4 v4, 0x0

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    aput v0, v2, v1

    return-object v2

    const/4 v0, 0x0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    .line 172
    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 173
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v2, 0x2

    :try_start_0
    const-string v0, "."

    .line 156
    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 157
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x2

    .line 158
    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const-string p0, ""

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0

    const/4 v0, 0x2
.end method

.method public static getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    .line 167
    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 168
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method public static getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v4, 0x2

    .line 141
    const/4 v4, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 144
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/4 v4, 0x3

    .line 145
    const/4 v4, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x1

    .line 151
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0

    const/4 v0, 0x0
.end method

.method public static getFileOnStorage(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v2, 0x1

    .line 398
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 399
    const/4 v2, 0x3

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 402
    const/4 v2, 0x1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    const/4 v0, 0x2
.end method

.method public static getInSampleAssetFromFile(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 417
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 423
    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 424
    const/4 v1, 0x3

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 425
    const/4 v1, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    .line 426
    const/4 v1, 0x1

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 427
    const/4 v1, 0x2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 428
    const/4 v1, 0x3

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 432
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p1

    .line 433
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return p1

    const/4 v1, 0x1
.end method

.method public static getInSampleFromFile(Ljava/lang/String;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    .line 326
    const/4 v2, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 327
    const/4 v2, 0x1

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 328
    const/4 v2, 0x2

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 329
    const/4 v2, 0x3

    invoke-static {v0, v1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 330
    const/4 v2, 0x0

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 331
    const/4 v2, 0x1

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 335
    const/4 v2, 0x2

    invoke-static {v1, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p0

    .line 336
    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return p0

    const/4 v0, 0x2
.end method

.method public static getInSampleFromPath(Ljava/lang/String;Landroid/content/Context;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    .line 313
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getDimensionsFromPath(Ljava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 314
    const/4 v1, 0x3

    aget p1, p0, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p1, p0, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getInSampleSize(IIII)I

    move-result p0

    return p0

    const/4 v1, 0x1
.end method

.method public static getInSampleSize(IIII)I
    .locals 1

    const/4 v0, 0x1

    .line 376
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->imgContainerScaleFactor(IIII)F

    move-result p0

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->NearestPowerOf2LessThan32(F)I

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method public static getPointOnCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)[Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x0

    .line 859
    const/4 v2, 0x1

    invoke-static {p0, p1, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    .line 860
    const/4 v2, 0x2

    invoke-static {p1, p2, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 861
    const/4 v2, 0x3

    invoke-static {p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 862
    const/4 v2, 0x0

    invoke-static {p0, p1, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p3

    .line 863
    const/4 v2, 0x1

    invoke-static {p1, p2, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 864
    const/4 v2, 0x2

    invoke-static {p3, p1, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p4

    const/4 v0, 0x5

    .line 865
    const/4 v2, 0x3

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const/4 p0, 0x2

    aput-object p3, v0, p0

    const/4 p0, 0x3

    aput-object p1, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    return-object v0

    const/4 v0, 0x2
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    .line 347
    const/4 v5, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v1, p0, :cond_0

    const/4 v5, 0x0

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 349
    const/4 v5, 0x1

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rnd:Ljava/security/SecureRandom;

    sget v4, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->abLength:I

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v5, 0x2

    .line 350
    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v1, 0x1
.end method

.method public static getRectFromCircle(FFF)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x2

    .line 599
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p2, p2, v1

    sub-float v1, p0, p2

    sub-float v2, p1, p2

    add-float/2addr p0, p2

    add-float/2addr p1, p2

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public static varargs getSelected(FFFLandroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    const/4 v4, 0x1

    .line 256
    const/4 v4, 0x2

    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v0, :cond_1

    const/4 v4, 0x0

    aget-object v2, p4, v1

    .line 257
    const/4 v4, 0x1

    invoke-static {v2, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(Landroid/graphics/PointF;FF)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    const/4 v4, 0x2

    return-object v2

    :cond_0
    const/4 v4, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    return-object p3

    const/4 v0, 0x0
.end method

.method public static growRectBounded(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3

    const/4 v2, 0x3

    .line 359
    const/4 v2, 0x0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 360
    const/4 v2, 0x1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 361
    const/4 v2, 0x2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 362
    const/4 v2, 0x3

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void

    const/4 v0, 0x2
.end method

.method public static imgContainerScaleFactor(IIII)F
    .locals 1

    const/4 v0, 0x1

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    .line 371
    const/4 v0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    const/4 v0, 0x0
.end method

.method public static inRange(FFFZ)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_1

    const/4 v2, 0x2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_1

    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    const/4 v0, 0x1

    goto :goto_1

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1

    const/4 v2, 0x3

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    :goto_1
    const/4 v2, 0x3

    return v0

    const/4 v0, 0x2
.end method

.method public static intersect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    const/4 v2, 0x1

    .line 489
    const/4 v2, 0x2

    invoke-static {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->orientation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v0

    .line 490
    const/4 v2, 0x3

    invoke-static {p0, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->orientation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v1

    .line 491
    const/4 v2, 0x0

    invoke-static {p2, p3, p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->orientation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p0

    .line 492
    const/4 v2, 0x1

    invoke-static {p2, p3, p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->orientation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result p1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq p0, p1, :cond_0

    const/4 v2, 0x3

    const/4 p0, 0x1

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x2

    return p0

    const/4 v0, 0x2
.end method

.method public static invertColor(I)I
    .locals 4

    const/4 v3, 0x0

    .line 890
    const/4 v3, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    rsub-int v1, v1, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    rsub-int p0, p0, 0xff

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    const/4 v1, 0x3
.end method

.method public static invertPath(Landroid/graphics/Path;FFFF)Landroid/graphics/Path;
    .locals 2

    const/4 v1, 0x3

    .line 775
    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->invertPath(Ljava/util/ArrayList;FFFF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    const/4 v1, 0x1
.end method

.method public static invertPath(Ljava/util/ArrayList;FFFF)Landroid/graphics/Path;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;FFFF)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    const/4 v7, 0x2

    .line 778
    const/4 v7, 0x3

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 779
    const/4 v7, 0x0

    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v6, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 780
    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    const/4 v7, 0x2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 781
    const/4 v7, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_0

    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    const/4 p0, 0x1

    int-to-float p0, p0

    sub-float v1, p1, p0

    sub-float v2, p2, p0

    add-float v3, p3, p0

    add-float v4, p4, p0

    .line 784
    const/4 v7, 0x3

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-object v6

    const/4 v1, 0x3
.end method

.method public static isDarkColor(I)Z
    .locals 4

    const/4 v3, 0x1

    .line 715
    const/4 v3, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 716
    const/4 v3, 0x3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 717
    const/4 v3, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float v0, v0

    const v2, 0x3e991687    # 0.299f

    mul-float v0, v0, v2

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float p0, p0

    const v1, 0x3de978d5    # 0.114f

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    const/high16 p0, 0x433a0000    # 186.0f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 v3, 0x1

    const/4 p0, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    const/4 p0, 0x0

    :goto_0
    const/4 v3, 0x0

    return p0

    const/4 v1, 0x3
.end method

.method public static isValidImage(Landroid/graphics/Bitmap;)Z
    .locals 2

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    .line 603
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x2

    const/4 p0, 0x1

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v1, 0x1

    return p0

    const/4 v1, 0x1
.end method

.method public static isValidRect(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v2, 0x3

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 411
    const/4 v2, 0x1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    const/4 v2, 0x2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, p0, :cond_0

    const/4 v2, 0x3

    const/4 p0, 0x1

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x2

    return p0

    const/4 v0, 0x2
.end method

.method public static isValidRect(Landroid/graphics/RectF;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 414
    const/4 v2, 0x2

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v2, 0x3

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 v2, 0x0

    const/4 p0, 0x1

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x3

    return p0

    const/4 v0, 0x2
.end method

.method public static loadBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 237
    const/4 v2, 0x2

    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 238
    const/4 v2, 0x3

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    const/4 v2, 0x0

    .line 240
    const/4 v2, 0x1

    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v2, 0x2

    const/4 p1, 0x0

    .line 242
    const/4 v2, 0x3

    invoke-static {v0, p1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    const/4 v0, 0x2
.end method

.method public static loadBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    .line 216
    const/4 v1, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 221
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 222
    const/4 v1, 0x1

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/4 v1, 0x2

    .line 224
    const/4 v1, 0x3

    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    const/4 v1, 0x0

    const/4 p2, 0x0

    .line 225
    const/4 v1, 0x1

    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 226
    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    const/4 v1, 0x1
.end method

.method public static max3(III)I
    .locals 1

    const/4 v0, 0x0

    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    if-le p0, p2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x0

    if-le p1, p2, :cond_1

    const/4 v0, 0x1

    move p0, p1

    goto :goto_0

    const/4 v0, 0x2

    :cond_1
    const/4 v0, 0x3

    move p0, p2

    :goto_0
    const/4 v0, 0x0

    return p0

    const/4 v0, 0x0
.end method

.method public static maxArr([I)I
    .locals 4

    const/4 v3, 0x2

    .line 845
    const/4 v3, 0x3

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    return v1

    .line 846
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    aget v0, p0, v1

    const/4 v1, 0x1

    .line 847
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    array-length v2, p0

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    .line 848
    const/4 v3, 0x2

    aget v2, p0, v1

    if-le v2, v0, :cond_1

    const/4 v3, 0x3

    aget v0, p0, v1

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    return v0

    const/4 v1, 0x3
.end method

.method public static varargs maxId([F)I
    .locals 5

    const/4 v4, 0x0

    .line 834
    const/4 v4, 0x1

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x2

    return v1

    .line 835
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    aget v0, p0, v1

    const/4 v2, 0x0

    .line 836
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    array-length v3, p0

    if-ge v1, v3, :cond_2

    const/4 v4, 0x3

    .line 837
    const/4 v4, 0x0

    aget v3, p0, v1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    const/4 v4, 0x1

    .line 838
    const/4 v4, 0x2

    aget v0, p0, v1

    move v2, v1

    :cond_1
    const/4 v4, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_2
    const/4 v4, 0x1

    return v2

    const/4 v0, 0x0
.end method

.method public static min3Id(FFF)I
    .locals 2

    const/4 v1, 0x3

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 v1, 0x0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 v1, 0x1

    const/4 p0, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    cmpg-float p0, p1, p2

    if-gez p0, :cond_1

    const/4 v1, 0x0

    const/4 p0, 0x2

    goto :goto_0

    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    const/4 p0, 0x3

    :goto_0
    const/4 v1, 0x3

    return p0

    const/4 v1, 0x1
.end method

.method public static minOrMax(FFZ)F
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    .line 948
    const/4 v0, 0x3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    const/4 v0, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    const/4 v0, 0x2

    return p0

    const/4 v0, 0x0
.end method

.method public static normalizeAngle(F)I
    .locals 3

    const/4 v2, 0x0

    float-to-double v0, p0

    .line 938
    const/4 v2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 939
    const/4 v2, 0x2

    rem-int/lit16 p0, p0, 0x168

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    const/16 v0, 0xb4

    if-le p0, v0, :cond_0

    const/4 v2, 0x3

    add-int/lit16 p0, p0, -0x168

    :cond_0
    const/4 v2, 0x0

    return p0

    const/4 v0, 0x2
.end method

.method public static orientation(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 4

    const/4 v3, 0x2

    .line 479
    const/4 v3, 0x3

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p0

    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    mul-float v1, v1, p0

    sub-float/2addr v0, v1

    float-to-double p0, v0

    const-wide/16 v0, 0x0

    cmpl-double p2, p0, v0

    if-nez p2, :cond_0

    const/4 v3, 0x0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v3, 0x1

    cmpl-double p2, p0, v0

    if-lez p2, :cond_1

    const/4 v3, 0x2

    const/4 p0, 0x1

    goto :goto_0

    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    const/4 p0, 0x2

    :goto_0
    const/4 v3, 0x1

    return p0

    const/4 v1, 0x3
.end method

.method public static pointAlongSegment(FFFFF)Landroid/graphics/PointF;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 513
    const/4 v6, 0x0

    invoke-static/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(FFFFFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    const/4 v0, 0x2
.end method

.method public static pointAlongSegment(FFFFFF)Landroid/graphics/PointF;
    .locals 4

    const/4 v3, 0x2

    .line 519
    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    .line 520
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/PointF;

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 521
    const/4 v3, 0x1

    new-instance p2, Landroid/graphics/PointF;

    iget p3, v0, Landroid/graphics/PointF;->x:F

    mul-float p3, p3, p4

    add-float/2addr p0, p3

    iget p3, v0, Landroid/graphics/PointF;->y:F

    mul-float p3, p3, p4

    add-float/2addr p1, p3

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 523
    const/4 v3, 0x2

    iget p0, v0, Landroid/graphics/PointF;->x:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 v3, 0x3

    .line 524
    const/4 v3, 0x0

    iget p0, v0, Landroid/graphics/PointF;->y:F

    iget p1, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr p0, p1

    float-to-double p3, p5

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p5, p0, p0

    add-float/2addr p5, p1

    float-to-double v1, p5

    .line 525
    const/4 v3, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr p3, v1

    double-to-float p1, p3

    mul-float p0, p0, p1

    .line 526
    const/4 v3, 0x2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p5

    .line 528
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget p0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float p0, p0, p1

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float p1, p1, p5

    invoke-virtual {p2, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    return-object p2

    const/4 v1, 0x3
.end method

.method public static pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 510
    const/4 v1, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    const/4 v1, 0x1
.end method

.method public static pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;
    .locals 6

    .line 516
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(FFFFFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    const/4 v0, 0x2
.end method

.method public static putEmptyFileHere(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    .line 441
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 442
    const/4 v1, 0x3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x1

    :catch_0
    move-exception p0

    .line 447
    const/4 v1, 0x2

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public static putNoMediaHere(Ljava/io/File;)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p0, :cond_0

    const/4 v2, 0x3

    .line 452
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 453
    const/4 v2, 0x3

    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x1

    :catch_0
    move-exception p0

    .line 458
    const/4 v2, 0x2

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public static pxToDp(I)F
    .locals 2

    const/4 v1, 0x2

    int-to-float p0, p0

    .line 253
    const/4 v1, 0x3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    return p0

    const/4 v1, 0x1
.end method

.method public static rectFToArr(Landroid/graphics/RectF;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    if-nez p0, :cond_0

    const/4 v4, 0x2

    .line 761
    const/4 v4, 0x3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 762
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    const/4 v0, 0x0
.end method

.method public static returnAvailableFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 v4, 0x3

    const-string v0, ""

    const/4 v1, 0x0

    .line 711
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    new-instance v2, Ljava/io/File;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->suffixifyFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v4, 0x3

    .line 712
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    new-instance v1, Ljava/io/File;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->suffixifyFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    const/4 v0, 0x0
.end method

.method public static rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x3

    float-to-double v0, p2

    .line 558
    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundRadians(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    const/4 v0, 0x2
.end method

.method public static rotateAroundFloat(FFFFI[F)V
    .locals 15

    move/from16 v2, p4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 545
    aput p0, p5, v4

    .line 546
    aput p1, p5, v3

    return-void

    :cond_0
    sub-float v0, p0, p2

    sub-float v1, p1, p3

    int-to-double v5, v2

    .line 550
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 551
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 552
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    float-to-double v9, v0

    mul-double v11, v9, v7

    float-to-double v0, v1

    mul-double v13, v0, v5

    sub-double/2addr v11, v13

    double-to-float v2, v11

    add-float v2, v2, p2

    .line 553
    aput v2, p5, v4

    mul-double v9, v9, v5

    mul-double v0, v0, v7

    add-double/2addr v9, v0

    double-to-float v0, v9

    add-float v0, v0, p3

    .line 554
    aput v0, p5, v3

    return-void

    const/4 v1, 0x3
.end method

.method public static rotateAroundRadians(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;
    .locals 7

    .line 562
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 563
    iget p0, p1, Landroid/graphics/PointF;->x:F

    neg-float p0, p0

    iget v1, p1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {v0, p0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 564
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 565
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    .line 566
    iget p0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, p0

    mul-double v3, v3, v1

    iget p0, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, p0

    mul-double v5, v5, p2

    sub-double/2addr v3, v5

    double-to-float p0, v3

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v3, v3

    mul-double v3, v3, p2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    float-to-double p2, p2

    mul-double p2, p2, v1

    add-double/2addr v3, p2

    double-to-float p2, v3

    invoke-virtual {v0, p0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 567
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, p1}, Landroid/graphics/PointF;->offset(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public static rotateRect(Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    .line 826
    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 827
    const/4 v3, 0x2

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 828
    const/4 v3, 0x3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 829
    const/4 v3, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0

    const/4 v1, 0x3
.end method

.method public static sampleSegment(FFFF[F)V
    .locals 4
    .param p4    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x2

    .line 927
    const/4 v3, 0x3

    array-length v0, p4

    int-to-float v0, v0

    cmpl-float v1, p0, p2

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    .line 928
    const/4 v3, 0x1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x0 must be < x1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 929
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    array-length v1, p4

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dest length must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v3, 0x1

    sub-float v1, p0, p2

    .line 930
    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    sub-float/2addr p3, p1

    sub-float/2addr p2, p0

    div-float/2addr p3, p2

    mul-float p2, p3, p0

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    .line 933
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    array-length v0, p4

    if-ge p2, v0, :cond_2

    const/4 v3, 0x1

    int-to-float v0, p2

    mul-float v0, v0, v1

    add-float/2addr v0, p0

    mul-float v0, v0, p3

    add-float/2addr v0, p1

    .line 934
    const/4 v3, 0x2

    aput v0, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    const/4 v3, 0x3

    :cond_2
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public static saveDebugBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    .line 588
    const/4 v3, 0x3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    const/4 v3, 0x0

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 592
    const/4 v3, 0x1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x2

    :catch_0
    move-exception p0

    .line 594
    const/4 v3, 0x3

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public static saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V
    .locals 3

    const/4 v2, 0x2

    .line 198
    const/4 v2, 0x3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x1

    const/16 v1, 0x64

    if-ne p2, p1, :cond_0

    const/4 v2, 0x0

    .line 200
    const/4 v2, 0x1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    const/4 v2, 0x0

    .line 203
    const/4 v2, 0x1

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v2, 0x1

    :catch_0
    move-exception p0

    .line 211
    const/4 v2, 0x2

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    const/4 v2, 0x3

    :catch_1
    move-exception p0

    .line 208
    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public static shuffleJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 466
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 468
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 470
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 471
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 472
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object p0

    const/4 v1, 0x1
.end method

.method public static solveQuadratic(FFF)[F
    .locals 11

    mul-float v0, p1, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v1, v1, p0

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    cmpl-float p0, p1, v1

    if-eqz p0, :cond_0

    .line 879
    new-array p0, v3, [F

    neg-float p2, p2

    div-float/2addr p2, p1

    aput p2, p0, v4

    goto :goto_0

    :cond_0
    new-array p0, v4, [F

    :goto_0
    return-object p0

    :cond_1
    cmpg-float p2, v0, v1

    if-gez p2, :cond_2

    .line 880
    new-array p0, v4, [F

    return-object p0

    :cond_2
    cmpl-float p2, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-nez p2, :cond_3

    .line 881
    new-array p2, v3, [F

    neg-float p1, p1

    mul-float p0, p0, v1

    div-float/2addr p1, p0

    aput p1, p2, v4

    return-object p2

    :cond_3
    const/4 p2, 0x2

    .line 882
    new-array p2, p2, [F

    neg-float p1, p1

    float-to-double v5, p1

    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    sub-double v9, v5, v9

    mul-float p0, p0, v1

    float-to-double p0, p0

    div-double/2addr v9, p0

    double-to-float v0, v9

    aput v0, p2, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v5, v0

    div-double/2addr v5, p0

    double-to-float p0, v5

    aput p0, p2, v3

    return-object p2

    const/4 v1, 0x3
.end method

.method public static spToPx(I)F
    .locals 3

    const/4 v2, 0x1

    int-to-float p0, p0

    .line 264
    const/4 v2, 0x2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    const/4 v0, 0x2
.end method

.method public static strToInt(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 61
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1

    const/4 v0, 0x0
.end method

.method public static stringToBool(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    .line 765
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    const/4 v0, 0x0
.end method

.method public static stringToDirection(Ljava/lang/String;)Landroid/graphics/Path$Direction;
    .locals 1

    const/4 v0, 0x2

    .line 770
    const/4 v0, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_0

    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x2

    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_0
    const/4 v0, 0x3

    return-object p0

    const/4 v0, 0x0
.end method

.method public static stripAlpha(I)I
    .locals 4

    const/4 v3, 0x1

    .line 134
    const/4 v3, 0x2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    const/4 v1, 0x3
.end method

.method public static suffixifyFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    .line 706
    const/4 v2, 0x1

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    const/4 v2, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileNameNoExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    const/4 v0, 0x2
.end method

.method public static touchedRectSide(Landroid/graphics/PointF;Landroid/graphics/RectF;I)I
    .locals 4

    const/4 v3, 0x2

    .line 618
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 619
    const/4 v3, 0x0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    mul-int/lit8 p1, p2, -0x2

    int-to-float p1, p1

    .line 620
    const/4 v3, 0x1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    const/4 p1, 0x2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 621
    const/4 v3, 0x2

    invoke-virtual {v1, p2, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 622
    const/4 v3, 0x3

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p2, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    const/4 p1, -0x1

    goto :goto_0

    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_1

    const/4 v3, 0x3

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_1

    const/4 v3, 0x0

    const/4 p1, 0x0

    goto :goto_0

    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget p2, p0, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_2

    const/4 v3, 0x3

    iget p2, p0, Landroid/graphics/PointF;->y:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_2

    const/4 v3, 0x0

    const/4 p1, 0x1

    goto :goto_0

    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    cmpl-float p2, p2, v2

    if-ltz p2, :cond_3

    const/4 v3, 0x3

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    const/4 v3, 0x1

    :cond_3
    const/4 v3, 0x2

    iget p1, p0, Landroid/graphics/PointF;->y:F

    iget p2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    const/4 v3, 0x3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_4

    const/4 v3, 0x0

    const/4 p1, 0x3

    goto :goto_0

    const/4 v3, 0x1

    :cond_4
    const/4 v3, 0x2

    const/4 p1, -0x2

    :goto_0
    const/4 v3, 0x3

    return p1

    const/4 v1, 0x3
.end method

.method public static translatePointAlongVector(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 6

    const/4 v5, 0x1

    .line 532
    const/4 v5, 0x2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 533
    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 535
    const/4 v5, 0x0

    iget p2, v0, Landroid/graphics/PointF;->x:F

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    .line 536
    const/4 v5, 0x2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    iget p3, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr p2, p3

    float-to-double v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float p3, p2, p2

    add-float/2addr p3, p1

    float-to-double v3, p3

    .line 537
    const/4 v5, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float p3, v1

    mul-float p2, p2, p3

    .line 538
    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 540
    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    iget p2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float p2, p2, p3

    iget p3, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p3}, Ljava/lang/Math;->signum(F)F

    move-result p3

    mul-float p3, p3, p1

    invoke-virtual {p0, p2, p3}, Landroid/graphics/PointF;->offset(FF)V

    return-void

    const/4 v1, 0x1
.end method

.method public static unionRects(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v4, 0x2

    .line 739
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    const/4 v4, 0x2

    .line 740
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const/4 v4, 0x2

    .line 741
    const/4 v4, 0x3

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void

    .line 744
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    :cond_2
    const/4 v4, 0x2

    :goto_0
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public static unzipFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 686
    const/4 v6, 0x2

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x800

    .line 689
    const/4 v6, 0x3

    new-array p0, p0, [B

    .line 690
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    const/4 v6, 0x2

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v6, 0x3

    .line 691
    const/4 v6, 0x0

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x2

    move-object v4, v3

    goto :goto_1

    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 693
    const/4 v6, 0x1

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    const/4 v6, 0x1

    .line 694
    const/4 v6, 0x2

    :cond_2
    const/4 v6, 0x3

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    const/4 v6, 0x1

    .line 695
    const/4 v6, 0x2

    :cond_3
    const/4 v6, 0x3

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 696
    const/4 v6, 0x0

    :goto_2
    const/4 v6, 0x1

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v6, 0x2

    .line 697
    const/4 v6, 0x3

    invoke-virtual {v2, p0, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    const/4 v6, 0x0

    :cond_4
    const/4 v6, 0x1

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0

    const/4 v0, 0x2
.end method

.method public static zipFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v0, 0x0

    .line 631
    const/4 v8, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    const/4 v8, 0x1

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 634
    const/4 v8, 0x2

    new-instance p1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 635
    const/4 v8, 0x3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 636
    const/4 v8, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x1

    if-ge v2, v1, :cond_2

    const/4 v8, 0x2

    aget-object v3, p0, v2

    .line 637
    const/4 v8, 0x3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    .line 638
    const/4 v8, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    goto :goto_2

    const/4 v8, 0x2

    :cond_0
    const/4 v8, 0x3

    const/16 v4, 0x800

    .line 641
    const/4 v8, 0x0

    new-array v5, v4, [B

    .line 642
    const/4 v8, 0x1

    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 643
    const/4 v8, 0x2

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 644
    const/4 v8, 0x3

    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 645
    const/4 v8, 0x0

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 647
    const/4 v8, 0x1

    :goto_1
    const/4 v8, 0x2

    invoke-virtual {v7, v5, v0, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    const/4 v8, 0x3

    .line 648
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v0, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    const/4 v8, 0x1

    :cond_1
    const/4 v8, 0x2

    :goto_2
    const/4 v8, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v8, 0x0

    .line 652
    const/4 v8, 0x1

    :cond_2
    const/4 v8, 0x2

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 654
    const/4 v8, 0x3

    invoke-static {p0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    return v0

    const/4 v0, 0x0
.end method

.method private static zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 664
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 665
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    invoke-static {p0, v3, p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->zipSubFolder(Ljava/util/zip/ZipOutputStream;Ljava/io/File;I)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x800

    .line 668
    new-array v5, v4, [B

    .line 669
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-virtual {v3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 671
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 672
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v7, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 673
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-direct {v7, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 676
    :goto_1
    invoke-virtual {v3, v5, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 677
    invoke-virtual {p0, v5, v1, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_1

    .line 679
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    const/4 v0, 0x0
.end method
