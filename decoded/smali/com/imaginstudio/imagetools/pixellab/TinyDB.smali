.class public Lcom/imaginstudio/imagetools/pixellab/TinyDB;
.super Ljava/lang/Object;
.source "TinyDB.java"


# static fields
.field public static lastImagePath:Ljava/lang/String; = ""


# instance fields
.field DEFAULT_APP_IMAGEDATA_DIRECTORY:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mFolder:Ljava/io/File;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mFolder:Ljava/io/File;

    .line 45
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mContext:Landroid/content/Context;

    .line 46
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private saveBitmapPNG(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v4, 0x0

    if-nez p2, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_8

    const/4 v4, 0x2

    .line 102
    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    .line 105
    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v4, 0x0

    return v0

    .line 110
    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x3

    :catch_0
    move-exception p1

    .line 113
    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 118
    const/4 v4, 0x2

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 119
    const/4 v4, 0x3

    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    const/4 v4, 0x0

    :catch_1
    move-exception p2

    goto :goto_1

    const/4 v4, 0x1

    :catch_2
    move-exception p2

    move-object v3, v2

    .line 121
    const/4 v4, 0x2

    :goto_1
    const/4 v4, 0x3

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_2
    const/4 v4, 0x0

    const/4 v1, 0x1

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    .line 126
    const/4 v4, 0x2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 127
    const/4 v4, 0x3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x1

    goto :goto_6

    const/4 v4, 0x0

    :catchall_0
    move-exception p1

    goto :goto_4

    const/4 v4, 0x1

    :catch_3
    move-exception v2

    .line 133
    const/4 v4, 0x2

    :try_start_4
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    .line 138
    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    const/4 v4, 0x1

    :catch_4
    move-exception v2

    .line 141
    const/4 v4, 0x2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    const/4 v4, 0x3

    :goto_3
    const/4 v4, 0x0

    const/4 v2, 0x0

    goto :goto_7

    const/4 v4, 0x1

    :goto_4
    const/4 v4, 0x2

    if-eqz v3, :cond_3

    const/4 v4, 0x3

    .line 138
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    const/4 v4, 0x1

    :catch_5
    move-exception p2

    .line 141
    const/4 v4, 0x2

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    .line 142
    const/4 v4, 0x3

    :cond_3
    const/4 v4, 0x0

    :goto_5
    const/4 v4, 0x1

    throw p1

    :cond_4
    const/4 v4, 0x2

    const/4 v2, 0x0

    :goto_6
    const/4 v4, 0x3

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    .line 138
    const/4 v4, 0x1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    const/4 v4, 0x2

    :catch_6
    move-exception v3

    .line 141
    const/4 v4, 0x3

    invoke-static {v3}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_5
    const/4 v4, 0x0

    :goto_7
    const/4 v4, 0x1

    if-eqz p1, :cond_6

    const/4 v4, 0x2

    if-eqz p2, :cond_6

    const/4 v4, 0x3

    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v0, 0x1

    :cond_6
    const/4 v4, 0x1

    return v0

    :cond_7
    const/4 v4, 0x2

    :goto_8
    const/4 v4, 0x3

    return v0

    const/4 v0, 0x0
.end method

.method private setupFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    .line 83
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 84
    const/4 v3, 0x3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->DEFAULT_APP_IMAGEDATA_DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mFolder:Ljava/io/File;

    .line 85
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    .line 86
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    const-string v0, "While creatingsave path"

    const-string v1, "Default Save Path Creation Error"

    .line 87
    const/4 v3, 0x0

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->mFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    const/4 v1, 0x3
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    .line 334
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    const/4 v1, 0x2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 336
    const/4 v1, 0x3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public deleteImage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v1, 0x1

    .line 328
    const/4 v1, 0x2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    const/4 v1, 0x1
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v1, 0x1

    .line 340
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    .line 306
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v1, 0x3

    .line 309
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    const/4 v1, 0x1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3

    const/4 v2, 0x2

    .line 162
    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0

    const/4 v0, 0x2
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 3

    const/4 v2, 0x2

    .line 318
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 52
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v0, 0x3

    :catch_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    return-object p1

    const/4 v0, 0x0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x2

    .line 150
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method public getList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    .line 216
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    .line 217
    const/4 v2, 0x3

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u201a\u2017\u201a"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 218
    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    .line 219
    const/4 v2, 0x1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    const/4 v0, 0x2
.end method

.method public getListBoolean(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x3

    .line 287
    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 288
    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    const/4 v3, 0x3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    .line 290
    const/4 v3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 291
    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 293
    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    return-object v0

    const/4 v1, 0x3
.end method

.method public getListDouble(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    .line 262
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    .line 263
    const/4 v4, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u00e2\u20ac\u0161\u00e2\u20ac\u2014\u00e2\u20ac\u0161"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 264
    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    .line 265
    const/4 v4, 0x2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    const/4 v4, 0x3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 267
    const/4 v4, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v4, 0x2

    .line 268
    const/4 v4, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    return-object p1

    const/4 v0, 0x0
.end method

.method public getListInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x3

    .line 236
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    .line 237
    const/4 v3, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u201a\u2017\u201a"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 238
    const/4 v3, 0x2

    new-instance v0, Ljava/util/ArrayList;

    .line 239
    const/4 v3, 0x3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    const/4 v3, 0x0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 241
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v3, 0x3

    .line 242
    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    return-object p1

    const/4 v1, 0x3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4

    const/4 v3, 0x0

    .line 154
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    const/4 v1, 0x3
.end method

.method public getSavedImagePath()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    .line 65
    const/4 v1, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->lastImagePath:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    .line 158
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    const/4 v0, 0x2
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x1

    .line 300
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    const/4 v1, 0x3

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x2

    .line 186
    const/4 v0, 0x3

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const/4 v0, 0x0
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2

    const/4 v1, 0x1

    .line 312
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 313
    const/4 v1, 0x3

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 314
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public putImagePNG(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 71
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->DEFAULT_APP_IMAGEDATA_DIRECTORY:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->setupFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->saveBitmapPNG(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 74
    const/4 v0, 0x2

    sput-object p1, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->lastImagePath:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x0
.end method

.method public putImagePNGwithfullPath(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->saveBitmapPNG(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    const/4 v0, 0x0
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x3

    .line 174
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 175
    const/4 v1, 0x1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    const/4 v1, 0x2

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public putList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 196
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x3

    .line 199
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const-string v1, "\u201a\u2017\u201a"

    .line 204
    const/4 v2, 0x2

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p3, :cond_0

    const/4 v2, 0x3

    .line 206
    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    const/4 v2, 0x1

    .line 208
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public putListBoolean(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x2

    .line 275
    const/4 v3, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    const/4 v3, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 277
    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v3, 0x0

    const-string v1, "true"

    .line 278
    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    const-string v1, "false"

    .line 280
    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x1

    .line 283
    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void

    const/4 v1, 0x3
.end method

.method public putListDouble(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    .line 249
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    const/4 v2, 0x3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Double;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Double;

    const-string v1, "\u00e2\u20ac\u0161\u00e2\u20ac\u2014\u00e2\u20ac\u0161"

    .line 254
    const/4 v2, 0x0

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    const/4 v2, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v0, 0x2
.end method

.method public putListInt(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    .line 223
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Integer;

    const-string v1, "\u201a\u2017\u201a"

    .line 228
    const/4 v2, 0x2

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const/4 v2, 0x3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v0, 0x2
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2

    const/4 v1, 0x1

    .line 180
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    const/4 v1, 0x3

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 182
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    .line 191
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const/4 v1, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    const/4 v1, 0x3

    .line 344
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    const/4 v1, 0x1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    .line 322
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 323
    const/4 v1, 0x0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    const/4 v1, 0x1

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    const/4 v1, 0x1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    const/4 v1, 0x3

    .line 348
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    const/4 v1, 0x1
.end method
