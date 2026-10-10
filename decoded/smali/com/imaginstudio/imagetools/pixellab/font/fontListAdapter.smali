.class Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "fontListAdapter.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;,
        Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/imaginstudio/imagetools/pixellab/font/fontItem;",
        ">;",
        "Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private adapter_section:I

.field changeListener:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;

.field hasActualItems:Z

.field private mAdapterCallback:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    .line 61
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->mAdapterCallback:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    .line 62
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->changeListener:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$OnContentChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->removeSection(Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)I
    .locals 1

    const/4 v0, 0x3

    .line 42
    const/4 v0, 0x0

    iget p0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    return p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;)Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;
    .locals 1

    const/4 v0, 0x2

    .line 42
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->mAdapterCallback:Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$AdapterCallback;

    return-object p0

    const/4 v0, 0x0
.end method

.method static getDirsImportFonts(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    .line 191
    const/4 v3, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v1, "userFontDirs"

    .line 192
    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    .line 194
    const/4 v3, 0x2

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->putDefaultCustomFontDirs(Landroid/content/Context;)V

    const-string p0, "userFontDirs"

    .line 195
    const/4 v3, 0x3

    invoke-virtual {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    const/4 v3, 0x0

    return-object v1

    const/4 v1, 0x3
.end method

.method static putDefaultCustomFontDirs(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    .line 183
    const/4 v3, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    .line 184
    const/4 v3, 0x0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v3, 0x1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v3, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/appDefault;->mainFontDir:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "userFontDirs"

    const/4 v2, 0x1

    .line 187
    const/4 v3, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putList(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void

    const/4 v1, 0x3
.end method

.method private removeSection(Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V
    .locals 5

    const/4 v4, 0x1

    .line 166
    const/4 v4, 0x2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0060

    .line 168
    const/4 v4, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 169
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V

    const p1, 0x1040013

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 179
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    .line 52
    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x2

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    return-void

    const/4 v1, 0x1
.end method

.method generateContentFor(I)V
    .locals 28

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 202
    iput v4, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getDirsImportFonts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 205
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 210
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    iput v3, v12, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    .line 212
    iput v3, v12, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    if-eqz v5, :cond_0

    .line 215
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v10, v5, v7

    .line 216
    invoke-static {v10}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 217
    invoke-static {v10}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getFileNameNoExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    .line 218
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    const-string v13, "ttf"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "otf"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 219
    :cond_2
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v14, 0x0

    const/16 v16, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move-object v13, v11

    move-object v10, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    iput v3, v11, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    .line 221
    iput v8, v11, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    add-int/lit8 v8, v8, 0x1

    if-nez v9, :cond_3

    .line 224
    invoke-virtual {v1, v12}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    const/4 v9, 0x1

    .line 227
    :cond_3
    invoke-virtual {v1, v11}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    .line 228
    iput-boolean v4, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const v6, 0x7f0c014d

    const v7, 0x7f0c014c

    if-nez v2, :cond_b

    .line 236
    iput v3, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    :try_start_0
    const-string v8, "fonts/list"

    .line 239
    invoke-virtual {v2, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const/4 v9, 0x0

    .line 241
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 243
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    const-string v9, ";"

    .line 244
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    if-eqz v9, :cond_13

    .line 251
    array-length v8, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v10, v8, :cond_13

    aget-object v15, v9, v10

    .line 252
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 253
    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 254
    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v5, v13

    move-object v13, v4

    move-object/from16 v20, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    invoke-direct/range {v13 .. v18}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v13, v11, 0x1

    .line 255
    iput v11, v4, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    .line 256
    iput v12, v4, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    .line 257
    invoke-virtual {v1, v4}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    .line 258
    array-length v4, v5

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v4, :cond_a

    aget-object v14, v5, v11

    const-string v15, "."

    .line 259
    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v3, "{"

    .line 260
    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "{a}-"

    .line 261
    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_7
    const-string v3, "{t}-"

    .line 264
    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    :cond_8
    const-string v3, "{u}-"

    .line 267
    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const v15, 0x7f0c014e

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    goto :goto_5

    :cond_9
    :goto_4
    move-object/from16 v24, v15

    .line 271
    :goto_5
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/16 v22, 0x0

    const/16 v23, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v20

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v26}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 272
    iput v12, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v7, v13, 0x1

    .line 273
    iput v13, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    .line 274
    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 275
    iput-boolean v3, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v6

    move v13, v7

    const/4 v3, 0x0

    const v6, 0x7f0c014d

    const v7, 0x7f0c014c

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    move v11, v13

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v6, 0x7f0c014d

    const v7, 0x7f0c014c

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 281
    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    :cond_b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 288
    iput v3, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->adapter_section:I

    .line 291
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;-><init>(Landroid/content/Context;)V

    const-string v3, "last_fonts"

    .line 292
    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "last_userFonts"

    .line 293
    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 294
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 295
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    const-string v5, "/"

    .line 296
    invoke-virtual {v10, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const-string v6, "."

    invoke-virtual {v10, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "{"

    .line 297
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "{a}-"

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v12, 0x7f0c014c

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    const v13, 0x7f0c014d

    :goto_7
    const v14, 0x7f0c014e

    goto :goto_9

    :cond_c
    const v12, 0x7f0c014c

    const-string v6, "{t}-"

    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v13, 0x7f0c014d

    invoke-virtual {v5, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_7

    :cond_d
    const v13, 0x7f0c014d

    const-string v6, "{u}-"

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v14, 0x7f0c014e

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_e
    const v12, 0x7f0c014c

    const v13, 0x7f0c014d

    :cond_f
    const v14, 0x7f0c014e

    :goto_8
    move-object v9, v5

    .line 309
    :goto_9
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x0

    .line 310
    iput v6, v5, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v7, v4, 0x1

    .line 311
    iput v4, v5, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    .line 312
    invoke-virtual {v1, v5}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    const/4 v4, 0x1

    .line 313
    iput-boolean v4, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    move v4, v7

    goto/16 :goto_6

    :cond_10
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 319
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 320
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f0c0177

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v5, v4, 0x1

    .line 321
    iput v4, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    const/4 v4, 0x1

    .line 322
    iput v4, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    .line 323
    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    move v4, v5

    .line 325
    :cond_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    const-string v3, "/"

    .line 326
    invoke-virtual {v9, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const-string v5, "."

    invoke-virtual {v9, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 327
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    .line 328
    iput v5, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->sectionPosition:I

    add-int/lit8 v6, v4, 0x1

    .line 329
    iput v4, v3, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->listPosition:I

    .line 330
    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->add(Ljava/lang/Object;)V

    .line 331
    iput-boolean v5, v1, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->hasActualItems:Z

    move v4, v6

    goto :goto_a

    :cond_13
    :goto_b
    return-void

    const/4 v0, 0x0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x1

    .line 339
    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    return p1

    const/4 v0, 0x0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    .line 68
    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v3, 0x2

    .line 70
    const/4 v3, 0x3

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    if-ne v2, v0, :cond_0

    const/4 v3, 0x0

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0a002e

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    const/4 v3, 0x2

    .line 73
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    if-nez v2, :cond_1

    const/4 v3, 0x1

    .line 74
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0a002d

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v3, 0x1

    iget p3, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    if-ne p3, v0, :cond_3

    const/4 v3, 0x2

    const p3, 0x7f080197

    .line 78
    const/4 v3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 79
    const/4 v3, 0x0

    iget-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0800b1

    .line 80
    const/4 v3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 81
    const/4 v3, 0x2

    iget-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->deletable:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->category_name:Ljava/lang/String;

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/appDefault;->mainFontDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    .line 82
    const/4 v3, 0x1

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    const/4 v3, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    const/4 v3, 0x3

    :cond_2
    const/4 v3, 0x0

    const/16 p1, 0x8

    .line 90
    const/4 v3, 0x1

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    const/4 v3, 0x2

    .line 94
    const/4 v3, 0x3

    :cond_3
    const/4 v3, 0x0

    iget p3, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->type:I

    if-nez p3, :cond_5

    const/4 v3, 0x1

    const p3, 0x7f080201

    .line 95
    const/4 v3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 96
    const/4 v3, 0x3

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 97
    const/4 v3, 0x0

    iget-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v3, 0x2

    .line 103
    const/4 v3, 0x3

    :catch_0
    :try_start_1
    iget-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->font_path:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    const/4 v3, 0x0

    :catch_1
    :goto_1
    const/4 v3, 0x1

    iget-boolean p3, p1, Lcom/imaginstudio/imagetools/pixellab/font/fontItem;->deletable:Z

    if-eqz p3, :cond_4

    const/4 v3, 0x2

    const p3, 0x7f0800b2

    .line 110
    const/4 v3, 0x3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    .line 111
    const/4 v3, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 112
    const/4 v3, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const/4 v3, 0x2

    :cond_4
    const/4 v3, 0x3

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;

    invoke-direct {p3, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontListAdapter;Lcom/imaginstudio/imagetools/pixellab/font/fontItem;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const/4 v3, 0x1

    return-object p2

    const/4 v1, 0x3
.end method

.method public getViewTypeCount()I
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x2

    return v0

    const/4 v1, 0x1
.end method

.method public isItemViewTypePinned(I)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    return v0

    const/4 v1, 0x1
.end method

.method protected onSectionAdded(Lcom/imaginstudio/imagetools/pixellab/font/fontItem;I)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method protected prepareSections(I)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method
