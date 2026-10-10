.class final Lcom/arasthel/asyncjob/AsyncJob$1;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arasthel/asyncjob/AsyncJob;->doOnMainThread(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onMainThreadJob:Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# direct methods
.method constructor <init>(Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$1;->val$onMainThreadJob:Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$1;->val$onMainThreadJob:Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;

    invoke-interface {v0}, Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;->doInUIThread()V

    return-void
.end method
