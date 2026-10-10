.class public final Lcom/google/ads/mediation/facebook/FacebookAdapter;
.super Ljava/lang/Object;
.source "FacebookAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookExtrasBundleBuilder;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookReward;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;,
        Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;
    }
.end annotation


# static fields
.field private static final DRAWABLE_FUTURE_TIMEOUT_SECONDS:I = 0xa

.field public static final KEY_AD_VIEW_ATTRIBUTES:Ljava/lang/String; = "ad_view_attributes"

.field public static final KEY_AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final KEY_BACKGROUND_COLOR:Ljava/lang/String; = "background_color"

.field public static final KEY_BUTTON_BORDER_COLOR:Ljava/lang/String; = "button_border_color"

.field public static final KEY_BUTTON_COLOR:Ljava/lang/String; = "button_color"

.field public static final KEY_BUTTON_TEXT_COLOR:Ljava/lang/String; = "button_text_color"

.field public static final KEY_DESCRIPTION_TEXT_COLOR:Ljava/lang/String; = "description_text_color"

.field public static final KEY_DESCRIPTION_TEXT_SIZE:Ljava/lang/String; = "description_text_size"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_IS_BOLD:Ljava/lang/String; = "is_bold"

.field public static final KEY_IS_ITALIC:Ljava/lang/String; = "is_italic"

.field public static final KEY_SOCIAL_CONTEXT_ASSET:Ljava/lang/String; = "social_context"

.field public static final KEY_STYLE:Ljava/lang/String; = "style"

.field public static final KEY_SUBTITLE_ASSET:Ljava/lang/String; = "subtitle"

.field public static final KEY_TITLE_TEXT_COLOR:Ljava/lang/String; = "title_text_color"

.field public static final KEY_TITLE_TEXT_SIZE:Ljava/lang/String; = "title_text_size"

.field public static final KEY_TYPEFACE:Ljava/lang/String; = "typeface"

.field private static final MAX_STAR_RATING:I = 0x5

.field private static final PLACEMENT_PARAMETER:Ljava/lang/String; = "pubid"

.field private static final TAG:Ljava/lang/String; = "FacebookAdapter"


# instance fields
.field private mAdView:Lcom/facebook/ads/AdView;

.field private mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

.field private mContext:Landroid/content/Context;

.field private mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

.field private mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private mIsAdChoicesIconExpandable:Z

.field private mIsImpressionRecorded:Z

.field private mIsInitialized:Z

.field private mMediaView:Lcom/facebook/ads/MediaView;

.field private mNativeAd:Lcom/facebook/ads/NativeAd;

.field private mNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

.field private mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

.field private mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

.field private mWrappedAdView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsAdChoicesIconExpandable:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsImpressionRecorded:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/google/ads/mediation/facebook/FacebookAdapter;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsImpressionRecorded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mMediaView:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsAdChoicesIconExpandable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationBannerListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/AdError;)I
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->convertErrorCode(Lcom/facebook/ads/AdError;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/google/android/gms/ads/mediation/MediationNativeListener;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    return-object p0
.end method

.method private buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 432
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdRequest;->taggedForChildDirectedTreatment()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->setIsChildDirected(Z)V

    :cond_1
    return-void
.end method

.method private convertErrorCode(Lcom/facebook/ads/AdError;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 415
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result p1

    const/16 v1, 0x7d0

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_1
    const/4 p1, 0x3

    return p1

    :cond_1
    :pswitch_2
    const/4 p1, 0x2

    return p1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/facebook/ads/AdSize;
    .locals 2

    .line 657
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 658
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {v1}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 659
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 664
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->pixelToDip(I)I

    move-result p1

    .line 665
    sget-object p2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-virtual {p2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 666
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 669
    :cond_1
    sget-object p2, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    invoke-virtual {p2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 670
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    return-object p1

    .line 673
    :cond_2
    sget-object p2, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-virtual {p2}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 674
    sget-object p1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getGMSVersionCode(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 686
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static isValidRequestParameters(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "FacebookAdapter"

    const-string p1, "Failed to request ad, Context is null."

    .line 389
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "FacebookAdapter"

    const-string p1, "Failed to request ad, serverParameters is null."

    .line 394
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p0, "pubid"

    .line 398
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "FacebookAdapter"

    const-string p1, "Failed to request ad, placementId is null or empty."

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private pixelToDip(I)I
    .locals 1

    .line 680
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 681
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getBannerView()Landroid/view/View;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mContext:Landroid/content/Context;

    .line 277
    iput-object p4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 278
    invoke-static {p1, p5}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->isValidRequestParameters(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 279
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p1, p0, p3}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    return-void

    :cond_0
    const-string p2, "pubid"

    .line 283
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 284
    new-instance p4, Lcom/facebook/ads/RewardedVideoAd;

    invoke-direct {p4, p1, p2}, Lcom/facebook/ads/RewardedVideoAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    .line 285
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    new-instance p2, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$RewardedVideoListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V

    invoke-virtual {p1, p2}, Lcom/facebook/ads/RewardedVideoAd;->setAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)V

    .line 286
    iput-boolean p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsInitialized:Z

    .line 287
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsInitialized:Z

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 294
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-nez p2, :cond_0

    const-string p1, "FacebookAdapter"

    const-string p2, "Failed to request rewarded video ad, adapter has not been initialized."

    .line 295
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 296
    iput-boolean p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsInitialized:Z

    .line 297
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz p2, :cond_2

    .line 298
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {p2}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 302
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ADMOB_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->getGMSVersionCode(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/facebook/ads/RewardedVideoAd;->loadAd(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 170
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->destroy()V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mMediaView:Lcom/facebook/ads/MediaView;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mMediaView:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->destroy()V

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationBannerListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 199
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    .line 200
    invoke-static {p1, p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->isValidRequestParameters(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p2

    const/4 p6, 0x1

    if-nez p2, :cond_0

    .line 201
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {p1, p0, p6}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    :cond_0
    if-nez p4, :cond_1

    const-string p1, "FacebookAdapter"

    const-string p2, "Fail to request banner ad, adSize is null"

    .line 206
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    invoke-interface {p1, p0, p6}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    :cond_1
    const-string p2, "pubid"

    .line 211
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 213
    invoke-direct {p0, p1, p4}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->getAdSize(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)Lcom/facebook/ads/AdSize;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p1, "FacebookAdapter"

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The input ad size "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported at this moment."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 215
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mBannerListener:Lcom/google/android/gms/ads/mediation/MediationBannerListener;

    const/4 p2, 0x3

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/ads/mediation/MediationBannerListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationBannerAdapter;I)V

    return-void

    .line 220
    :cond_2
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ADMOB_"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->getGMSVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 221
    new-instance p6, Lcom/facebook/ads/AdView;

    invoke-direct {p6, p1, p2, p3}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p6, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    .line 222
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    new-instance p3, Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;

    const/4 p6, 0x0

    invoke-direct {p3, p0, p6}, Lcom/google/ads/mediation/facebook/FacebookAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V

    invoke-virtual {p2, p3}, Lcom/facebook/ads/AdView;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 223
    invoke-direct {p0, p5}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 224
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    .line 227
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mWrappedAdView:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->loadAd()V

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 0

    .line 245
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 246
    invoke-static {p1, p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->isValidRequestParameters(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 247
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_0
    const-string p2, "pubid"

    .line 251
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 253
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ADMOB_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->getGMSVersionCode(Landroid/content/Context;)I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 254
    new-instance p3, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {p3, p1, p2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 255
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    new-instance p2, Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V

    invoke-virtual {p1, p2}, Lcom/facebook/ads/InterstitialAd;->setAdListener(Lcom/facebook/ads/InterstitialAdListener;)V

    .line 256
    invoke-direct {p0, p4}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 257
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    return-void
.end method

.method public requestNativeAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationNativeListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    .line 344
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    .line 345
    invoke-static {p1, p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->isValidRequestParameters(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 346
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void

    .line 351
    :cond_0
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isAppInstallAdRequested()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 352
    invoke-interface {p4}, Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;->isContentAdRequested()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "pubid"

    .line 359
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p5, :cond_2

    const-string p3, "expandable_icon"

    .line 363
    invoke-virtual {p5, p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mIsAdChoicesIconExpandable:Z

    .line 367
    :cond_2
    new-instance p3, Lcom/facebook/ads/MediaView;

    invoke-direct {p3, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mMediaView:Lcom/facebook/ads/MediaView;

    .line 369
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "ADMOB_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->getGMSVersionCode(Landroid/content/Context;)I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/facebook/ads/AdSettings;->setMediationService(Ljava/lang/String;)V

    .line 370
    new-instance p3, Lcom/facebook/ads/NativeAd;

    invoke-direct {p3, p1, p2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 371
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    new-instance p2, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;

    iget-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    const/4 p5, 0x0

    invoke-direct {p2, p0, p3, p4, p5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeListener;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeAd;Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;Lcom/google/ads/mediation/facebook/FacebookAdapter$1;)V

    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAd;->setAdListener(Lcom/facebook/ads/AdListener;)V

    .line 372
    invoke-direct {p0, p4}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->buildAdRequest(Lcom/google/android/gms/ads/mediation/MediationAdRequest;)V

    .line 373
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->loadAd()V

    return-void

    :cond_3
    :goto_0
    const-string p1, "FacebookAdapter"

    const-string p2, "Failed to request native ad. Both app install and content ad should be requested"

    .line 353
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mNativeListener:Lcom/google/android/gms/ads/mediation/MediationNativeListener;

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/ads/mediation/MediationNativeListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;I)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    :cond_0
    return-void
.end method

.method public showVideo()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedVideoAd:Lcom/facebook/ads/RewardedVideoAd;

    invoke-virtual {v0}, Lcom/facebook/ads/RewardedVideoAd;->show()Z

    .line 318
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 319
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    goto :goto_0

    :cond_0
    const-string v0, "FacebookAdapter"

    const-string v1, "No ads to show."

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 326
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter;->mRewardedListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    :cond_1
    :goto_0
    return-void
.end method
