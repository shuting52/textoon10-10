.class public Lcom/mopub/network/AdRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdRequest$ServerOverrideListener;,
        Lcom/mopub/network/AdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Lcom/mopub/network/AdResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADM_KEY:Ljava/lang/String; = "adm"

.field static final AD_RESPONSES_KEY:Ljava/lang/String; = "ad-responses"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final HEADERS_KEY:Ljava/lang/String; = "headers"

.field private static sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mAdFormat:Lcom/mopub/common/AdFormat;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mListener:Lcom/mopub/network/AdRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/AdFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/mopub/network/AdRequest$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0, p4, p1, p5}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 74
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    iput-object p3, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    .line 78
    iput-object p2, p0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    .line 79
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    .line 80
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 p2, 0x9c4

    const/4 p5, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p5, v0}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 87
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p1, "Make sure you initialize the SDK before loading an ad. For now, the SDK will be automatically initialized on your behalf. Starting from release 5.2.0, initialization will be a strict requirement, and ad requests made with an uninitialized SDK will begin to fail."

    .line 89
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 93
    new-instance p1, Lcom/mopub/common/SdkConfiguration$Builder;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p1, p3}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p1

    const/4 p2, 0x0

    .line 93
    invoke-static {p4, p1, p2}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :goto_0
    return-void
.end method

.method private eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "mraid"

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "interstitial"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "rewarded_video"

    .line 415
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    const-string p2, "rewarded_playable"

    .line 416
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static setServerOverrideListener(Lcom/mopub/network/AdRequest$ServerOverrideListener;)V
    .locals 0
    .param p0    # Lcom/mopub/network/AdRequest$ServerOverrideListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    sput-object p0, Lcom/mopub/network/AdRequest;->sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/mopub/network/AdResponse;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/AdRequest$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/mopub/network/AdResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->deliverResponse(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 115
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    sget-object v2, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v2}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getListener()Lcom/mopub/network/AdRequest$Listener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    return-object v0
.end method

.method getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 432
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    const-string v1, "request_id"

    .line 434
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to obtain request id from fail url."

    .line 436
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Lcom/mopub/network/AdResponse;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    iget-object v1, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_0
    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    new-instance p1, Lcom/mopub/network/MoPubNetworkError;

    const-string v0, "Ad Unit is warming up."

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {p1, v0, v1}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 152
    :cond_1
    new-instance v1, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v1}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 153
    iget-object v3, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 156
    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual {v1, v3}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    const-string v4, "multi"

    .line 159
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->AD_RESPONSE_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 161
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "ad-responses"

    .line 162
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 165
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "headers"

    .line 166
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 168
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    const-string v1, "Failed to decode header JSON"

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 173
    :cond_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object v4, v5

    .line 177
    :goto_1
    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v7}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v7

    .line 178
    sget-object v8, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v8}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v8

    .line 179
    invoke-virtual {v1, v7}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 180
    invoke-virtual {v1, v8}, Lcom/mopub/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 184
    sget-object v9, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v9}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_3

    move-object v9, v5

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 189
    :goto_2
    invoke-virtual {v1, v9}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    const-string v10, "clear"

    .line 191
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 192
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    .line 193
    new-instance p1, Lcom/mopub/network/MoPubNetworkError;

    const-string v0, "No ads found for ad unit."

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {p1, v0, v1, v9}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 202
    :cond_4
    sget-object v9, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v9}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 203
    invoke-virtual {v1, v9}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 205
    sget-object v9, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v9}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-virtual {v1, v9}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 208
    sget-object v9, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v9}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 209
    invoke-virtual {v1, v9}, Lcom/mopub/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 213
    sget-object v10, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v10}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v10

    .line 214
    invoke-virtual {v1, v10}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 216
    sget-object v11, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v11}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 218
    sget-object v11, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v11}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-virtual {v1, v11}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 221
    invoke-virtual {p0, v11}, Lcom/mopub/network/AdRequest;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 222
    invoke-virtual {v1, v11}, Lcom/mopub/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 224
    sget-object v11, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v11, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v11

    .line 225
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/mopub/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;

    .line 227
    sget-object v12, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v12}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v12

    .line 228
    sget-object v13, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v13}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v13

    .line 229
    invoke-virtual {v1, v12, v13}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 231
    sget-object v12, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v12}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v12

    if-nez v12, :cond_5

    goto :goto_3

    .line 235
    :cond_5
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 232
    :goto_3
    invoke-virtual {v1, v5}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    const-string v5, "json"

    .line 237
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "json_video"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 239
    :cond_6
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 248
    :cond_7
    iget-object v5, p0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    invoke-static {v5, v7, v8, v6}, Lcom/mopub/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {v1, v5}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 253
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 254
    invoke-static {v6, v5}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v5

    .line 253
    invoke-static {v5}, Lcom/mopub/common/MoPub$BrowserAgent;->fromHeader(Ljava/lang/Integer;)Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v5

    .line 255
    invoke-static {v5}, Lcom/mopub/common/MoPub;->setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V

    .line 256
    invoke-virtual {v1, v5}, Lcom/mopub/network/AdResponse$Builder;->setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;

    .line 259
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 263
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 268
    :cond_8
    :try_start_2
    invoke-static {v5}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_9

    :try_start_3
    const-string v12, "Adm"

    const-string v13, "adm"

    .line 277
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 280
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    const-string v1, "Failed to parse ADM for advanced bidding"

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 285
    :cond_9
    :goto_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "Redirect-Url"

    .line 286
    invoke-interface {v5, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "Clickthrough-Url"

    .line 291
    invoke-interface {v5, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_b
    invoke-direct {p0, v7, v8}, Lcom/mopub/network/AdRequest;->eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "Html-Response-Body"

    .line 295
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Scrollable"

    .line 296
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com_mopub_orientation"

    .line 297
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v3, "json"

    .line 299
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "json_video"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 300
    :cond_d
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v3}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v3

    .line 302
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 304
    sget-object v9, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v0, v9}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 306
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "Impression-Min-Visible-Percent"

    .line 307
    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "Impression-Visible-Ms"

    .line 311
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "Impression-Min-Visible-Px"

    .line 314
    invoke-interface {v5, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v3, "json_video"

    .line 317
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "Play-Visible-Percent"

    .line 318
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 319
    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Pause-Visible-Percent"

    .line 320
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 321
    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Max-Buffer-Ms"

    .line 322
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_11
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v3}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "Video-Trackers"

    .line 329
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v3, "rewarded_video"

    .line 331
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "interstitial"

    .line 332
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "vast"

    .line 333
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const-string v3, "External-Video-Viewability-Trackers"

    .line 334
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 335
    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_14
    sget-object v3, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    iget-object v4, p0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    invoke-virtual {v3, v4}, Lcom/mopub/common/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "Banner-Impression-Min-Ms"

    .line 340
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 341
    invoke-static {v0, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 340
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Banner-Impression-Min-Pixels"

    .line 342
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    .line 343
    invoke-static {v0, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_15
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 351
    invoke-static {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->fromKey(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 353
    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->disable()V

    .line 357
    :cond_16
    invoke-virtual {v1, v5}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    const-string v0, "rewarded_video"

    .line 359
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "custom"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "rewarded_playable"

    .line 360
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 361
    :cond_17
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v0}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    .line 363
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v3}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v3

    .line 365
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v4}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v4

    .line 367
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 369
    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v7}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v7

    .line 371
    sget-object v8, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v8, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v8

    .line 373
    invoke-virtual {v1, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 374
    invoke-virtual {v1, v3}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 375
    invoke-virtual {v1, v4}, Lcom/mopub/network/AdResponse$Builder;->setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 376
    invoke-virtual {v1, v5}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 377
    invoke-virtual {v1, v7}, Lcom/mopub/network/AdResponse$Builder;->setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 378
    invoke-virtual {v1, v8}, Lcom/mopub/network/AdResponse$Builder;->setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;

    .line 381
    :cond_18
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->INVALIDATE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v0, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v0

    .line 383
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->FORCE_EXPLICIT_NO:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v3, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v3

    .line 385
    sget-object v4, Lcom/mopub/common/util/ResponseHeader;->REACQUIRE_CONSENT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v4, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v4

    .line 387
    sget-object v5, Lcom/mopub/common/util/ResponseHeader;->CONSENT_CHANGE_REASON:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v5}, Lcom/mopub/network/HeaderUtils;->extractHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v5

    .line 389
    sget-object v7, Lcom/mopub/common/util/ResponseHeader;->FORCE_GDPR_APPLIES:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {v6, v7, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Lorg/json/JSONObject;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v2

    .line 392
    sget-object v6, Lcom/mopub/network/AdRequest;->sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    if-eqz v6, :cond_1c

    if-eqz v2, :cond_19

    .line 394
    sget-object v2, Lcom/mopub/network/AdRequest;->sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    invoke-interface {v2}, Lcom/mopub/network/AdRequest$ServerOverrideListener;->onForceGdprApplies()V

    :cond_19
    if-eqz v3, :cond_1a

    .line 397
    sget-object v0, Lcom/mopub/network/AdRequest;->sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    invoke-interface {v0, v5}, Lcom/mopub/network/AdRequest$ServerOverrideListener;->onForceExplicitNo(Ljava/lang/String;)V

    goto :goto_5

    :cond_1a
    if-eqz v0, :cond_1b

    .line 399
    sget-object v0, Lcom/mopub/network/AdRequest;->sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    invoke-interface {v0, v5}, Lcom/mopub/network/AdRequest$ServerOverrideListener;->onInvalidateConsent(Ljava/lang/String;)V

    goto :goto_5

    :cond_1b
    if-eqz v4, :cond_1c

    .line 401
    sget-object v0, Lcom/mopub/network/AdRequest;->sServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    invoke-interface {v0, v5}, Lcom/mopub/network/AdRequest$ServerOverrideListener;->onReacquireConsent(Ljava/lang/String;)V

    .line 405
    :cond_1c
    :goto_5
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    .line 407
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v0

    .line 408
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    .line 407
    invoke-static {v0, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 270
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    const-string v1, "Failed to decode server extras for custom event data."

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 241
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    const-string v1, "Failed to decode body JSON for native ad format"

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method
