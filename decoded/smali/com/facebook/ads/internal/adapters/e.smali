.class public Lcom/facebook/ads/internal/adapters/e;
.super Lcom/facebook/ads/internal/adapters/ab;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/x;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/google/android/gms/ads/formats/NativeAd;

.field private d:Lcom/facebook/ads/internal/adapters/ac;

.field private e:Lcom/google/android/gms/ads/formats/NativeAdView;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/net/Uri;

.field private i:Landroid/net/Uri;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/ab;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    return-object p0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Lcom/google/android/gms/ads/formats/NativeAd;)Lcom/google/android/gms/ads/formats/NativeAd;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->l:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/n/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E()Lcom/facebook/ads/internal/n/c;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/n/c;->b:Lcom/facebook/ads/internal/n/c;

    return-object v0
.end method

.method public F()Lcom/facebook/ads/internal/adapters/g;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->c:Lcom/facebook/ads/internal/adapters/g;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/ac;",
            "Lcom/facebook/ads/internal/m/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/n/e$d;",
            ")V"
        }
    .end annotation

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object p5

    invoke-static {p5}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " Loading"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    const-string p4, "ad_unit_id"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "creative_types"

    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    :try_start_0
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x29f7957d

    if-eq v7, v8, :cond_1

    const v8, 0x34ad3050

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "page_post"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const-string v7, "app_install"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    :cond_2
    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v4, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object p4

    invoke-static {p4}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " AN server error"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/facebook/ads/internal/protocol/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string p3, "Server Error"

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :cond_4
    move p5, v3

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    if-nez p5, :cond_6

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    new-instance p2, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p5, :cond_7

    new-instance p3, Lcom/facebook/ads/internal/adapters/e$1;

    invoke-direct {p3, p0, p1}, Lcom/facebook/ads/internal/adapters/e$1;-><init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_7
    if-eqz v4, :cond_8

    new-instance p3, Lcom/facebook/ads/internal/adapters/e$2;

    invoke-direct {p3, p0, p1}, Lcom/facebook/ads/internal/adapters/e$2;-><init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_8
    new-instance p3, Lcom/facebook/ads/internal/adapters/e$3;

    invoke-direct {p3, p0, p1}, Lcom/facebook/ads/internal/adapters/e$3;-><init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void

    :cond_9
    :goto_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object p4

    invoke-static {p4}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " AN server error"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/facebook/ads/internal/protocol/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string p3, "Server Error"

    invoke-static {p1, p3}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    :goto_0
    sget-object p1, Lcom/facebook/ads/internal/adapters/e;->a:Ljava/lang/String;

    const-string p2, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    instance-of v3, v2, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v3, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    move v1, v0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    instance-of v2, v2, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v2, :cond_5

    new-instance v2, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/formats/NativeContentAdView;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    new-instance v2, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;-><init>(Landroid/content/Context;)V

    :goto_2
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/formats/NativeAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    instance-of p1, p1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    instance-of p1, p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    :cond_8
    :goto_3
    new-instance p1, Lcom/facebook/ads/internal/adapters/e$4;

    invoke-direct {p1, p0}, Lcom/facebook/ads/internal/adapters/e$4;-><init>(Lcom/facebook/ads/internal/adapters/e;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    invoke-interface {p1, p0}, Lcom/facebook/ads/internal/adapters/ac;->b(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b_()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    instance-of v2, v1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    :cond_2
    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/facebook/ads/internal/n/f;
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/n/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/facebook/ads/internal/n/f;
    .locals 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/n/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b0

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/facebook/ads/internal/n/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->b_()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->m:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lcom/facebook/ads/internal/n/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Lcom/facebook/ads/internal/n/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Lcom/facebook/ads/internal/n/j;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/n/j;->a:Lcom/facebook/ads/internal/n/j;

    return-object v0
.end method
