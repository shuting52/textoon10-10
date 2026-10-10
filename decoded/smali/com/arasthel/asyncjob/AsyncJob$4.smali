.class Lcom/arasthel/asyncjob/AsyncJob$4;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arasthel/asyncjob/AsyncJob;->start()V
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

    .line 88
    iput-object p1, p0, Lcom/arasthel/asyncjob/AsyncJob$4;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$4;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    iget-object v1, p0, Lcom/arasthel/asyncjob/AsyncJob$4;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    invoke-static {v1}, Lcom/arasthel/asyncjob/AsyncJob;->access$100(Lcom/arasthel/asyncjob/AsyncJob;)Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;

    move-result-object v1

    invoke-interface {v1}, Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;->doAsync()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arasthel/asyncjob/AsyncJob;->access$002(Lcom/arasthel/asyncjob/AsyncJob;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/arasthel/asyncjob/AsyncJob$4;->this$0:Lcom/arasthel/asyncjob/AsyncJob;

    invoke-static {v0}, Lcom/arasthel/asyncjob/AsyncJob;->access$200(Lcom/arasthel/asyncjob/AsyncJob;)V

    return-void
.end method
