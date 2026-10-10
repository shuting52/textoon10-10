.class public Lcom/mopub/mobileads/WebViewCacheService$Config;
.super Ljava/lang/Object;
.source "WebViewCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/WebViewCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWeakInterstitial:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/Interstitial;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Lcom/mopub/mobileads/BaseWebView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/Interstitial;Lcom/mopub/common/ExternalViewabilitySessionManager;)V
    .locals 0
    .param p1    # Lcom/mopub/mobileads/BaseWebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mobileads/Interstitial;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/common/ExternalViewabilitySessionManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    .line 37
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWeakInterstitial:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p3, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-void
.end method


# virtual methods
.method public getViewabilityManager()Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mViewabilityManager:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object v0
.end method

.method public getWeakInterstitial()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/Interstitial;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWeakInterstitial:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getWebView()Lcom/mopub/mobileads/BaseWebView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/WebViewCacheService$Config;->mWebView:Lcom/mopub/mobileads/BaseWebView;

    return-object v0
.end method
