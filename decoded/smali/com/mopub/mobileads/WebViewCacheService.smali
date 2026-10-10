.class public Lcom/mopub/mobileads/WebViewCacheService;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;,
        Lcom/mopub/mobileads/WebViewCacheService$Config;
    }
.end annotation


# static fields
.field static final MAX_SIZE:I = 0x32
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field static final TRIM_CACHE_FREQUENCY_MILLIS:J = 0xdbba0L
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field static final sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final sWebViewConfigs:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/mopub/mobileads/WebViewCacheService$Config;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;-><init>(Lcom/mopub/mobileads/WebViewCacheService$1;)V

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static getWebViewConfigs()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/mopub/mobileads/WebViewCacheService$Config;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    return-object v0
.end method

.method public static popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;
    .locals 1
    .param p0    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/WebViewCacheService$Config;

    return-object p0
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p0    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    sput-object p0, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public static storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 2
    .param p0    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/mopub/mobileads/Interstitial;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/BaseWebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/ExternalViewabilitySessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lcom/mopub/mobileads/WebViewCacheService;->trimCache()V

    .line 107
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const-string p0, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again."

    .line 108
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    new-instance v1, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-direct {v1, p2, p1, p3}, Lcom/mopub/mobileads/WebViewCacheService$Config;-><init>(Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/common/ExternalViewabilitySessionManager;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized trimCache()V
    .locals 5
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/mobileads/WebViewCacheService;

    monitor-enter v0

    .line 126
    :try_start_0
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-virtual {v3}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getWeakInterstitial()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/WebViewCacheService$Config;

    invoke-virtual {v2}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endDisplaySession()V

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 138
    :cond_1
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sWebViewConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 140
    sget-object v1, Lcom/mopub/mobileads/WebViewCacheService;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/mopub/mobileads/WebViewCacheService;->sTrimCacheRunnable:Lcom/mopub/mobileads/WebViewCacheService$TrimCacheRunnable;

    const-wide/32 v3, 0xdbba0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 125
    monitor-exit v0

    throw v1
.end method
