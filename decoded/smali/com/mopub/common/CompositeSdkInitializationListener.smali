.class Lcom/mopub/common/CompositeSdkInitializationListener;
.super Ljava/lang/Object;
.source "CompositeSdkInitializationListener.java"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# instance fields
.field private final mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTimes:I


# direct methods
.method public constructor <init>(Lcom/mopub/common/SdkInitializationListener;I)V
    .locals 0
    .param p1    # Lcom/mopub/common/SdkInitializationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mopub/common/CompositeSdkInitializationListener;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    .line 28
    iput p2, p0, Lcom/mopub/common/CompositeSdkInitializationListener;->mTimes:I

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/CompositeSdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/mopub/common/CompositeSdkInitializationListener;->mSdkInitializationListener:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 2

    .line 33
    iget v0, p0, Lcom/mopub/common/CompositeSdkInitializationListener;->mTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/common/CompositeSdkInitializationListener;->mTimes:I

    .line 34
    iget v0, p0, Lcom/mopub/common/CompositeSdkInitializationListener;->mTimes:I

    if-gtz v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mopub/common/CompositeSdkInitializationListener$1;

    invoke-direct {v1, p0}, Lcom/mopub/common/CompositeSdkInitializationListener$1;-><init>(Lcom/mopub/common/CompositeSdkInitializationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
