.class public Lcom/mopub/network/Networking;
.super Ljava/lang/Object;
.source "Networking.java"


# static fields
.field static final CACHE_DIRECTORY_NAME:Ljava/lang/String; = "mopub-volley-cache"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field private static volatile sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

.field private static volatile sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

.field private static sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

.field private static sUseHttps:Z

.field private static volatile sUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http.agent"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearForTesting()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    const/4 v1, 0x0

    .line 183
    :try_start_0
    sput-object v1, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 184
    sput-object v1, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    .line 185
    sput-object v1, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0

    throw v1
.end method

.method public static getBaseUrlScheme()Ljava/lang/String;
    .locals 1

    .line 232
    invoke-static {}, Lcom/mopub/network/Networking;->shouldUseHttps()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    goto :goto_0

    :cond_0
    const-string v0, "http"

    :goto_0
    return-object v0
.end method

.method public static getCachedUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 174
    sget-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    sget-object v0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static getImageLoader(Landroid/content/Context;)Lcom/mopub/volley/toolbox/ImageLoader;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 93
    sget-object v0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    if-nez v0, :cond_1

    .line 96
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    if-nez v0, :cond_0

    .line 99
    invoke-static {p0}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    .line 100
    invoke-static {p0}, Lcom/mopub/common/util/DeviceUtils;->memoryCacheSizeBytes(Landroid/content/Context;)I

    move-result v2

    .line 101
    new-instance v3, Lcom/mopub/network/Networking$1;

    invoke-direct {v3, v2}, Lcom/mopub/network/Networking$1;-><init>(I)V

    .line 111
    new-instance v2, Lcom/mopub/network/MaxWidthImageLoader;

    new-instance v4, Lcom/mopub/network/Networking$2;

    invoke-direct {v4, v3}, Lcom/mopub/network/Networking$2;-><init>(Landroid/support/v4/util/LruCache;)V

    invoke-direct {v2, v0, p0, v4}, Lcom/mopub/network/MaxWidthImageLoader;-><init>(Lcom/mopub/volley/RequestQueue;Landroid/content/Context;Lcom/mopub/volley/toolbox/ImageLoader$ImageCache;)V

    .line 122
    sput-object v2, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;

    move-object v0, v2

    .line 124
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

.method public static getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 46
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    return-object v0
.end method

.method public static getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 62
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    .line 69
    invoke-static {v0}, Lcom/mopub/network/CustomSSLSocketFactory;->getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/mopub/network/RequestQueueHttpStack;

    .line 74
    invoke-static {p0}, Lcom/mopub/network/Networking;->getUrlRewriter(Landroid/content/Context;)Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Lcom/mopub/network/RequestQueueHttpStack;-><init>(Ljava/lang/String;Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 76
    new-instance v0, Lcom/mopub/volley/toolbox/BasicNetwork;

    invoke-direct {v0, v3}, Lcom/mopub/volley/toolbox/BasicNetwork;-><init>(Lcom/mopub/volley/toolbox/BaseHttpStack;)V

    .line 77
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mopub-volley-cache"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p0, Lcom/mopub/volley/toolbox/DiskBasedCache;

    const-wide/32 v3, 0xa00000

    .line 80
    invoke-static {v2, v3, v4}, Lcom/mopub/common/util/DeviceUtils;->diskCacheSizeBytes(Ljava/io/File;J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/mopub/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 81
    new-instance v2, Lcom/mopub/network/MoPubRequestQueue;

    invoke-direct {v2, p0, v0}, Lcom/mopub/network/MoPubRequestQueue;-><init>(Lcom/mopub/volley/Cache;Lcom/mopub/volley/Network;)V

    .line 82
    sput-object v2, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;

    .line 83
    invoke-virtual {v2}, Lcom/mopub/network/MoPubRequestQueue;->start()V

    move-object v0, v2

    .line 85
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

.method public static getScheme()Ljava/lang/String;
    .locals 1

    const-string v0, "https"

    return-object v0
.end method

.method public static getUrlRewriter(Landroid/content/Context;)Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 54
    sget-object p0, Lcom/mopub/network/Networking;->sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    if-nez p0, :cond_0

    .line 55
    new-instance p0, Lcom/mopub/network/PlayServicesUrlRewriter;

    invoke-direct {p0}, Lcom/mopub/network/PlayServicesUrlRewriter;-><init>()V

    sput-object p0, Lcom/mopub/network/Networking;->sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    .line 57
    :cond_0
    sget-object p0, Lcom/mopub/network/Networking;->sUrlRewriter:Lcom/mopub/volley/toolbox/HurlStack$UrlRewriter;

    return-object p0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 140
    const-class v1, Lcom/mopub/network/Networking;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 144
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 145
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 149
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_1
    sget-object p0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    :try_start_2
    sget-object p0, Lcom/mopub/network/Networking;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 158
    :goto_0
    sput-object p0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;

    move-object v0, p0

    .line 160
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static declared-synchronized setImageLoaderForTesting(Lcom/mopub/network/MaxWidthImageLoader;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    .line 195
    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->sMaxWidthImageLoader:Lcom/mopub/network/MaxWidthImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 194
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setRequestQueueForTesting(Lcom/mopub/network/MoPubRequestQueue;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    .line 190
    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->sRequestQueue:Lcom/mopub/network/MoPubRequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 189
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUserAgentForTesting(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/mopub/network/Networking;

    monitor-enter v0

    .line 200
    :try_start_0
    sput-object p0, Lcom/mopub/network/Networking;->sUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v0

    throw p0
.end method

.method public static shouldUseHttps()Z
    .locals 1

    .line 211
    sget-boolean v0, Lcom/mopub/network/Networking;->sUseHttps:Z

    return v0
.end method

.method public static useHttps(Z)V
    .locals 0

    .line 207
    sput-boolean p0, Lcom/mopub/network/Networking;->sUseHttps:Z

    return-void
.end method
