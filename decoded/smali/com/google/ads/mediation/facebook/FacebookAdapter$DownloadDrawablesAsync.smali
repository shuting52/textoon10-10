.class Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;
.super Landroid/os/AsyncTask;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadDrawablesAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
    .locals 0

    .line 956
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 957
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    return-void
.end method

.method private getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1015
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;Landroid/net/Uri;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 7

    const/4 v0, 0x0

    .line 962
    aget-object p1, p1, v0

    check-cast p1, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    .line 963
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 968
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 970
    invoke-virtual {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getImages()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 971
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 973
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    .line 975
    invoke-virtual {v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v6

    .line 976
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p1

    check-cast p1, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    .line 982
    invoke-virtual {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 983
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 990
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    invoke-virtual {v1, v2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "FacebookAdapter"

    .line 992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while waiting for future to return. Returning null as drawable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    .line 999
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 948
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0

    .line 1030
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1031
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1033
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingSuccess()V

    goto :goto_0

    .line 1035
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    invoke-interface {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 948
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
