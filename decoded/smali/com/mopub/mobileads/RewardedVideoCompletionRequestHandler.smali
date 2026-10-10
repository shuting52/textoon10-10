.class public Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;
.super Ljava/lang/Object;
.source "RewardedVideoCompletionRequestHandler.java"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;


# static fields
.field private static final API_VERSION_KEY:Ljava/lang/String; = "&v="

.field private static final CUSTOMER_ID_KEY:Ljava/lang/String; = "&customer_id="

.field private static final CUSTOM_DATA_KEY:Ljava/lang/String; = "&rcd="

.field private static final CUSTOM_EVENT_CLASS_NAME_KEY:Ljava/lang/String; = "&cec="

.field static final MAX_RETRIES:I = 0x11

.field static final REQUEST_TIMEOUT_DELAY:I = 0x3e8

.field static final RETRY_TIMES:[I

.field private static final REWARD_AMOUNT_KEY:Ljava/lang/String; = "&rca="

.field private static final REWARD_NAME_KEY:Ljava/lang/String; = "&rcn="

.field private static final SDK_VERSION_KEY:Ljava/lang/String; = "&nv="


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRequestQueue:Lcom/mopub/volley/RequestQueue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRetryCount:I

.field private volatile mShouldStop:Z

.field private final mUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-static/range {p2 .. p7}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->appendParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 80
    iput p2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 81
    iput-object p8, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static appendParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 163
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 164
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "&customer_id="

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&rcn="

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&rca="

    .line 170
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&nv="

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "5.1.0"

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&v="

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&cec="

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    const-string p0, ""

    goto :goto_1

    .line 175
    :cond_1
    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "&rcd="

    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getTimeout(I)I
    .locals 1

    if-ltz p0, :cond_0

    .line 149
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 150
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    aget p0, v0, p0

    return p0

    .line 152
    :cond_0
    sget-object p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public static makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method getRetryCount()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    return v0
.end method

.method getShouldStop()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    return v0
.end method

.method makeRewardedVideoCompletionRequest()V
    .locals 7

    .line 87
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void

    .line 93
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    new-instance v3, Lcom/mopub/volley/DefaultRetryPolicy;

    iget v4, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 95
    invoke-static {v4}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->getTimeout(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;)V

    .line 97
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;

    .line 98
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 100
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    const-string v0, "Exceeded number of retries for rewarded video completion request."

    .line 101
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;-><init>(Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;)V

    iget v2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 110
    invoke-static {v2}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->getTimeout(I)I

    move-result v2

    int-to-long v2, v2

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    return-void
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget p1, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    :cond_1
    return-void
.end method

.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 118
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    :cond_1
    return-void
.end method

.method setRetryCount(I)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iput p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    return-void
.end method
