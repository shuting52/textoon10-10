.class public Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;
.super Ljava/lang/Object;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arasthel/asyncjob/AsyncJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncJobBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JobResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private asyncAction:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/arasthel/asyncjob/AsyncJob$AsyncAction<",
            "TJobResult;>;"
        }
    .end annotation
.end field

.field private asyncResultAction:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/arasthel/asyncjob/AsyncJob;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/arasthel/asyncjob/AsyncJob<",
            "TJobResult;>;"
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/arasthel/asyncjob/AsyncJob;

    invoke-direct {v0}, Lcom/arasthel/asyncjob/AsyncJob;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;->asyncAction:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    invoke-virtual {v0, v1}, Lcom/arasthel/asyncjob/AsyncJob;->setActionInBackground(Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;)V

    .line 229
    iget-object v1, p0, Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;->asyncResultAction:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    invoke-virtual {v0, v1}, Lcom/arasthel/asyncjob/AsyncJob;->setActionOnResult(Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;)V

    .line 230
    iget-object v1, p0, Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lcom/arasthel/asyncjob/AsyncJob;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public doInBackground(Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;)Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arasthel/asyncjob/AsyncJob$AsyncAction<",
            "TJobResult;>;)",
            "Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder<",
            "TJobResult;>;"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;->asyncAction:Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    return-object p0
.end method

.method public doWhenFinished(Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;)Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;",
            ")",
            "Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder<",
            "TJobResult;>;"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;->asyncResultAction:Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    return-object p0
.end method

.method public withExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder<",
            "TJobResult;>;"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$AsyncJobBuilder;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
