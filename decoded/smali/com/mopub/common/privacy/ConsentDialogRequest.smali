.class Lcom/mopub/common/privacy/ConsentDialogRequest;
.super Lcom/mopub/network/MoPubRequest;
.source "ConsentDialogRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/network/MoPubRequest<",
        "Lcom/mopub/common/privacy/ConsentDialogResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final HTML_KEY:Ljava/lang/String; = "dialog_html"


# instance fields
.field private mListener:Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/network/MoPubRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 31
    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentDialogRequest;->mListener:Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;

    .line 33
    new-instance p1, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 p2, 0x9c4

    const/4 p3, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, v0}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/mopub/common/privacy/ConsentDialogResponse;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogRequest;->mListener:Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogRequest;->mListener:Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;->onSuccess(Lcom/mopub/common/privacy/ConsentDialogResponse;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Lcom/mopub/common/privacy/ConsentDialogResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogRequest;->deliverResponse(Lcom/mopub/common/privacy/ConsentDialogResponse;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response<",
            "Lcom/mopub/common/privacy/ConsentDialogResponse;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogRequest;->parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "dialog_html"

    .line 48
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Empty HTML body"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_0
    new-instance v1, Lcom/mopub/common/privacy/ConsentDialogResponse;

    invoke-direct {v1, v0}, Lcom/mopub/common/privacy/ConsentDialogResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1

    .line 54
    :catch_0
    new-instance p1, Lcom/mopub/network/MoPubNetworkError;

    const-string v0, "Unable to parse consent dialog request network response."

    sget-object v1, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static {p1}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object p1

    return-object p1
.end method
