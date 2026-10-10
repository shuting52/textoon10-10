.class Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;
.super Landroid/os/AsyncTask;
.source "AdvancedBiddingTokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/AdvancedBiddingTokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdvancedBiddersInitializationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/mopub/common/MoPubAdvancedBidder;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final advancedBidderClasses:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdvancedBiddersInitializedListener:Lcom/mopub/common/AdvancedBiddersInitializedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/mopub/common/AdvancedBiddersInitializedListener;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/AdvancedBiddersInitializedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;>;",
            "Lcom/mopub/common/AdvancedBiddersInitializedListener;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    iput-object p1, p0, Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;->advancedBidderClasses:Ljava/util/List;

    .line 96
    iput-object p2, p0, Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;->mAdvancedBiddersInitializedListener:Lcom/mopub/common/AdvancedBiddersInitializedListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;->advancedBidderClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 105
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/mopub/common/MoPubAdvancedBidder;

    .line 104
    invoke-static {v2, v3}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MoPubAdvancedBidder;

    .line 106
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/mopub/common/AdvancedBiddingTokens$AdvancedBiddersInitializationAsyncTask;->mAdvancedBiddersInitializedListener:Lcom/mopub/common/AdvancedBiddersInitializedListener;

    invoke-interface {v0, p1}, Lcom/mopub/common/AdvancedBiddersInitializedListener;->onAdvancedBiddersInitialized(Ljava/util/List;)V

    return-void
.end method
