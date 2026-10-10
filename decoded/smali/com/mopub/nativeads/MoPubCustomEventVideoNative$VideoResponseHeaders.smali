.class Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;
.super Ljava/lang/Object;
.source "MoPubCustomEventVideoNative.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventVideoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoResponseHeaders"
.end annotation


# instance fields
.field private mHeadersAreValid:Z

.field private mImpressionMinVisiblePercent:I

.field private mImpressionVisibleMs:I

.field private mImpressionVisiblePx:Ljava/lang/Integer;

.field private mMaxBufferMs:I

.field private mPauseVisiblePercent:I

.field private mPlayVisiblePercent:I

.field private mVideoTrackers:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Play-Visible-Percent"

    .line 896
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    const-string v1, "Pause-Visible-Percent"

    .line 897
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    const-string v1, "Impression-Visible-Ms"

    .line 898
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    const-string v1, "Max-Buffer-Ms"

    .line 899
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    const/4 v1, 0x1

    .line 900
    iput-boolean v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    :catch_0
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    :goto_0
    const-string v1, "Impression-Min-Visible-Px"

    .line 905
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 906
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 908
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "Unable to parse impression min visible px from server extras."

    .line 910
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :cond_0
    :goto_1
    :try_start_2
    const-string v1, "Impression-Min-Visible-Percent"

    .line 915
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "Unable to parse impression min visible percent from server extras."

    .line 917
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 918
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    .line 919
    :cond_1
    iput-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    :cond_2
    :goto_2
    const-string v0, "Video-Trackers"

    .line 924
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 930
    :cond_3
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse video trackers to JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 933
    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;

    :goto_3
    return-void
.end method


# virtual methods
.method getImpressionMinVisiblePercent()I
    .locals 1

    .line 950
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionMinVisiblePercent:I

    return v0
.end method

.method getImpressionVisibleMs()I
    .locals 1

    .line 954
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisibleMs:I

    return v0
.end method

.method getImpressionVisiblePx()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mImpressionVisiblePx:Ljava/lang/Integer;

    return-object v0
.end method

.method getMaxBufferMs()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mMaxBufferMs:I

    return v0
.end method

.method getPauseVisiblePercent()I
    .locals 1

    .line 946
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPauseVisiblePercent:I

    return v0
.end method

.method getPlayVisiblePercent()I
    .locals 1

    .line 942
    iget v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mPlayVisiblePercent:I

    return v0
.end method

.method getVideoTrackers()Lorg/json/JSONObject;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mVideoTrackers:Lorg/json/JSONObject;

    return-object v0
.end method

.method hasValidHeaders()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Lcom/mopub/nativeads/MoPubCustomEventVideoNative$VideoResponseHeaders;->mHeadersAreValid:Z

    return v0
.end method
