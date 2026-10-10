.class public Lcom/mopub/common/util/AsyncTasks;
.super Ljava/lang/Object;
.source "AsyncTasks.java"


# static fields
.field private static sExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    invoke-static {}, Lcom/mopub/common/util/AsyncTasks;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 1

    .line 20
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static varargs safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TP;**>;[TP;)V"
        }
    .end annotation

    const-string v0, "Unable to execute null AsyncTask."

    .line 33
    invoke-static {p0, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AsyncTask must be executed on the main thread"

    .line 34
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkUiThread(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 25
    sput-object p0, Lcom/mopub/common/util/AsyncTasks;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
