.class public final Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;
.super Landroid/content/res/Resources;
.source "LocalizedResources.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final delegate:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 6

    .line 15
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->localeConfiguration(Landroid/content/res/Configuration;Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 16
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    .line 17
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    .line 18
    return-void
.end method

.method private static localeConfiguration(Landroid/content/res/Configuration;Landroid/content/Context;)Landroid/content/res/Configuration;
    .registers 4

    .line 21
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 22
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getJavaLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 23
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_16

    .line 24
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 25
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_18

    .line 27
    :cond_16
    iput-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    :goto_18
    return-object v0
.end method


# virtual methods
.method getDelegate()Landroid/content/res/Resources;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .registers 4

    .line 79
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz p3, :cond_1d

    array-length v1, p3

    if-nez v1, :cond_a

    goto :goto_1d

    .line 87
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getJavaLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_14} :catch_15

    return-object p1

    .line 88
    :catch_15
    move-exception v0

    .line 89
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 49
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz p2, :cond_1d

    array-length v1, p2

    if-nez v1, :cond_a

    goto :goto_1d

    .line 52
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->getJavaLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_14} :catch_15

    return-object p1

    .line 53
    :catch_15
    move-exception v0

    .line 54
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_1d
    :goto_1d
    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateArray(Landroid/content/Context;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 37
    if-eqz p1, :fallback_by_text

    move-object v0, p1

    goto :localized_text_done

    :fallback_by_text
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :localized_text_done

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :localized_text_done

    move-object v0, p1

    :localized_text_done
    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    return-object p2
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 7

    .line 64
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->delegate:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 66
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    array-length v4, v0

    if-ge v3, v4, :cond_19

    aget-object v4, v0, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 67
    :cond_19
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/LocalizedResources;->context:Landroid/content/Context;

    invoke-static {v3, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/OfflineLanguageManager;->translateArray(Landroid/content/Context;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 68
    array-length v0, v0

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 69
    nop

    :goto_23
    if-ge v2, v0, :cond_2c

    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 70
    :cond_2c
    return-object v1
.end method
