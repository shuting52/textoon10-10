.class public final Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;
.super Ljava/lang/Object;
.source "OfflineLanguageManager.java"


# static fields
.field private static final CANCEL_LABELS:[Ljava/lang/String;

.field private static final CATALOGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final CODES:[Ljava/lang/String;

.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "zh-CN"

.field private static final DIALOG_TITLES:[Ljava/lang/String;

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final LABELS:[Ljava/lang/String;

.field private static final MENU_LABELS:[Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "pixellabplus_offline_language"

.field private static final WRAPPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 24
    const/16 v0, 0x12

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "zh-CN"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "zh-TW"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "en"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "fi"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "ja"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "ko"

    aput-object v8, v1, v7

    const/4 v8, 0x6

    const-string v9, "fr"

    aput-object v9, v1, v8

    const/4 v9, 0x7

    const-string v10, "de"

    aput-object v10, v1, v9

    const/16 v10, 0x8

    const-string v11, "es"

    aput-object v11, v1, v10

    const/16 v11, 0x9

    const-string v12, "pt"

    aput-object v12, v1, v11

    const/16 v12, 0xa

    const-string v13, "ru"

    aput-object v13, v1, v12

    const/16 v13, 0xb

    const-string v14, "ar"

    aput-object v14, v1, v13

    const/16 v14, 0xc

    const-string v15, "hi"

    aput-object v15, v1, v14

    const/16 v15, 0xd

    const-string v16, "id"

    aput-object v16, v1, v15

    const/16 v16, 0xe

    const-string v17, "th"

    aput-object v17, v1, v16

    const/16 v17, 0xf

    const-string v18, "vi"

    aput-object v18, v1, v17

    const/16 v18, 0x10

    const-string v19, "it"

    aput-object v19, v1, v18

    const/16 v19, 0x11

    const-string v20, "tr"

    aput-object v20, v1, v19

    sput-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;

    .line 28
    new-array v1, v0, [Ljava/lang/String;

    const-string v20, "\u7b80\u4f53\u4e2d\u6587"

    aput-object v20, v1, v2

    const-string v20, "\u7e41\u9ad4\u4e2d\u6587"

    aput-object v20, v1, v3

    const-string v20, "English"

    aput-object v20, v1, v4

    const-string v20, "Suomi"

    aput-object v20, v1, v5

    const-string v20, "\u65e5\u672c\u8a9e"

    aput-object v20, v1, v6

    const-string v20, "\ud55c\uad6d\uc5b4"

    aput-object v20, v1, v7

    const-string v20, "Fran\u00e7ais"

    aput-object v20, v1, v8

    const-string v20, "Deutsch"

    aput-object v20, v1, v9

    const-string v20, "Espa\u00f1ol"

    aput-object v20, v1, v10

    const-string v20, "Portugu\u00eas"

    aput-object v20, v1, v11

    const-string v20, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    aput-object v20, v1, v12

    const-string v20, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    aput-object v20, v1, v13

    const-string v20, "\u0939\u093f\u0928\u094d\u0926\u0940"

    aput-object v20, v1, v14

    const-string v20, "Bahasa Indonesia"

    aput-object v20, v1, v15

    const-string v20, "\u0e44\u0e17\u0e22"

    aput-object v20, v1, v16

    const-string v20, "Ti\u1ebfng Vi\u1ec7t"

    aput-object v20, v1, v17

    const-string v20, "Italiano"

    aput-object v20, v1, v18

    const-string v20, "T\u00fcrk\u00e7e"

    aput-object v20, v1, v19

    sput-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->LABELS:[Ljava/lang/String;

    .line 33
    new-array v1, v0, [Ljava/lang/String;

    const-string v20, "\u8bed\u8a00"

    aput-object v20, v1, v2

    const-string v20, "\u8a9e\u8a00"

    aput-object v20, v1, v3

    const-string v20, "Language"

    aput-object v20, v1, v4

    const-string v20, "Kieli"

    aput-object v20, v1, v5

    const-string v20, "\u8a00\u8a9e"

    aput-object v20, v1, v6

    const-string v20, "\uc5b8\uc5b4"

    aput-object v20, v1, v7

    const-string v20, "Langue"

    aput-object v20, v1, v8

    const-string v20, "Sprache"

    aput-object v20, v1, v9

    const-string v20, "Idioma"

    aput-object v20, v1, v10

    aput-object v20, v1, v11

    const-string v20, "\u042f\u0437\u044b\u043a"

    aput-object v20, v1, v12

    const-string v20, "\u0627\u0644\u0644\u063a\u0629"

    aput-object v20, v1, v13

    const-string v20, "\u092d\u093e\u0937\u093e"

    aput-object v20, v1, v14

    const-string v20, "Bahasa"

    aput-object v20, v1, v15

    const-string v20, "\u0e20\u0e32\u0e29\u0e32"

    aput-object v20, v1, v16

    const-string v20, "Ng\u00f4n ng\u1eef"

    aput-object v20, v1, v17

    const-string v20, "Lingua"

    aput-object v20, v1, v18

    const-string v20, "Dil"

    aput-object v20, v1, v19

    sput-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->MENU_LABELS:[Ljava/lang/String;

    .line 37
    new-array v1, v0, [Ljava/lang/String;

    const-string v20, "\u5e94\u7528\u8bed\u8a00"

    aput-object v20, v1, v2

    const-string v20, "\u61c9\u7528\u7a0b\u5f0f\u8a9e\u8a00"

    aput-object v20, v1, v3

    const-string v20, "App language"

    aput-object v20, v1, v4

    const-string v20, "Sovelluksen kieli"

    aput-object v20, v1, v5

    const-string v20, "\u30a2\u30d7\u30ea\u306e\u8a00\u8a9e"

    aput-object v20, v1, v6

    const-string v20, "\uc571 \uc5b8\uc5b4"

    aput-object v20, v1, v7

    const-string v20, "Langue de l\u2019application"

    aput-object v20, v1, v8

    const-string v20, "App-Sprache"

    aput-object v20, v1, v9

    const-string v20, "Idioma de la aplicaci\u00f3n"

    aput-object v20, v1, v10

    const-string v20, "Idioma do aplicativo"

    aput-object v20, v1, v11

    const-string v20, "\u042f\u0437\u044b\u043a \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f"

    aput-object v20, v1, v12

    const-string v20, "\u0644\u063a\u0629 \u0627\u0644\u062a\u0637\u0628\u064a\u0642"

    aput-object v20, v1, v13

    const-string v20, "\u0910\u092a \u0915\u0940 \u092d\u093e\u0937\u093e"

    aput-object v20, v1, v14

    const-string v20, "Bahasa aplikasi"

    aput-object v20, v1, v15

    const-string v20, "\u0e20\u0e32\u0e29\u0e32\u0e02\u0e2d\u0e07\u0e41\u0e2d\u0e1b"

    aput-object v20, v1, v16

    const-string v20, "Ng\u00f4n ng\u1eef \u1ee9ng d\u1ee5ng"

    aput-object v20, v1, v17

    const-string v20, "Lingua dell\u2019app"

    aput-object v20, v1, v18

    const-string v20, "Uygulama dili"

    aput-object v20, v1, v19

    sput-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->DIALOG_TITLES:[Ljava/lang/String;

    .line 43
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u53d6\u6d88"

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    const-string v1, "Cancel"

    aput-object v1, v0, v4

    const-string v1, "Peruuta"

    aput-object v1, v0, v5

    const-string v1, "\u30ad\u30e3\u30f3\u30bb\u30eb"

    aput-object v1, v0, v6

    const-string v1, "\ucde8\uc18c"

    aput-object v1, v0, v7

    const-string v1, "Annuler"

    aput-object v1, v0, v8

    const-string v1, "Abbrechen"

    aput-object v1, v0, v9

    const-string v1, "Cancelar"

    aput-object v1, v0, v10

    aput-object v1, v0, v11

    const-string v1, "\u041e\u0442\u043c\u0435\u043d\u0430"

    aput-object v1, v0, v12

    const-string v1, "\u0625\u0644\u063a\u0627\u0621"

    aput-object v1, v0, v13

    const-string v1, "\u0930\u0926\u094d\u0926 \u0915\u0930\u0947\u0902"

    aput-object v1, v0, v14

    const-string v1, "Batal"

    aput-object v1, v0, v15

    const-string v1, "\u0e22\u0e01\u0e40\u0e25\u0e34\u0e01"

    aput-object v1, v0, v16

    const-string v1, "H\u1ee7y"

    aput-object v1, v0, v17

    const-string v1, "Annulla"

    aput-object v1, v0, v18

    const-string v1, "\u0130ptal"

    aput-object v1, v0, v19

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CANCEL_LABELS:[Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CATALOGS:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .line 20
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .registers 1

    .line 20
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CATALOGS:Ljava/util/Map;

    return-object v0
.end method

.method private static catalog(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 6

    .line 119
    if-nez p0, :cond_8

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 120
    :cond_8
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CATALOGS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 122
    if-eqz v1, :cond_17

    return-object v1

    .line 123
    :cond_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 125
    nop

    .line 127
    const/4 v1, 0x0

    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pixellab_locales/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 128
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 131
    :goto_50
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_50

    .line 132
    :cond_5c
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_26 .. :try_end_6c} :catchall_75

    .line 136
    if-eqz v1, :cond_73

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_73

    :catchall_72
    move-exception p0

    .line 139
    :cond_73
    :goto_73
    move-object v1, v2

    goto :goto_8d

    .line 133
    :catchall_75
    move-exception p0

    .line 134
    :try_start_76
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_84

    .line 136
    if-eqz v1, :cond_82

    :try_start_7d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_82

    :catchall_81
    move-exception v1

    .line 139
    :cond_82
    :goto_82
    move-object v1, p0

    goto :goto_8d

    .line 136
    :catchall_84
    move-exception p0

    if-eqz v1, :cond_8c

    :try_start_87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8c

    :catchall_8b
    move-exception v0

    .line 137
    :cond_8c
    :goto_8c
    throw p0

    .line 139
    :cond_8d
    :goto_8d
    sget-object p0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CATALOGS:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    .line 140
    if-nez p0, :cond_98

    goto :goto_99

    :cond_98
    move-object v1, p0

    :goto_99
    return-object v1
.end method

.method public static getJavaLocale(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4

    .line 86
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 87
    const-string v0, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 88
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1a

    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_1a
    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_21
    return-object v0
.end method

.method public static getLanguageMenuLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 82
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->MENU_LABELS:[Ljava/lang/String;

    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->selectedIndex(Landroid/content/Context;)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getLocale(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 66
    const-string v0, "zh-CN"

    if-nez p0, :cond_5

    return-object v0

    .line 67
    :cond_5
    const-string v1, "pixellabplus_offline_language"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "locale"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v0, p0

    :cond_19
    return-object v0
.end method

.method private static isSupported(Ljava/lang/String;)Z
    .registers 2

    .line 72
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static selectedIndex(Landroid/content/Context;)I
    .registers 4

    .line 76
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CODES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 78
    :cond_19
    return v0
.end method

.method public static showPicker(Landroid/app/Activity;)V
    .registers 5

    .line 144
    if-eqz p0, :cond_32

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_32

    .line 145
    :cond_9
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->selectedIndex(Landroid/content/Context;)I

    move-result v0

    .line 146
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->DIALOG_TITLES:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 147
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->LABELS:[Ljava/lang/String;

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;

    invoke-direct {v3, p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager$1;-><init>(Landroid/app/Activity;)V

    .line 148
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->CANCEL_LABELS:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 165
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 167
    return-void

    .line 144
    :cond_32
    :goto_32
    return-void
.end method

.method public static translateArray(Landroid/content/Context;I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 106
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 107
    :cond_4
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->catalog(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "arrays"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    if-nez v1, :cond_11

    goto :goto_19

    :cond_11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 109
    :goto_19
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    .line 110
    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    array-length v3, p2

    if-ne v2, v3, :cond_35

    .line 111
    nop

    :goto_27
    array-length p0, p2

    if-ge v1, p0, :cond_44

    aget-object p0, p2, v1

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 113
    :cond_35
    nop

    :goto_36
    array-length v0, p2

    if-ge v1, v0, :cond_44

    aget-object v0, p2, v1

    invoke-static {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 115
    :cond_44
    return-object p1
.end method

.method public static translateResource(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 92
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->catalog(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "resources"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 93
    const/4 v0, 0x0

    if-nez p0, :cond_e

    return-object v0

    .line 94
    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v0, p0

    :cond_20
    :goto_20
    return-object v0
.end method

.method public static translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    if-nez p1, :text_translate_start
    const/4 p0, 0x0
    return-object p0
    :text_translate_start
    invoke-static {p0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->catalog(Landroid/content/Context;)Lorg/json/JSONObject;
    move-result-object v0
    const-string v1, "texts"
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    move-result-object v0
    if-nez v0, :text_map_ready
    return-object p1
    :text_map_ready
    const/4 v1, 0x0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :text_case_fallback
    return-object v1
    :text_case_fallback
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v1
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v1
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :text_no_translation
    return-object v1
    :text_no_translation
    return-object p1
.end method

.method public static wrap(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .registers 5

    .line 53
    if-eqz p0, :cond_39

    if-eqz p1, :cond_39

    instance-of v0, p1, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;

    if-eqz v0, :cond_9

    goto :goto_39

    .line 54
    :cond_9
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;

    monitor-enter v0

    .line 55
    :try_start_c
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .line 56
    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;

    if-eqz v2, :cond_23

    move-object v2, v1

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->getDelegate()Landroid/content/res/Resources;

    move-result-object v2

    if-ne v2, p1, :cond_23

    monitor-exit v0

    return-object v1

    .line 57
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    if-nez v1, :cond_2a

    move-object v1, p0

    .line 59
    :cond_2a
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;

    invoke-direct {v2, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 60
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->WRAPPERS:Ljava/util/Map;

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    monitor-exit v0

    return-object v2

    .line 62
    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_36

    throw p0

    .line 53
    :cond_39
    :goto_39
    return-object p1
.end method
