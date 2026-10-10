.class public interface abstract Lcom/arasthel/asyncjob/AsyncJob$AsyncResultAction;
.super Ljava/lang/Object;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arasthel/asyncjob/AsyncJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncResultAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ActionResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TActionResult;)V"
        }
    .end annotation
.end method
