.class Lcom/arasthel/asyncjob/AsyncJob$5;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arasthel/asyncjob/AsyncJob;->onResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arasthel/asyncjob/AsyncJob;


# direct methods
.method constructor <init>(Lcom/arasthel/asyncjob/AsyncJob;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$5;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$5;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->access$300(Lcom/arasthel/asyncjob/AsyncJob;)Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;

    move-result-object v0

    iget-object v1, p0, Lcom/arasthel/asyncjob/AsyncJob$5;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->access$000(Lcom/arasthel/asyncjob/AsyncJob;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;->onResult(Ljava/lang/Object;)V

    return-void
.end method
