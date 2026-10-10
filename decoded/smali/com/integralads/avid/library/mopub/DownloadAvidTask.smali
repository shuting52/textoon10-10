.class public Lcom/integralads/avid/library/mopub/DownloadAvidTask;
.super Landroid/os/AsyncTask;
.source "DownloadAvidTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BSIZE:I = 0x400


# instance fields
.field private listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 39
    aget-object p1, p1, v0

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "AvidLoader: URL is empty"

    .line 41
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V

    return-object v2

    .line 47
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 50
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v4, 0x400

    .line 54
    new-array v4, v4, [B

    .line 55
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 56
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    .line 68
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "AvidLoader: can not close Stream"

    .line 71
    invoke-static {v0, p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v2

    :cond_2
    :goto_1
    return-object v0

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v3, v2

    .line 63
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvidLoader: IO error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 68
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v2

    :catch_3
    move-object v3, v2

    .line 60
    :catch_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvidLoader: something is wrong with the URL \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_4

    .line 68
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_4
    return-object v2

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 72
    :cond_5
    throw p1
.end method

.method public getListener()Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    return-object v0
.end method

.method invokeOnCancelled()V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->onCancelled()V

    return-void
.end method

.method invokeOnPostExecute(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->onLoadAvid(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    return-void
.end method
