.class public Lcom/imaginstudio/imagetools/pixellab/appDefault;
.super Ljava/lang/Object;
.source "appDefault.java"


# static fields
.field public static DIM_PRESET_DEFAULT:I = 0x500

.field public static DIM_PRESET_HIGH:I = 0x780

.field public static DIM_PRESET_LOW:I = 0x1e0

.field public static DIM_PRESET_ULTRA:I = 0xcc0

.field public static DIM_PRESET_VERY_HIGH:I = 0xa00

.field static HOR:I = 0x0

.field static RAD:I = 0x2

.field public static final TAG:Ljava/lang/String; = "mydebug"

.field static VER:I = 0x1

.field public static final analyticsEnabled:Z = true

.field public static blueHighlightColor:I = 0x0

.field public static darkBlue:I = 0x0

.field public static defaultColors:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static defaultGradients:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;",
            ">;"
        }
    .end annotation
.end field

.field public static isPremium:Z = false

.field public static final mainFontDir:Ljava/lang/String;

.field public static maxTextSizePx:I = 0x0

.field public static minTextSizePx:I = 0x2

.field public static final newShapeSizeDp:I = 0x3c

.field static packageName_dropbox:Ljava/lang/String; = "com.dropbox.android"

.field static packageName_facebook:Ljava/lang/String; = "com.facebook.katana"

.field static packageName_gplus:Ljava/lang/String; = "com.google.android.apps.plus"

.field static packageName_instagram:Ljava/lang/String; = "com.instagram.android"

.field static packageName_tumblr:Ljava/lang/String; = "com.tumblr"

.field static packageName_twitter:Ljava/lang/String; = "com.twitter.android"

.field static packageName_whatsapp:Ljava/lang/String; = "com.whatsapp"

.field public static panelBgColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/fonts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->mainFontDir:Ljava/lang/String;

    const-string v0, "#0079ff"

    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->blueHighlightColor:I

    const-string v0, "#f6f6f6"

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->panelBgColor:I

    const-string v0, "#8a96a7"

    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->darkBlue:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "#000000"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#ffffff"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "#ffff0000"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "#B71C1C"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "#FF5721"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "#E51954"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "#01B276"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "#F8C701"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "#9c27b0"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "#673ab7"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "#880e4f"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "#2196f3"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "#bbdefb"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "#0d47a1"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "#03a9f4"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "#00bcd4"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "#009688"

    const/16 v18, 0x10

    aput-object v2, v1, v18

    const-string v2, "#4caf50"

    const/16 v18, 0x11

    aput-object v2, v1, v18

    const-string v2, "#c8e6c9"

    const/16 v18, 0x12

    aput-object v2, v1, v18

    const-string v2, "#1b5e20"

    const/16 v18, 0x13

    aput-object v2, v1, v18

    const-string v2, "#8bc34a"

    const/16 v18, 0x14

    aput-object v2, v1, v18

    const-string v2, "#cddc39"

    const/16 v18, 0x15

    aput-object v2, v1, v18

    const-string v2, "#ffeb3b"

    const/16 v18, 0x16

    aput-object v2, v1, v18

    const-string v2, "#fff9c4"

    const/16 v18, 0x17

    aput-object v2, v1, v18

    const-string v2, "#f57f17"

    const/16 v18, 0x18

    aput-object v2, v1, v18

    const-string v2, "#ffc107"

    const/16 v18, 0x19

    aput-object v2, v1, v18

    const-string v2, "#ff9800"

    const/16 v18, 0x1a

    aput-object v2, v1, v18

    const-string v2, "#ff5722"

    const/16 v18, 0x1b

    aput-object v2, v1, v18

    const-string v2, "#795548"

    const/16 v18, 0x1c

    aput-object v2, v1, v18

    const-string v2, "#9e9e9e"

    const/16 v18, 0x1d

    aput-object v2, v1, v18

    const-string v2, "#f5f5f5"

    const/16 v18, 0x1e

    aput-object v2, v1, v18

    const-string v2, "#e0e0e0"

    const/16 v18, 0x1f

    aput-object v2, v1, v18

    const-string v2, "#bdbdbd"

    const/16 v18, 0x20

    aput-object v2, v1, v18

    const-string v2, "#757575"

    const/16 v18, 0x21

    aput-object v2, v1, v18

    const-string v2, "#212121"

    const/16 v18, 0x22

    aput-object v2, v1, v18

    const-string v2, "#607d8b"

    const/16 v18, 0x23

    aput-object v2, v1, v18

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->defaultColors:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x13

    new-array v1, v1, [Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v15, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const/high16 v14, -0x1000000

    const/4 v13, -0x1

    invoke-direct {v2, v15, v14, v13}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    const/high16 v13, -0x1000000

    const/4 v14, -0x1

    invoke-direct {v2, v3, v13, v14}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#99daff"

    .line 37
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v13, "#008080"

    invoke-static {v13}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v13

    invoke-direct {v2, v3, v4, v13}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#aec320"

    .line 38
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#80940f"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#d4a883"

    .line 39
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#9c8fa1"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v7

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    const-string v4, "#239eca"

    .line 40
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#036082"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v8

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->HOR:I

    const-string v4, "#9e9e9e"

    .line 41
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#2196f3"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v9

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#b3c9bc"

    .line 42
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#4b696b"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v10

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#ffc107"

    .line 43
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#00bcd4"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v11

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#ffffff"

    .line 44
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#b6b6b6"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v12

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#2f93c7"

    .line 45
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#1f5e8a"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->VER:I

    const-string v4, "#fffde6"

    .line 46
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#9a6696"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#800080"

    .line 47
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#000000"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#f0f0f0"

    .line 48
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#cfcfcf"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v16

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#b5bb7b"

    .line 49
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#3a6367"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    aput-object v2, v1, v17

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#fba939"

    .line 50
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#ba2b60"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#d4a883"

    .line 51
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#9c8fa1"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#239eca"

    .line 52
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#036082"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    sget v3, Lcom/imaginstudio/imagetools/pixellab/appDefault;->RAD:I

    const-string v4, "#b3c9bc"

    .line 53
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#4b696b"

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/appDefault;->fromHex(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->defaultGradients:Ljava/util/ArrayList;

    const/16 v0, 0x96

    .line 56
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->spToPx(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/appDefault;->maxTextSizePx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromHex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 59
    const/4 v0, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    const/4 v0, 0x0
.end method
