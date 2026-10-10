.class public Lcom/mopub/common/MoPub;
.super Ljava/lang/Object;
.source "MoPub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/MoPub$BrowserAgent;,
        Lcom/mopub/common/MoPub$LocationAwareness;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field private static final DEFAULT_LOCATION_REFRESH_TIME_MILLIS:J = 0xea60L

.field private static final MOPUB_REWARDED_VIDEOS:Ljava/lang/String; = "com.mopub.mobileads.MoPubRewardedVideos"

.field private static final MOPUB_REWARDED_VIDEO_MANAGER:Ljava/lang/String; = "com.mopub.mobileads.MoPubRewardedVideoManager"

.field public static final SDK_VERSION:Ljava/lang/String; = "5.1.0"

.field private static sAdvancedBiddingEnabled:Z = true

.field private static sAdvancedBiddingTokens:Lcom/mopub/common/AdvancedBiddingTokens; = null

.field private static volatile sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent; = null
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sIsBrowserAgentOverriddenByClient:Z = false

.field private static volatile sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness; = null
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sLocationPrecision:I = 0x6

.field private static volatile sMinimumLocationRefreshTimeMillis:J = 0xea60L

.field private static sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

.field private static sSdkInitialized:Z

.field private static sSearchedForUpdateActivityMethod:Z

.field private static sUpdateActivityMethod:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    sput-object v0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 64
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    sput-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCollectPersonalInformation()Z
    .locals 1

    .line 201
    sget-object v0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static clearAdvancedBidders()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 331
    sput-object v0, Lcom/mopub/common/MoPub;->sAdvancedBiddingTokens:Lcom/mopub/common/AdvancedBiddingTokens;

    .line 332
    sput-object v0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 v1, 0x0

    .line 333
    sput-boolean v1, Lcom/mopub/common/MoPub;->sSdkInitialized:Z

    .line 334
    sput-object v0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    return-void
.end method

.method public static disableViewability(Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;)V
    .locals 0
    .param p0    # Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 275
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->disable()V

    return-void
.end method

.method static getAdvancedBiddingTokensJson(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 206
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 208
    invoke-static {}, Lcom/mopub/common/MoPub;->isAdvancedBiddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/common/MoPub;->sAdvancedBiddingTokens:Lcom/mopub/common/AdvancedBiddingTokens;

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Lcom/mopub/common/MoPub;->sAdvancedBiddingTokens:Lcom/mopub/common/AdvancedBiddingTokens;

    invoke-virtual {v0, p0}, Lcom/mopub/common/AdvancedBiddingTokens;->getTokensAsJsonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 127
    sget-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    sget-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method

.method public static getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 75
    sget-object v0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method

.method public static getLocationPrecision()I
    .locals 1

    .line 87
    sget v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    return v0
.end method

.method public static getMinimumLocationRefreshTimeMillis()J
    .locals 2

    .line 104
    sget-wide v0, Lcom/mopub/common/MoPub;->sMinimumLocationRefreshTimeMillis:J

    return-wide v0
.end method

.method public static getPersonalInformationManager()Lcom/mopub/common/privacy/PersonalInfoManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 221
    sget-object v0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    return-object v0
.end method

.method private static initializeRewardedVideo(Landroid/app/Activity;Lcom/mopub/common/SdkConfiguration;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/SdkConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 281
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 285
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v1, 0x0

    const-string v2, "initializeRewardedVideo"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.mopub.mobileads.MoPubRewardedVideos"

    .line 286
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setAccessible()Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    .line 288
    invoke-virtual {v0, v1, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    const-class v0, Lcom/mopub/common/SdkConfiguration;

    .line 289
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Error while initializing rewarded video"

    .line 295
    invoke-static {p1, p0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string p0, "initializeRewardedVideo was called without the rewarded video module"

    .line 293
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "initializeRewardedVideo was called without the rewarded video module"

    .line 291
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/common/SdkConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/SdkInitializationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 155
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing MoPub with ad unit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 160
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "com.mopub.mobileads.MoPubRewardedVideoManager"

    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 162
    invoke-static {v0, p1}, Lcom/mopub/common/MoPub;->initializeRewardedVideo(Landroid/app/Activity;Lcom/mopub/common/SdkConfiguration;)V

    .line 165
    :cond_0
    sget-boolean v0, Lcom/mopub/common/MoPub;->sSdkInitialized:Z

    if-eqz v0, :cond_1

    const-string p0, "MoPub SDK is already initialized"

    .line 166
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 169
    sput-boolean v0, Lcom/mopub/common/MoPub;->sSdkInitialized:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    .line 175
    :cond_2
    new-instance v0, Lcom/mopub/common/CompositeSdkInitializationListener;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/mopub/common/CompositeSdkInitializationListener;-><init>(Lcom/mopub/common/SdkInitializationListener;I)V

    move-object p2, v0

    .line 179
    :goto_0
    new-instance v0, Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V

    sput-object v0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 182
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    .line 184
    new-instance p0, Lcom/mopub/common/AdvancedBiddingTokens;

    invoke-direct {p0, p2}, Lcom/mopub/common/AdvancedBiddingTokens;-><init>(Lcom/mopub/common/SdkInitializationListener;)V

    sput-object p0, Lcom/mopub/common/MoPub;->sAdvancedBiddingTokens:Lcom/mopub/common/AdvancedBiddingTokens;

    .line 185
    sget-object p0, Lcom/mopub/common/MoPub;->sAdvancedBiddingTokens:Lcom/mopub/common/AdvancedBiddingTokens;

    invoke-virtual {p1}, Lcom/mopub/common/SdkConfiguration;->getAdvancedBidders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdvancedBiddingTokens;->addAdvancedBidders(Ljava/util/List;)V

    return-void
.end method

.method public static isAdvancedBiddingEnabled()Z
    .locals 1

    .line 137
    sget-boolean v0, Lcom/mopub/common/MoPub;->sAdvancedBiddingEnabled:Z

    return v0
.end method

.method static isBrowserAgentOverriddenByClient()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 226
    sget-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    return v0
.end method

.method public static isSdkInitialized()Z
    .locals 1

    .line 192
    sget-boolean v0, Lcom/mopub/common/MoPub;->sSdkInitialized:Z

    return v0
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 271
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onBackPressed(Landroid/app/Activity;)V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 239
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onCreate(Landroid/app/Activity;)V

    .line 240
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 267
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 249
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onRestart(Landroid/app/Activity;)V

    .line 259
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 253
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onResume(Landroid/app/Activity;)V

    .line 254
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStart(Landroid/app/Activity;)V

    .line 245
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 263
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public static resetBrowserAgent()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    sput-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    const/4 v0, 0x0

    .line 233
    sput-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    return-void
.end method

.method public static setAdvancedBiddingEnabled(Z)V
    .locals 0

    .line 133
    sput-boolean p0, Lcom/mopub/common/MoPub;->sAdvancedBiddingEnabled:Z

    return-void
.end method

.method public static setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)V
    .locals 0
    .param p0    # Lcom/mopub/common/MoPub$BrowserAgent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    sput-object p0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    const/4 p0, 0x1

    .line 111
    sput-boolean p0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    return-void
.end method

.method public static setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V
    .locals 1
    .param p0    # Lcom/mopub/common/MoPub$BrowserAgent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 116
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    sget-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Browser agent already overridden by client with value "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    sput-object p0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    :goto_0
    return-void
.end method

.method public static setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V
    .locals 0
    .param p0    # Lcom/mopub/common/MoPub$LocationAwareness;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    sput-object p0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    return-void
.end method

.method public static setLocationPrecision(I)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x6

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    return-void
.end method

.method public static setMinimumLocationRefreshTimeMillis(J)V
    .locals 0

    .line 100
    sput-wide p0, Lcom/mopub/common/MoPub;->sMinimumLocationRefreshTimeMillis:J

    return-void
.end method

.method static setPersonalInfoManager(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0
    .param p0    # Lcom/mopub/common/privacy/PersonalInfoManager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    sput-object p0, Lcom/mopub/common/MoPub;->sPersonalInfoManager:Lcom/mopub/common/privacy/PersonalInfoManager;

    return-void
.end method

.method static updateActivity(Landroid/app/Activity;)V
    .locals 6
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 301
    sget-boolean v0, Lcom/mopub/common/MoPub;->sSearchedForUpdateActivityMethod:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 302
    sput-boolean v2, Lcom/mopub/common/MoPub;->sSearchedForUpdateActivityMethod:Z

    :try_start_0
    const-string v0, "com.mopub.mobileads.MoPubRewardedVideoManager"

    .line 304
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "updateActivity"

    .line 306
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/mopub/common/util/Reflection;->getDeclaredMethodWithTraversal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/MoPub;->sUpdateActivityMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :catch_0
    :cond_0
    sget-object v0, Lcom/mopub/common/MoPub;->sUpdateActivityMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 317
    :try_start_1
    sget-object v0, Lcom/mopub/common/MoPub;->sUpdateActivityMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "Error while attempting to access the update activity method - this should not have happened"

    .line 322
    invoke-static {v0, p0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v0, "Error while attempting to access the update activity method - this should not have happened"

    .line 319
    invoke-static {v0, p0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
