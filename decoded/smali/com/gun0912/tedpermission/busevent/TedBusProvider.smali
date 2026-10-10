.class public final Lcom/gun0912/tedpermission/busevent/TedBusProvider;
.super Lcom/squareup/otto/Bus;
.source "TedBusProvider.java"


# static fields
.field private static instance:Lcom/gun0912/tedpermission/busevent/TedBusProvider;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/squareup/otto/Bus;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/gun0912/tedpermission/busevent/TedBusProvider;
    .locals 1

    .line 35
    sget-object v0, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->instance:Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    invoke-direct {v0}, Lcom/gun0912/tedpermission/busevent/TedBusProvider;-><init>()V

    sput-object v0, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->instance:Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    .line 38
    :cond_0
    sget-object v0, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->instance:Lcom/gun0912/tedpermission/busevent/TedBusProvider;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Object;)V
    .locals 2

    .line 48
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 49
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/gun0912/tedpermission/busevent/TedBusProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gun0912/tedpermission/busevent/TedBusProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/gun0912/tedpermission/busevent/TedBusProvider$1;-><init>(Lcom/gun0912/tedpermission/busevent/TedBusProvider;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
