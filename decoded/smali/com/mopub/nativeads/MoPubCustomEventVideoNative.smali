.class public Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$NativeVideoControllerFactory;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$PayloadVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$HeaderVisibilityStrategy;,
        Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "com_mopub_native_json"

    .line 57
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 60
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    .line 64
    :cond_0
    new-instance v4, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;

    invoke-direct {v4, p4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;-><init>(Ljava/util/Map;)V

    .line 65
    invoke-virtual {v4}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->hasValidHeaders()Z

    move-result p4

    if-nez p4, :cond_1

    .line 66
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->INVALID_RESPONSE:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void

    :cond_1
    const-string p4, "Click-Tracking-Url"

    .line 71
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 73
    instance-of p4, p3, Ljava/lang/String;

    if-eqz p4, :cond_3

    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    .line 74
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance p3, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;

    move-object v2, v0

    check-cast v2, Lorg/json/JSONObject;

    move-object v0, p3

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-virtual {p3}, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd;->loadAd()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    :goto_0
    return-void

    .line 75
    :cond_3
    :goto_1
    sget-object p1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p2, p1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method
