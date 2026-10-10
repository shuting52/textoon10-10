.class public Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "ConsentDialogUrlGenerator.java"


# static fields
.field private static final LANGUAGE_KEY:Ljava/lang/String; = "language"


# instance fields
.field private final mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mConsentedPrivacyPolicyVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConsentedVendorListVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCurrentConsentStatus:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mForceGdprApplies:Z

.field private mGdprApplies:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mAdUnitId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/gdpr_consent_dialog"

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "id"

    .line 72
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "current_consent_status"

    .line 73
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nv"

    const-string v0, "5.1.0"

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "language"

    .line 75
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gdpr_applies"

    .line 76
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "force_gdpr_applies"

    .line 77
    iget-boolean v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mForceGdprApplies:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "consented_vendor_list_version"

    .line 78
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consented_privacy_policy_version"

    .line 79
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bundle"

    .line 80
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method protected withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    return-object p0
.end method

.method protected withForceGdprApplies(Z)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mForceGdprApplies:Z

    return-object p0
.end method

.method protected withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    return-object p0
.end method
