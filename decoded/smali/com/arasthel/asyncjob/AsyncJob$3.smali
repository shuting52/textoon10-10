.class final Lcom/arasthel/asyncjob/AsyncJob$3;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arasthel/asyncjob/AsyncJob;->doInBackground(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onBackgroundJob:Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;


# direct methods
.method constructor <init>(Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$3;->val$onBackgroundJob:Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$3;->val$onBackgroundJob:Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;

    invoke-interface {v0}, Lcom/arasthel/asyncjob/AsyncJob$OnBackgroundJob;->doOnBackground()V

    return-void
.end method
