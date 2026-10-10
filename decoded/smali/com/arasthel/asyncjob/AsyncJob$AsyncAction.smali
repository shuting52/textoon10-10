.class public interface abstract Lcom/arasthel/asyncjob/AsyncJob$AsyncAction;
.super Ljava/lang/Object;
.source "AsyncJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arasthel/asyncjob/AsyncJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AsyncAction"
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
.method public abstract doAsync()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TActionResult;"
        }
    .end annotation
.end method
