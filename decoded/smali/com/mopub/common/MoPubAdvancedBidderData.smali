.class public Lcom/mopub/common/MoPubAdvancedBidderData;
.super Ljava/lang/Object;
.source "MoPubAdvancedBidderData.java"


# static fields
.field private static final TOKEN_KEY:Ljava/lang/String; = "token"


# instance fields
.field final mCreativeNetworkName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mToken:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/mopub/common/MoPubAdvancedBidderData;->mToken:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/mopub/common/MoPubAdvancedBidderData;->mCreativeNetworkName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "token"

    .line 33
    iget-object v2, p0, Lcom/mopub/common/MoPubAdvancedBidderData;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid token format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/MoPubAdvancedBidderData;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
