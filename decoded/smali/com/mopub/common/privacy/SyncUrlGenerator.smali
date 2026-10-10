.class public Lcom/mopub/common/privacy/SyncUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SyncUrlGenerator.java"


# static fields
.field private static final CACHED_VENDOR_LIST_IAB_HASH_KEY:Ljava/lang/String; = "cached_vendor_list_iab_hash"

.field private static final CONSENT_CHANGE_REASON_KEY:Ljava/lang/String; = "consent_change_reason"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "extras"

.field private static final FORCED_GDPR_APPLIES_CHANGED:Ljava/lang/String; = "forced_gdpr_applies_changed"

.field private static final LAST_CHANGED_MS_KEY:Ljava/lang/String; = "last_changed_ms"

.field private static final LAST_CONSENT_STATUS_KEY:Ljava/lang/String; = "last_consent_status"


# instance fields
.field private mAdUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCachedVendorListIabHash:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mConsentChangeReason:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
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

.field private mExtras:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mForceGdprApplies:Z

.field private mForceGdprAppliesChanged:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGdprApplies:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastChangedMs:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastConsentStatus:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mUdid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "/m/gdpr_sync"

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->initUrlString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "id"

    .line 138
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nv"

    const-string v0, "5.1.0"

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_changed_ms"

    .line 140
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mLastChangedMs:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_consent_status"

    .line 141
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mLastConsentStatus:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "current_consent_status"

    .line 142
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mCurrentConsentStatus:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consent_change_reason"

    .line 143
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mConsentChangeReason:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consented_vendor_list_version"

    .line 144
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "consented_privacy_policy_version"

    .line 145
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cached_vendor_list_iab_hash"

    .line 146
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mCachedVendorListIabHash:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extras"

    .line 147
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mExtras:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "udid"

    .line 148
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mUdid:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gdpr_applies"

    .line 149
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "force_gdpr_applies"

    .line 150
    iget-boolean v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mForceGdprApplies:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "forced_gdpr_applies_changed"

    .line 151
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mForceGdprAppliesChanged:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "bundle"

    .line 152
    iget-object v0, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dnt"

    const-string v0, "mp_tmpl_do_not_track"

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->getFinalUrlString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mAdUnitId:Ljava/lang/String;

    return-object p0
.end method

.method public withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mCachedVendorListIabHash:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mConsentChangeReason:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mConsentedPrivacyPolicyVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mConsentedVendorListVersion:Ljava/lang/String;

    return-object p0
.end method

.method public withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 130
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mExtras:Ljava/lang/String;

    return-object p0
.end method

.method public withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mForceGdprApplies:Z

    return-object p0
.end method

.method public withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mForceGdprAppliesChanged:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mGdprApplies:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mLastChangedMs:Ljava/lang/String;

    return-object p0
.end method

.method public withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Lcom/mopub/common/privacy/ConsentStatus;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mLastConsentStatus:Ljava/lang/String;

    return-object p0
.end method

.method public withUdid(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->mUdid:Ljava/lang/String;

    return-object p0
.end method
