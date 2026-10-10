.class public Lcom/arasthel/asyncjob/AsyncJob;
.super Ljava/lang/Object;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;,
        Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;,
        Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;,
        Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;,
        Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static uiHandler:Landroid/os/Handler;


# instance fields
.field private actionInBackground:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

.field private actionOnMainThread:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

.field private asyncFutureTask:Ljava/util/concurrent/FutureTask;

.field private asyncThread:Ljava/lang/Thread;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJobResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/arasthel/asyncjob/AsyncJob;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/arasthel/asyncjob/AsyncJob;)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/arasthel/asyncjob/AsyncJob;->result:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcom/arasthel/asyncjob/AsyncJob;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob;->result:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/arasthel/asyncjob/AsyncJob;)Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionInBackground:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    return-object p0
.end method

.method static synthetic access$200(Lcom/arasthel/asyncjob/AsyncJob;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/arasthel/asyncjob/AsyncJob;->onResult()V

    return-void
.end method

.method static synthetic access$300(Lcom/arasthel/asyncjob/AsyncJob;)Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionOnMainThread:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    return-object p0
.end method

.method public static doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .line 71
    new-instance v0, Lcom/arasthel/asyncjob/AsyncJob$3;

    invoke-direct {v0, p0}, Lcom/arasthel/asyncjob/AsyncJob$3;-><init>(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/FutureTask;

    return-object p0
.end method

.method public static doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/arasthel/asyncjob/AsyncJob$2;

    invoke-direct {v1, p0}, Lcom/arasthel/asyncjob/AsyncJob$2;-><init>(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/arasthel/asyncjob/AsyncJob;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arasthel/asyncjob/AsyncJob$1;

    invoke-direct {v1, p0}, Lcom/arasthel/asyncjob/AsyncJob$1;-><init>(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onResult()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionOnMainThread:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/arasthel/asyncjob/AsyncJob;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/arasthel/asyncjob/AsyncJob$5;

    invoke-direct {v1, p0}, Lcom/arasthel/asyncjob/AsyncJob$5;-><init>(Lcom/arasthel/asyncjob/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionInBackground:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->asyncFutureTask:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->asyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getActionInBackground()Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionInBackground:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    return-object v0
.end method

.method public getActionOnResult()Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionOnMainThread:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public setActionInBackground(Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionInBackground:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    return-void
.end method

.method public setActionOnResult(Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionOnMainThread:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public start()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->actionInBackground:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Lcom/arasthel/asyncjob/AsyncJob$4;

    invoke-direct {v0, p0}, Lcom/arasthel/asyncjob/AsyncJob$4;-><init>(Lcom/arasthel/asyncjob/AsyncJob;)V

    .line 96
    invoke-virtual {p0}, Lcom/arasthel/asyncjob/AsyncJob;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/arasthel/asyncjob/AsyncJob;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    iput-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->asyncFutureTask:Ljava/util/concurrent/FutureTask;

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/arasthel/asyncjob/AsyncJob;->asyncThread:Ljava/lang/Thread;

    .line 100
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob;->asyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
