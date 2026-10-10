.class Lcom/mopub/nativeads/NativeVideoController$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeVideoController;->preparePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/nativeads/NativeVideoController;


# direct methods
.method constructor <init>(Lcom/mopub/nativeads/NativeVideoController;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/mopub/nativeads/NativeVideoController$1;->this$0:Lcom/mopub/nativeads/NativeVideoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 3

    .line 413
    new-instance v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeVideoController$1;->this$0:Lcom/mopub/nativeads/NativeVideoController;

    invoke-static {v1}, Lcom/mopub/nativeads/NativeVideoController;->access$000(Lcom/mopub/nativeads/NativeVideoController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "exo_demo"

    invoke-direct {v0, v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
