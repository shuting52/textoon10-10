.class public Lcom/mopub/common/privacy/ConsentDialogController;
.super Ljava/lang/Object;
.source "ConsentDialogController.java"

# interfaces
.implements Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;


# instance fields
.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHtmlBody:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mReady:Z

.field private mRequestInFlight:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    .line 124
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 126
    iput-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method isReady()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    return v0
.end method

.method loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Lcom/mopub/common/privacy/PersonalInfoData;)V
    .locals 5
    .param p1    # Lcom/mopub/common/privacy/ConsentDialogListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/privacy/PersonalInfoData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 81
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/mopub/common/privacy/ConsentDialogController$1;

    invoke-direct {p3, p0, p1}, Lcom/mopub/common/privacy/ConsentDialogController$1;-><init>(Lcom/mopub/common/privacy/ConsentDialogController;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    if-eqz v0, :cond_2

    const-string p1, "Already making a consent dialog load request."

    .line 90
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_2
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    .line 97
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogRequest;

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    iget-object v2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    .line 98
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p2}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    .line 101
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    .line 102
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    .line 103
    invoke-virtual {p3}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;

    move-result-object p2

    const-string p3, "ads.mopub.com"

    .line 104
    invoke-virtual {p2, p3}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lcom/mopub/common/privacy/ConsentDialogRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogRequest$Listener;)V

    .line 105
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mopub/network/MoPubRequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    .line 55
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogController;->resetState()V

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Lcom/mopub/common/privacy/ConsentDialogController$2;->$SwitchMap$com$mopub$network$MoPubNetworkError$Reason:[I

    check-cast p1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 71
    :cond_2
    :goto_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onSuccess(Lcom/mopub/common/privacy/ConsentDialogResponse;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mRequestInFlight:Z

    .line 37
    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentDialogResponse;->getHtml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iput-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    .line 40
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    .line 47
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mExtListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    invoke-interface {p1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoaded()V

    :cond_2
    return-void
.end method

.method showConsentDialog()Z
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/common/privacy/ConsentDialogController;->mHtmlBody:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogController;->resetState()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
