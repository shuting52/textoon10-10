.class public Lcom/facebook/ads/internal/settings/AdInternalSettings;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z = false

.field private static final b:Ljava/lang/String; = "AdInternalSettings"

.field private static final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Z

.field private static k:Z

.field private static l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->c:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Ljava/util/Collection;

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Ljava/util/Collection;

    const-string v1, "sdk"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Ljava/util/Collection;

    const-string v1, "google_sdk"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Ljava/util/Collection;

    const-string v1, "vbox86p"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Ljava/util/Collection;

    const-string v1, "vbox86tp"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->a:Z

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test mode device hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "When testing your app with Facebook\'s ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\");"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addTestDevice(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->c:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addTestDevices(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->c:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static clearTestDevices()V
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public static getMediationService()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getUrlPrefix()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebugBuild()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->j:Z

    return v0
.end method

.method public static isExplicitTestMode()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->e:Z

    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .locals 4

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isExplicitTestMode()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->d:Ljava/util/Collection;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "FBAdPrefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "deviceIdHash"

    const/4 v3, 0x0

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "deviceIdHash"

    sget-object v3, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    sget-object p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->c:Ljava/util/Collection;

    sget-object v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    sget-object p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->a(Ljava/lang/String;)V

    return v2

    :cond_3
    return v1
.end method

.method public static isVideoAutoplay()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->k:Z

    return v0
.end method

.method public static isVideoAutoplayOnMobile()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->l:Z

    return v0
.end method

.method public static isVisibleAnimation()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->f:Z

    return v0
.end method

.method public static setDebugBuild(Z)V
    .locals 0

    sput-boolean p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->j:Z

    return-void
.end method

.method public static setMediationService(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->h:Ljava/lang/String;

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->e:Z

    return-void
.end method

.method public static setUrlPrefix(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->g:Ljava/lang/String;

    return-void
.end method

.method public static setVideoAutoplay(Z)V
    .locals 0

    sput-boolean p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->k:Z

    return-void
.end method

.method public static setVideoAutoplayOnMobile(Z)V
    .locals 0

    sput-boolean p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->l:Z

    return-void
.end method

.method public static setVisibleAnimation(Z)V
    .locals 0

    sput-boolean p0, Lcom/facebook/ads/internal/settings/AdInternalSettings;->f:Z

    return-void
.end method
