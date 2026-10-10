.class Lcom/mopub/mobileads/ConversionUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "ConversionUrlGenerator.java"


# static fields
.field private static final PACKAGE_NAME_KEY:Ljava/lang/String; = "id"

.field private static final SESSION_TRACKER_KEY:Ljava/lang/String; = "st"


# instance fields
.field private mConsentedPrivacyPolicyVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConsentedVendorListVersion:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentConsentStatus:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mForceGdprApplies:Z

.field private mGdprApplies:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSt:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    const-string v1, "/m/open"

    .line 69
    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    .line 70
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->setApiVersion(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->setAppVersion(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->appendAdvertisingInfoTemplates()V

    const-string p1, "id"

    .line 74
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mSt:Z

    if-eqz p1, :cond_0

    const-string p1, "st"

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string p1, "nv"

    const-string v0, "5.1.0"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "current_consent_status"

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consented_vendor_list_version"

    .line 80
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consented_privacy_policy_version"

    .line 81
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gdpr_applies"

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "force_gdpr_applies"

    .line 83
    iget-boolean v0, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mForceGdprApplies:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    invoke-virtual {p0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withCurrentConsentStatus(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withForceGdprApplies(Z)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mForceGdprApplies:Z

    return-object p0
.end method

.method public withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSessionTracker(Z)Lcom/mopub/mobileads/ConversionUrlGenerator;
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/mopub/mobileads/ConversionUrlGenerator;->mSt:Z

    return-object p0
.end method
