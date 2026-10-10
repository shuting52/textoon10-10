.class Lcom/mopub/common/AvidViewabilitySession;
.super Ljava/lang/Object;
.source "AvidViewabilitySession.java"

# interfaces
.implements Lcom/mopub/common/ExternalViewabilitySession;


# static fields
.field private static final AVID_AD_SESSION_MANAGER_PATH:Ljava/lang/String; = "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

.field private static final AVID_KEY:Ljava/lang/String; = "avid"

.field private static final AVID_MANAGER_PATH:Ljava/lang/String; = "com.integralads.avid.library.mopub.AvidManager"

.field private static final EXTERNAL_AVID_AD_SESSION_CONTEXT_PATH:Ljava/lang/String; = "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

.field private static sAvidAdSessionContextDeferred:Ljava/lang/Object;

.field private static sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

.field private static sIsVendorDisabled:Z

.field private static sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;


# instance fields
.field private mAvidDisplayAdSession:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAvidVideoAdSession:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static disable()V
    .locals 1

    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/mopub/common/AvidViewabilitySession;->sIsVendorDisabled:Z

    return-void
.end method

.method private static getAvidAdSessionContextDeferred()Ljava/lang/Object;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 63
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "5.1.0"

    aput-object v4, v2, v5

    .line 66
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    .line 63
    invoke-static {v0, v1, v3, v2}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate Avid deferred ad session context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextDeferred:Ljava/lang/Object;

    return-object v0
.end method

.method private static getAvidAdSessionContextNonDeferred()Ljava/lang/Object;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 78
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 84
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "5.1.0"

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate Avid ad session context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sAvidAdSessionContextNonDeferred:Ljava/lang/Object;

    return-object v0
.end method

.method private handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;)V
    .locals 1
    .param p1    # Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/mopub/common/AvidViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;Ljava/lang/String;)V

    return-void
.end method

.method private handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v2, "getAvidVideoPlaybackListener"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    .line 429
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getAvidMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 432
    const-class p1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    .line 435
    :cond_0
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    return-void
.end method

.method static isEnabled()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/mopub/common/AvidViewabilitySession;->sIsVendorDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isViewabilityEnabledViaReflection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isViewabilityEnabledViaReflection()Z
    .locals 2

    .line 45
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

    .line 46
    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "un"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "available via reflection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 52
    :cond_1
    sget-object v0, Lcom/mopub/common/AvidViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    .line 142
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->getAvidAdSessionContextDeferred()Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->getAvidAdSessionContextNonDeferred()Ljava/lang/Object;

    move-result-object p3

    .line 144
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 152
    :goto_1
    :try_start_0
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v3, "startAvidDisplayAdSession"

    invoke-direct {v2, v1, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

    .line 153
    invoke-virtual {v2, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 154
    invoke-virtual {v1, v2, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    const-string v1, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 155
    invoke-virtual {p1, v1, p3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    .line 158
    new-instance p1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object p3, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const-string v1, "registerAdView"

    invoke-direct {p1, p3, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p3, Landroid/view/View;

    .line 159
    invoke-virtual {p1, p3, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    const-class p2, Landroid/app/Activity;

    .line 160
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    const/4 p1, 0x1

    .line 163
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to execute Avid start display session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 166
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public createVideoSession(Landroid/app/Activity;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 247
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 248
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 250
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 270
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v2, "startAvidManagedVideoAdSession"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.integralads.avid.library.mopub.session.AvidAdSessionManager"

    .line 271
    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 272
    invoke-virtual {v0, v1, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    const-string v1, "com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext"

    .line 273
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->getAvidAdSessionContextNonDeferred()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    .line 276
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v2, "registerAdView"

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Landroid/view/View;

    .line 277
    invoke-virtual {v0, v1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p2

    const-class v0, Landroid/app/Activity;

    .line 278
    invoke-virtual {p2, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 279
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    const-string p1, "avid"

    .line 281
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 282
    new-instance p1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object p2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v0, "injectJavaScriptResource"

    invoke-direct {p1, p2, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p2, Ljava/lang/String;

    const-string v0, "avid"

    .line 283
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 287
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 288
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 289
    new-instance p3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object p4, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v0, "injectJavaScriptResource"

    invoke-direct {p3, p4, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p4, Ljava/lang/String;

    .line 290
    invoke-virtual {p3, p4, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p2

    .line 291
    invoke-virtual {p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to execute Avid start video session: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 298
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public endDisplaySession()Ljava/lang/Boolean;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 220
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Avid DisplayAdSession unexpectedly null."

    .line 225
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 226
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const-string v3, "endSession"

    invoke-direct {v0, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 235
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute Avid end session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 238
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public endVideoSession()Ljava/lang/Boolean;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 393
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Avid VideoAdSession unexpectedly null."

    .line 398
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 399
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 406
    :cond_1
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v3, "endSession"

    invoke-direct {v0, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 408
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute Avid end video session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 411
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "AVID"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public invalidate()Ljava/lang/Boolean;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 119
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 123
    :cond_0
    iput-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    .line 124
    iput-object v1, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onVideoPrepared(Landroid/view/View;I)Ljava/lang/Boolean;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 334
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 341
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 347
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 353
    :cond_0
    iget-object p2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const-string p1, "Avid VideoAdSession unexpectedly null."

    .line 354
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 355
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 359
    :cond_1
    :try_start_0
    sget-object p2, Lcom/mopub/common/AvidViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string p2, "error"

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/AvidViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;Ljava/lang/String;)V

    .line 377
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    return-object p2

    .line 372
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mopub/common/AvidViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;)V

    .line 373
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    return-object p2

    .line 380
    :goto_0
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected video event type: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 381
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute Avid video event for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getAvidMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 386
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerVideoObstruction(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 305
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 307
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "Avid VideoAdSession unexpectedly null."

    .line 312
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 313
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 320
    :cond_1
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidVideoAdSession:Ljava/lang/Object;

    const-string v3, "registerFriendlyObstruction"

    invoke-direct {v0, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/view/View;

    .line 321
    invoke-virtual {v0, v2, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    const/4 p1, 0x1

    .line 324
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register Avid video obstructions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 327
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public startDeferredDisplaySession(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 173
    invoke-static {}, Lcom/mopub/common/AvidViewabilitySession;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p1, "Avid DisplayAdSession unexpectedly null."

    .line 178
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 179
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 189
    :cond_1
    :try_start_0
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v3, "getInstance"

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.integralads.avid.library.mopub.AvidManager"

    .line 190
    invoke-virtual {v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v3, "registerActivity"

    invoke-direct {v1, v0, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/app/Activity;

    .line 194
    invoke-virtual {v1, v0, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 197
    new-instance p1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v0, p0, Lcom/mopub/common/AvidViewabilitySession;->mAvidDisplayAdSession:Ljava/lang/Object;

    const-string v1, "getAvidDeferredAdSessionListener"

    invoke-direct {p1, v0, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Avid AdSessionListener unexpectedly null."

    .line 202
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 203
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 206
    :cond_2
    new-instance v0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v1, "recordReadyEvent"

    invoke-direct {v0, p1, v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    const/4 p1, 0x1

    .line 209
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to execute Avid record deferred session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 213
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
