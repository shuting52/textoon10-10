.class public Lcom/mopub/mobileads/MoPubConversionTracker;
.super Ljava/lang/Object;
.source "MoPubConversionTracker.java"


# static fields
.field private static final WANT_TO_TRACK:Ljava/lang/String; = " wantToTrack"


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIsTrackedKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWantToTrack:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mContext:Landroid/content/Context;

    .line 33
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wantToTrack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mWantToTrack:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tracked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/MoPubConversionTracker;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mWantToTrack:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/MoPubConversionTracker;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/MoPubConversionTracker;)Landroid/content/SharedPreferences;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private isAlreadyTracked()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mIsTrackedKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public reportAppOpen()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Z)V

    return-void
.end method

.method public reportAppOpen(Z)V
    .locals 4

    .line 52
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Cannot report app open until initialization is done"

    .line 54
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/mopub/mobileads/MoPubConversionTracker;->isAlreadyTracked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Conversion already tracked"

    .line 60
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 64
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mWantToTrack:Ljava/lang/String;

    const/4 v1, 0x1

    .line 67
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 72
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getConsentData()Lcom/mopub/common/privacy/ConsentData;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/mopub/mobileads/ConversionUrlGenerator;

    iget-object v3, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mopub/mobileads/ConversionUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->gdprApplies()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/ConversionUrlGenerator;->withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/mobileads/ConversionUrlGenerator;

    move-result-object v2

    .line 75
    invoke-interface {v1}, Lcom/mopub/common/privacy/ConsentData;->isForceGdprApplies()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mopub/mobileads/ConversionUrlGenerator;->withForceGdprApplies(Z)Lcom/mopub/mobileads/ConversionUrlGenerator;

    move-result-object v2

    .line 76
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->getPersonalInfoConsentStatus()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->withCurrentConsentStatus(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;

    move-result-object v0

    .line 77
    invoke-interface {v1}, Lcom/mopub/common/privacy/ConsentData;->getConsentedPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/ConversionUrlGenerator;->withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;

    move-result-object v0

    .line 78
    invoke-interface {v1}, Lcom/mopub/common/privacy/ConsentData;->getConsentedVendorListVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/mobileads/ConversionUrlGenerator;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/ConversionUrlGenerator;->withSessionTracker(Z)Lcom/mopub/mobileads/ConversionUrlGenerator;

    move-result-object p1

    const-string v0, "ads.mopub.com"

    .line 80
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/ConversionUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mopub/mobileads/MoPubConversionTracker$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/MoPubConversionTracker$1;-><init>(Lcom/mopub/mobileads/MoPubConversionTracker;)V

    invoke-static {p1, v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/TrackingRequest$Listener;)V

    return-void
.end method

.method public shouldTrack()Z
    .locals 3

    .line 101
    invoke-static {}, Lcom/mopub/common/MoPub;->getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubConversionTracker;->mWantToTrack:Ljava/lang/String;

    .line 107
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
