.class public Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
.super Ljava/lang/Object;
.source "GradientMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GradientMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GradientFill"
.end annotation


# static fields
.field public static final GRADIENT_TYPE_LIN_HOR:I = 0x0

.field public static final GRADIENT_TYPE_LIN_VER:I = 0x1

.field public static final GRADIENT_TYPE_RADIAL:I = 0x2

.field public static final GRADIENT_V2_TYPE_LIN:I = 0x3

.field public static final GRADIENT_V2_TYPE_RAD:I = 0x4


# instance fields
.field private endColor:I

.field private gradV2_colors:[I

.field private gradV2_direction:[I

.field private gradV2_positions:[F

.field private gradV2_type:I

.field private startColor:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v0, 0x2

    .line 131
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 132
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    const v0, -0x333334

    .line 140
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    const v0, -0xbbbbbc

    .line 141
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    return-void

    nop

    :array_0
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        -0x333334
        -0xbbbbbc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v0, 0x2

    .line 131
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 132
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    const/4 v1, 0x1

    .line 139
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    const v2, -0x333334

    .line 140
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    const v2, -0xbbbbbc

    .line 141
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    .line 336
    new-array v2, v0, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    .line 337
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p1, v0, v2

    aput p2, v0, v1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        -0x333334
        -0xbbbbbc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v0, 0x2

    .line 131
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 132
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    const v0, -0x333334

    .line 140
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    const v0, -0xbbbbbc

    .line 141
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    .line 330
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    .line 331
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    .line 332
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToV2(III)V

    return-void

    :array_0
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        -0x333334
        -0xbbbbbc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I[I[I[F)V
    .locals 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v0, 0x4

    .line 130
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v0, 0x2

    .line 131
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 132
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    const v0, -0x333334

    .line 140
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    const v0, -0xbbbbbc

    .line 141
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    .line 323
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    .line 324
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    .line 325
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 326
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        -0x333334
        -0xbbbbbc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 129
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v1, 0x4

    .line 130
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v2, 0x2

    .line 131
    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 132
    new-array v3, v2, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    const/4 v3, 0x1

    .line 139
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    const v4, -0x333334

    .line 140
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    const v4, -0xbbbbbc

    .line 141
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v4, ";"

    .line 254
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 255
    aget-object v6, v4, v5

    :try_start_0
    const-string v7, "v2"

    .line 257
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 258
    aget-object p1, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 259
    aget-object v2, v4, v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->stringToInt([Ljava/lang/String;)[I

    move-result-object v2

    .line 260
    aget-object v0, v4, v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->stringToInt([Ljava/lang/String;)[I

    move-result-object v0

    .line 261
    aget-object v1, v4, v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->stringToFloat([Ljava/lang/String;)[F

    move-result-object v1

    .line 262
    invoke-virtual {p0, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->setV2Direction(I[I)V

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->setV2Colors([I[F)V

    goto :goto_0

    :cond_1
    const-string v0, ";"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    const-string v0, ";"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    const-string v0, ";"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x32
        0x0
        0x32
        0x64
    .end array-data

    :array_1
    .array-data 4
        -0x333334
        -0xbbbbbc
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private appendArray([FLjava/lang/StringBuilder;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 299
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    .line 300
    const/4 v2, 0x1

    aget v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 301
    const/4 v2, 0x2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x3

    const-string v1, "/"

    .line 302
    const/4 v2, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method private appendArray([ILjava/lang/StringBuilder;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 291
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    .line 292
    const/4 v2, 0x1

    aget v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    const/4 v2, 0x2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x3

    const-string v1, "/"

    .line 294
    const/4 v2, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method private convertToV2(III)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x2

    .line 347
    const/4 v4, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    .line 348
    const/4 v4, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    const/4 p3, 0x3

    if-ne p1, v0, :cond_0

    const/4 v4, 0x0

    const/4 v1, 0x4

    goto :goto_0

    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    const/4 v1, 0x3

    .line 349
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/16 v1, 0x64

    const/16 v3, 0x32

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    const/4 v4, 0x1

    .line 352
    const/4 v4, 0x2

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v3, p1, v2

    .line 353
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v3, p1, p2

    .line 354
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v1, p1, v0

    .line 355
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v1, p1, p3

    goto :goto_1

    const/4 v4, 0x2

    .line 358
    const/4 v4, 0x3

    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v3, p1, v2

    .line 359
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v2, p1, p2

    .line 360
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v3, p1, v0

    .line 361
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v1, p1, p3

    goto :goto_1

    const/4 v4, 0x3

    .line 364
    const/4 v4, 0x0

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v2, p1, v2

    .line 365
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v3, p1, p2

    .line 366
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v1, p1, v0

    .line 367
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    aput v3, p1, p3

    :goto_1
    const/4 v4, 0x0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    const/4 v0, 0x0
.end method


# virtual methods
.method public convertToStringV2()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    .line 240
    const/4 v2, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v2;"

    .line 241
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_type()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 243
    const/4 v2, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_direction()[I

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->appendArray([ILjava/lang/StringBuilder;)V

    const-string v1, ";"

    .line 245
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_colors()[I

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->appendArray([ILjava/lang/StringBuilder;)V

    const-string v1, ";"

    .line 247
    const/4 v2, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getGradV2_positions()[F

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->appendArray([FLjava/lang/StringBuilder;)V

    .line 249
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method public copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 6

    const/4 v5, 0x2

    .line 344
    const/4 v5, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(I[I[I[F)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public getColorAtTopLeft()I
    .locals 10

    const/4 v9, 0x1

    .line 308
    const/4 v9, 0x2

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    const/4 v9, 0x3

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    const/4 v9, 0x0

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 311
    const/4 v9, 0x1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 312
    const/4 v9, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v9, 0x0

    :catch_0
    move-exception v1

    .line 317
    const/4 v9, 0x1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/high16 v1, -0x1000000

    .line 319
    const/4 v9, 0x2

    :goto_0
    const/4 v9, 0x3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return v1

    const/4 v1, 0x1
.end method

.method public getEndColor()I
    .locals 2

    const/4 v1, 0x1

    .line 164
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    return v0

    const/4 v1, 0x1
.end method

.method public getGradV2_colors()[I
    .locals 2

    const/4 v1, 0x0

    .line 172
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    return-object v0

    const/4 v1, 0x1
.end method

.method public getGradV2_direction()[I
    .locals 2

    const/4 v1, 0x3

    .line 144
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    return-object v0

    const/4 v1, 0x1
.end method

.method public getGradV2_positions()[F
    .locals 2

    const/4 v1, 0x2

    .line 168
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    return-object v0

    const/4 v1, 0x1
.end method

.method public getGradV2_type()I
    .locals 2

    const/4 v1, 0x1

    .line 176
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    return v0

    const/4 v1, 0x1
.end method

.method public getShader(FFFF)Landroid/graphics/Shader;
    .locals 10

    .line 203
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sub-float p3, p1, p3

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 204
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float p3, p2, p4

    float-to-double p3, p3

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    add-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    const p4, 0x3dcccccd    # 0.1f

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 205
    new-instance p3, Landroid/graphics/RadialGradient;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p3

    .line 207
    :cond_0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 208
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    const/4 v0, 0x2
.end method

.method public getShader(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Shader;
    .locals 3

    const/4 v2, 0x1

    .line 213
    const/4 v2, 0x2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 214
    const/4 v2, 0x3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 215
    const/4 v2, 0x0

    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 216
    const/4 v2, 0x1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 217
    const/4 v2, 0x2

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(FFFF)Landroid/graphics/Shader;

    move-result-object p1

    return-object p1

    const/4 v0, 0x2
.end method

.method public getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;
    .locals 7

    const/4 v6, 0x0

    .line 192
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 193
    const/4 v6, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 194
    const/4 v6, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 195
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v4, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v4, p1

    .line 196
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(FFFF)Landroid/graphics/Shader;

    move-result-object p1

    return-object p1

    const/4 v0, 0x2
.end method

.method public getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;
    .locals 7

    const/4 v6, 0x3

    .line 220
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v0, v0, v2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    .line 221
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v2, v2, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    .line 222
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v3, v3, v4

    iget v4, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    .line 223
    const/4 v6, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v4, v4, v1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, p1

    .line 224
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(FFFF)Landroid/graphics/Shader;

    move-result-object p1

    return-object p1

    const/4 v0, 0x2
.end method

.method public getStartColor()I
    .locals 2

    const/4 v1, 0x2

    .line 156
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    return v0

    const/4 v1, 0x1
.end method

.method public getType()I
    .locals 2

    const/4 v1, 0x1

    .line 148
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    return v0

    const/4 v1, 0x1
.end method

.method public hasAlpha()Z
    .locals 7

    const/4 v6, 0x0

    .line 373
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x2

    if-ge v3, v1, :cond_1

    const/4 v6, 0x3

    aget v4, v0, v3

    .line 374
    const/4 v6, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    const/4 v6, 0x1

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v6, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    return v2

    const/4 v0, 0x2
.end method

.method public setEndColor(I)V
    .locals 1

    const/4 v0, 0x2

    .line 180
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->endColor:I

    return-void

    const/4 v0, 0x0
.end method

.method public setStartColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->startColor:I

    return-void

    const/4 v0, 0x0
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->type:I

    return-void

    const/4 v0, 0x0
.end method

.method public setV2Colors([I[F)V
    .locals 1

    const/4 v0, 0x3

    .line 187
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_colors:[I

    .line 188
    const/4 v0, 0x1

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_positions:[F

    return-void

    const/4 v0, 0x0
.end method

.method public setV2Direction(I[I)V
    .locals 1

    const/4 v0, 0x3

    .line 183
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_type:I

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->gradV2_direction:[I

    return-void

    const/4 v0, 0x0
.end method

.method stringToFloat([Ljava/lang/String;)[F
    .locals 4

    const/4 v3, 0x3

    .line 284
    const/4 v3, 0x0

    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 285
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    array-length v2, p1

    if-ge v1, v2, :cond_0

    const/4 v3, 0x3

    .line 286
    const/4 v3, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    return-object v0

    const/4 v1, 0x3
.end method

.method stringToInt([Ljava/lang/String;)[I
    .locals 4

    const/4 v3, 0x0

    .line 277
    const/4 v3, 0x1

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 278
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    array-length v2, p1

    if-ge v1, v2, :cond_0

    const/4 v3, 0x0

    .line 279
    const/4 v3, 0x1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    return-object v0

    const/4 v1, 0x3
.end method
