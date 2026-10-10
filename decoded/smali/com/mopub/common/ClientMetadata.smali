.class public Lcom/mopub/common/ClientMetadata;
.super Ljava/lang/Object;
.source "ClientMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    }
.end annotation


# static fields
.field private static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field private static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field private static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field private static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field private static final TYPE_ETHERNET:I = 0x9

.field private static final UNKNOWN_NETWORK:I = -0x1

.field private static volatile sInstance:Lcom/mopub/common/ClientMetadata;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private final mAppPackageName:Ljava/lang/String;

.field private final mAppVersion:Ljava/lang/String;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManufacturer:Ljava/lang/String;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mDeviceOsVersion:Ljava/lang/String;

.field private final mDeviceProduct:Ljava/lang/String;

.field private mIsoCountryCode:Ljava/lang/String;

.field private final mNetworkOperator:Ljava/lang/String;

.field private mNetworkOperatorForUrl:Ljava/lang/String;

.field private mNetworkOperatorName:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private mSimIsoCountryCode:Ljava/lang/String;

.field private mSimOperator:Ljava/lang/String;

.field private mSimOperatorName:Ljava/lang/String;

.field private final moPubIdentifier:Lcom/mopub/common/privacy/MoPubIdentifier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 144
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    .line 145
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    .line 146
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    .line 147
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    const-string v0, "5.1.0"

    .line 149
    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 167
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-ne v1, v2, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 172
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    .line 175
    :cond_1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 177
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 179
    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    const-string v1, ""

    .line 180
    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    .line 185
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 187
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 190
    :catch_1
    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    .line 194
    :cond_3
    :goto_2
    new-instance p1, Lcom/mopub/common/privacy/MoPubIdentifier;

    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/mopub/common/privacy/MoPubIdentifier;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/common/ClientMetadata;->moPubIdentifier:Lcom/mopub/common/privacy/MoPubIdentifier;

    return-void
.end method

.method public static clearForTesting()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 425
    sput-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    return-void
.end method

.method private static getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 208
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 211
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Failed to retrieve PackageInfo#versionName."

    .line 213
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 402
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz p0, :cond_0

    .line 407
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 408
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/mopub/common/ClientMetadata;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 128
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    .line 131
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 133
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 108
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/mopub/common/ClientMetadata;

    invoke-direct {v0, p0}, Lcom/mopub/common/ClientMetadata;-><init>(Landroid/content/Context;)V

    .line 114
    sput-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 116
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static setInstance(Lcom/mopub/common/ClientMetadata;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    const-class v0, Lcom/mopub/common/ClientMetadata;

    monitor-enter v0

    .line 418
    :try_start_0
    sput-object p0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 419
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    move v1, v0

    .line 242
    :cond_0
    invoke-static {v1}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->access$000(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDeviceDimensions()Landroid/graphics/Point;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceScreenHeightDip()I
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenHeightAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDeviceScreenWidthDip()I
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenWidthAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getMoPubIdentifier()Lcom/mopub/common/privacy/MoPubIdentifier;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->moPubIdentifier:Lcom/mopub/common/privacy/MoPubIdentifier;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorForUrl()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientationString()Ljava/lang/String;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "u"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v1, "p"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string v1, "l"

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v1, "s"

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIsoCountryCode()Ljava/lang/String;
    .locals 1

    .line 289
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public repopulateCountryData()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 200
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 202
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    :cond_0
    return-void
.end method
