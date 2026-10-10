.class public Lcom/mopub/network/CustomSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "CustomSSLSocketFactory.java"


# instance fields
.field private mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    return-void
.end method

.method private doManualServerNameIdentification(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/net/Socket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 157
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 161
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 162
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    invoke-static {v0, p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->setHostnameOnSocket(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 164
    invoke-static {p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->verifyServerName(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private enableTlsIfAvailable(Ljava/net/Socket;)V
    .locals 1
    .param p1    # Ljava/net/Socket;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 207
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 208
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 209
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getDefault(I)Lcom/mopub/network/CustomSSLSocketFactory;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 36
    new-instance v0, Lcom/mopub/network/CustomSSLSocketFactory;

    invoke-direct {v0}, Lcom/mopub/network/CustomSSLSocketFactory;-><init>()V

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    iput-object p0, v0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method static setHostnameOnSocket(Landroid/net/SSLCertificateSocketFactory;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/net/SSLCertificateSocketFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljavax/net/ssl/SSLSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 176
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    new-instance p0, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v0, "setHostname"

    invoke-direct {p0, p1, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Ljava/lang/String;

    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unable to call setHostname() on the socket"

    .line 186
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static verifyServerName(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljavax/net/ssl/SSLSocket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 200
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 202
    new-instance p0, Ljavax/net/ssl/SSLHandshakeException;

    const-string p1, "Server Name Identification failed."

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 58
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 68
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 78
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 88
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 116
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "SSLSocketFactory was null. Unable to create socket."

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 129
    invoke-static {p2}, Lcom/mopub/network/InetAddressUtils;->getInetAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p4

    .line 128
    invoke-virtual {p1, p4, p3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/mopub/network/CustomSSLSocketFactory;->doManualServerNameIdentification(Ljava/net/Socket;Ljava/lang/String;)V

    return-object p1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 137
    invoke-direct {p0, p1}, Lcom/mopub/network/CustomSSLSocketFactory;->enableTlsIfAvailable(Ljava/net/Socket;)V

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCertificateSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/mopub/network/CustomSSLSocketFactory;->mCertificateSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
