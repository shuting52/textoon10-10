.class public Lcom/mopub/network/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractBooleanHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mopub/network/HeaderUtils;->formatBooleanHeader(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            "Z)Z"
        }
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mopub/network/HeaderUtils;->formatBooleanHeader(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mopub/network/HeaderUtils;->formatBooleanHeader(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static extractHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->getFirstHeader(Ljava/util/List;Lcom/mopub/common/util/ResponseHeader;)Lcom/mopub/volley/Header;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mopub/volley/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 0
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/util/ResponseHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 28
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->getKeyIgnoreCase(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractIntHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;I)I
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static extractIntegerHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 75
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lcom/mopub/volley/toolbox/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static extractPercentHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatPercentHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static formatBooleanHeader(Ljava/lang/String;Z)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string p1, "1"

    .line 92
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 109
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static formatPercentHeader(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "%"

    const-string v2, ""

    .line 122
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/network/HeaderUtils;->formatIntHeader(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 124
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getFirstHeader(Ljava/util/List;Lcom/mopub/common/util/ResponseHeader;)Lcom/mopub/volley/Header;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/util/ResponseHeader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/volley/Header;",
            ">;",
            "Lcom/mopub/common/util/ResponseHeader;",
            ")",
            "Lcom/mopub/volley/Header;"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 139
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/volley/Header;

    .line 140
    invoke-virtual {v1}, Lcom/mopub/volley/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private static getKeyIgnoreCase(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 150
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 154
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    return-object p1
.end method
