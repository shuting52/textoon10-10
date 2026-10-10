.class public Lcom/mopub/common/privacy/PersonalInfoManager;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;,
        Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;
    }
.end annotation


# static fields
.field private static final MINIMUM_SYNC_DELAY:J = 0x493e0L


# instance fields
.field private final mAppContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mConsentStatusChangeListeners:Ljava/util/Set;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/privacy/ConsentStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mForceGdprAppliesChanged:Z

.field private mForceGdprAppliesChangedSending:Z

.field private mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSyncDelayMs:J

.field private mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSyncRequestEpochTime:J

.field private mSyncRequestInFlight:Z

.field private final mSyncRequestListener:Lcom/mopub/common/privacy/SyncRequest$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/SdkInitializationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    .line 51
    iput-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    .line 61
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    .line 67
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoSyncRequestListener;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestListener:Lcom/mopub/common/privacy/SyncRequest$Listener;

    .line 68
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;

    invoke-direct {v0, p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    .line 69
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    invoke-static {v0}, Lcom/mopub/network/AdRequest;->setServerOverrideListener(Lcom/mopub/network/AdRequest$ServerOverrideListener;)V

    .line 71
    new-instance v0, Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    .line 73
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-direct {v0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 75
    new-instance p1, Lcom/mopub/mobileads/MoPubConversionTracker;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

    .line 77
    new-instance p1, Lcom/mopub/common/privacy/PersonalInfoManager$1;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$1;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    .line 116
    iput-object p3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    .line 118
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object p2

    .line 120
    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->setIdChangeListener(Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;)V

    .line 121
    invoke-direct {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->createInitializationListener()Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/MoPubIdentifier;->setInitializationListener(Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/AdRequest$ServerOverrideListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mServerOverrideListener:Lcom/mopub/network/AdRequest$ServerOverrideListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChangedSending:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChangedSending:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/common/privacy/PersonalInfoManager;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mopub/common/privacy/PersonalInfoManager;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    return p0
.end method

.method static synthetic access$502(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mopub/common/privacy/PersonalInfoManager;)Ljava/lang/Long;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mopub/common/privacy/PersonalInfoManager;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/mopub/common/privacy/PersonalInfoManager;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mopub/common/privacy/PersonalInfoManager;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestEpochTime:J

    return-wide v0
.end method

.method private attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V
    .locals 0
    .param p1    # Lcom/mopub/common/privacy/ConsentStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/privacy/ConsentChangeReason;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 440
    invoke-virtual {p2}, Lcom/mopub/common/privacy/ConsentChangeReason;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method private attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V
    .locals 11
    .param p1    # Lcom/mopub/common/privacy/ConsentStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 451
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 452
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing consent status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, p2}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentChangeReason(Ljava/lang/String;)V

    .line 459
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 460
    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    .line 461
    invoke-virtual {p2, v0}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    .line 462
    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 463
    :cond_0
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 464
    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 465
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 466
    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListVersion(Ljava/lang/String;)V

    .line 467
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 468
    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListIabFormat(Ljava/lang/String;)V

    .line 471
    :cond_1
    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    .line 472
    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 473
    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 474
    :cond_2
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedPrivacyPolicyVersion(Ljava/lang/String;)V

    .line 475
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListVersion(Ljava/lang/String;)V

    .line 476
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentedVendorListIabFormat(Ljava/lang/String;)V

    .line 479
    :cond_3
    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 480
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v1

    .line 481
    invoke-virtual {v1}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/privacy/AdvertisingId;->getIfaWithPrefix()Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setUdid(Ljava/lang/String;)V

    .line 484
    :cond_4
    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {p2, p1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 485
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p2, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentStatusBeforeDnt(Lcom/mopub/common/privacy/ConsentStatus;)V

    .line 487
    :cond_5
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setShouldReacquireConsent(Z)V

    .line 488
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p2}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 490
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 492
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/ClientMetadata;->repopulateCountryData()V

    .line 493
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubConversionTracker;->shouldTrack()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 494
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConversionTracker:Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    .line 498
    :cond_6
    iget-object v7, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    monitor-enter v7

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mopub/common/privacy/ConsentStatusChangeListener;

    .line 500
    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/mopub/common/privacy/PersonalInfoManager$4;

    move-object v1, v10

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mopub/common/privacy/PersonalInfoManager$4;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatusChangeListener;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 508
    :cond_7
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private createInitializationListener()Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    .line 512
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager$5;

    invoke-direct {v0, p0}, Lcom/mopub/common/privacy/PersonalInfoManager$5;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-object v0
.end method

.method static shouldMakeSyncRequest(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-nez p1, :cond_1

    return p0

    .line 357
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    return p0

    :cond_3
    if-eqz p7, :cond_4

    .line 363
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    if-nez p3, :cond_5

    return p0

    .line 369
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    sub-long v1, p1, p6

    cmp-long p1, v1, p4

    if-lez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public canCollectPersonalInformation()Z
    .locals 4

    .line 211
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v3, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v3}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    .line 225
    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method changeConsentStateFromDialog(Lcom/mopub/common/privacy/ConsentStatus;)V
    .locals 2
    .param p1    # Lcom/mopub/common/privacy/ConsentStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 306
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/mopub/common/privacy/PersonalInfoManager$6;->$SwitchMap$com$mopub$common$privacy$ConsentStatus:[I

    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid consent status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". This is a bug with the use of changeConsentStateFromDialog."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :pswitch_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 315
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    goto :goto_0

    .line 310
    :pswitch_1
    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_USER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 311
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public forceGdprApplies()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setForceGdprApplies(Z)V

    .line 252
    iput-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChanged:Z

    .line 253
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 254
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public gdprApplies()Ljava/lang/Boolean;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 238
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getGdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConsentData()Lcom/mopub/common/privacy/ConsentData;
    .locals 3

    .line 428
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoData;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/privacy/PersonalInfoData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    return-object v0
.end method

.method public grantConsent()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cannot grant consent because Do Not Track is on."

    .line 275
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isWhitelisted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    goto :goto_0

    :cond_1
    const-string v0, "You do not have approval to use the grantConsent API. Please reach out to your account teams or support@mopub.com for more information."

    .line 283
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_NOT_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    :goto_0
    const/4 v0, 0x1

    .line 288
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public isConsentDialogReady()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->isReady()Z

    move-result v0

    return v0
.end method

.method public loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;)V
    .locals 3
    .param p1    # Lcom/mopub/common/privacy/ConsentDialogListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/ManifestUtils;->checkGdprActivitiesDeclared(Landroid/content/Context;)V

    .line 166
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$2;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$2;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mopub/common/privacy/PersonalInfoManager$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$3;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1, p1, v0, v2}, Lcom/mopub/common/privacy/ConsentDialogController;->loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;Ljava/lang/Boolean;Lcom/mopub/common/privacy/PersonalInfoData;)V

    return-void
.end method

.method public requestSync(Z)V
    .locals 9

    .line 379
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 381
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    .line 382
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

    iget-wide v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncDelayMs:J

    iget-object v3, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 386
    invoke-virtual {v3}, Lcom/mopub/common/privacy/PersonalInfoData;->getUdid()Ljava/lang/String;

    move-result-object v7

    .line 387
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v8

    move v3, p1

    .line 381
    invoke-static/range {v1 .. v8}, Lcom/mopub/common/privacy/PersonalInfoManager;->shouldMakeSyncRequest(ZLjava/lang/Boolean;ZLjava/lang/Long;JLjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestEpochTime:J

    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestInFlight:Z

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mLastSyncRequestTimeUptimeMs:Ljava/lang/Long;

    .line 396
    new-instance v0, Lcom/mopub/common/privacy/SyncUrlGenerator;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestConsentStatus:Lcom/mopub/common/privacy/ConsentStatus;

    .line 397
    invoke-virtual {v2}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v1}, Lcom/mopub/common/privacy/PersonalInfoData;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 399
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withUdid(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 400
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getLastChangedMs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 401
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getLastSuccessfullySyncedConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 402
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentChangeReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 403
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 405
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 406
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 407
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->getExtras()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    .line 408
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    .line 409
    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 410
    iget-boolean v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChanged:Z

    if-eqz v1, :cond_1

    .line 411
    iput-boolean p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mForceGdprAppliesChangedSending:Z

    .line 412
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;

    .line 415
    :cond_1
    new-instance p1, Lcom/mopub/common/privacy/SyncRequest;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    const-string v2, "ads.mopub.com"

    .line 416
    invoke-virtual {v0, v2}, Lcom/mopub/common/privacy/SyncUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mSyncRequestListener:Lcom/mopub/common/privacy/SyncRequest$Listener;

    invoke-direct {p1, v1, v0, v2}, Lcom/mopub/common/privacy/SyncRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/privacy/SyncRequest$Listener;)V

    .line 418
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/network/MoPubRequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-void
.end method

.method public revokeConsent()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cannot revoke consent because Do Not Track is on."

    .line 297
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    return-void

    .line 301
    :cond_0
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-direct {p0, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->attemptStateTransition(Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public shouldShowConsentDialog()Z
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/MoPubIdentifier;->getAdvertisingInfo()Lcom/mopub/common/privacy/AdvertisingId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->shouldReacquireConsent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mPersonalInfoData:Lcom/mopub/common/privacy/PersonalInfoData;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->getConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public showConsentDialog()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentDialogController:Lcom/mopub/common/privacy/ConsentDialogController;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentDialogController;->showConsentDialog()Z

    move-result v0

    return v0
.end method

.method public subscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1
    .param p1    # Lcom/mopub/common/privacy/ConsentStatusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsubscribeConsentStatusChangeListener(Lcom/mopub/common/privacy/ConsentStatusChangeListener;)V
    .locals 1
    .param p1    # Lcom/mopub/common/privacy/ConsentStatusChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 343
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager;->mConsentStatusChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
