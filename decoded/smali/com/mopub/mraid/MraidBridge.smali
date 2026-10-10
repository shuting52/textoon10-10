.class public Lcom/mopub/mraid/MraidBridge;
.super Ljava/lang/Object;
.source "MraidBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidBridge$MraidWebView;,
        Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    }
.end annotation


# instance fields
.field private final mAdReport:Lcom/mopub/common/AdReport;

.field private mHasLoaded:Z

.field private mIsClicked:Z

.field private mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mMraidWebViewClient:Landroid/webkit/WebViewClient;

.field private final mPlacementType:Lcom/mopub/mraid/PlacementType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)V
    .locals 1
    .param p1    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    new-instance v0, Lcom/mopub/mraid/MraidNativeCommandHandler;

    invoke-direct {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mraid/MraidBridge;-><init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidNativeCommandHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;Lcom/mopub/mraid/MraidNativeCommandHandler;)V
    .locals 1
    .param p1    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/mraid/PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/mopub/mraid/MraidNativeCommandHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Lcom/mopub/mraid/MraidBridge$5;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$5;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebViewClient:Landroid/webkit/WebViewClient;

    .line 94
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mAdReport:Lcom/mopub/common/AdReport;

    .line 95
    iput-object p2, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    .line 96
    iput-object p3, p0, Lcom/mopub/mraid/MraidBridge;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidBridge;)Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mraid/MraidBridge;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return p0
.end method

.method static synthetic access$102(Lcom/mopub/mraid/MraidBridge;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/mraid/MraidBridge;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/mopub/mraid/MraidBridge;->handlePageFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mopub/mraid/MraidBridge;->fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    return-void
.end method

.method private checkRange(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    if-lt p1, p2, :cond_1

    if-le p1, p3, :cond_0

    goto :goto_0

    :cond_0
    return p1

    .line 496
    :cond_1
    :goto_0
    new-instance p2, Lcom/mopub/mraid/MraidCommandException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Integer parameter out of range: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/mopub/mraid/MraidJavascriptCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.notifyErrorEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private fireNativeCommandCompleteEvent(Lcom/mopub/mraid/MraidJavascriptCommand;)V
    .locals 2
    .param p1    # Lcom/mopub/mraid/MraidJavascriptCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "window.mraidbridge.nativeCallComplete("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method private handlePageFinished()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 360
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 364
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    .line 365
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v0}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPageLoaded()V

    :cond_1
    return-void
.end method

.method private parseBoolean(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    const-string v0, "true"

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "false"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 515
    :cond_1
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    if-nez p1, :cond_0

    return p2

    .line 506
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private parseClosePosition(Ljava/lang/String;Lcom/mopub/common/CloseableLayout$ClosePosition;)Lcom/mopub/common/CloseableLayout$ClosePosition;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/CloseableLayout$ClosePosition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    const-string p2, "top-left"

    .line 453
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 454
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    :cond_1
    const-string p2, "top-right"

    .line 455
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 456
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    :cond_2
    const-string p2, "center"

    .line 457
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 458
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    :cond_3
    const-string p2, "bottom-left"

    .line 459
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 460
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_LEFT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    :cond_4
    const-string p2, "bottom-right"

    .line 461
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 462
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    :cond_5
    const-string p2, "top-center"

    .line 463
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 464
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    :cond_6
    const-string p2, "bottom-center"

    .line 465
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 466
    sget-object p1, Lcom/mopub/common/CloseableLayout$ClosePosition;->BOTTOM_CENTER:Lcom/mopub/common/CloseableLayout$ClosePosition;

    return-object p1

    .line 468
    :cond_7
    new-instance p2, Lcom/mopub/mraid/MraidCommandException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid close position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private parseOrientation(Ljava/lang/String;)Lcom/mopub/mraid/MraidOrientation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    const-string v0, "portrait"

    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object p1, Lcom/mopub/mraid/MraidOrientation;->PORTRAIT:Lcom/mopub/mraid/MraidOrientation;

    return-object p1

    :cond_0
    const-string v0, "landscape"

    .line 485
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    sget-object p1, Lcom/mopub/mraid/MraidOrientation;->LANDSCAPE:Lcom/mopub/mraid/MraidOrientation;

    return-object p1

    :cond_1
    const-string v0, "none"

    .line 487
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    sget-object p1, Lcom/mopub/mraid/MraidOrientation;->NONE:Lcom/mopub/mraid/MraidOrientation;

    return-object p1

    .line 490
    :cond_2
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseSize(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 475
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 477
    :catch_0
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid numeric parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 530
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string v0, "Parameter cannot be null"

    invoke-direct {p1, v0}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 535
    :catch_0
    new-instance v0, Lcom/mopub/mraid/MraidCommandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 524
    :cond_0
    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method private stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method attachView(Lcom/mopub/mraid/MraidBridge$MraidWebView;)V
    .locals 3
    .param p1    # Lcom/mopub/mraid/MraidBridge$MraidWebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 105
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v2, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    if-ne v0, v2, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setScrollContainer(Z)V

    .line 114
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setVerticalScrollBarEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {p1, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setBackgroundColor(I)V

    .line 118
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$1;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$1;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    new-instance p1, Lcom/mopub/mobileads/ViewGestureDetector;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    .line 145
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge;->mAdReport:Lcom/mopub/common/AdReport;

    invoke-direct {p1, v0, v1, v2}, Lcom/mopub/mobileads/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V

    .line 146
    new-instance v0, Lcom/mopub/mraid/MraidBridge$2;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$2;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/ViewGestureDetector;->setUserClickListener(Lcom/mopub/mobileads/ViewGestureDetector$UserClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Lcom/mopub/mraid/MraidBridge$3;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mraid/MraidBridge$3;-><init>(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mobileads/ViewGestureDetector;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Lcom/mopub/mraid/MraidBridge$4;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidBridge$4;-><init>(Lcom/mopub/mraid/MraidBridge;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->setVisibilityChangedListener(Lcom/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener;)V

    return-void
.end method

.method detach()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-void
.end method

.method getMraidWebView()Lcom/mopub/mraid/MraidBridge$MraidWebView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    return-object v0
.end method

.method handleShouldOverrideUrl(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 294
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 302
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mopub"

    .line 305
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "failLoad"

    .line 306
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    sget-object v1, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPageFailedToLoad()V

    :cond_0
    return v0

    :cond_1
    const-string v4, "mraid"

    .line 314
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "UTF-8"

    .line 316
    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 317
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 319
    :cond_2
    invoke-static {v3}, Lcom/mopub/mraid/MraidJavascriptCommand;->fromJavascriptString(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;

    move-result-object v1

    .line 321
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/mopub/mraid/MraidBridge;->runCommand(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/mopub/mraid/MraidCommandException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 323
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidCommandException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/mopub/mraid/MraidBridge;->fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    .line 325
    :goto_1
    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->fireNativeCommandCompleteEvent(Lcom/mopub/mraid/MraidJavascriptCommand;)V

    return v0

    .line 332
    :cond_3
    iget-boolean v1, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 333
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 334
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 336
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 339
    :try_start_2
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v3, :cond_4

    const-string v1, "WebView was detached. Unable to load a URL"

    .line 340
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return v0

    .line 343
    :cond_4
    iget-object v3, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v3}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    .line 346
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity found to handle this URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return v2

    :cond_5
    return v2

    .line 296
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MRAID URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 297
    sget-object p1, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "Mraid command sent an invalid URL"

    invoke-direct {p0, p1, v1}, Lcom/mopub/mraid/MraidBridge;->fireErrorEvent(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/lang/String;)V

    return v0
.end method

.method injectJavaScript(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Injecting Javascript into MRAID WebView:\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->v(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method isAttached()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isClicked()Z
    .locals 1

    .line 594
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return v0
.end method

.method isLoaded()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    return v0
.end method

.method isVisible()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method notifyPlacementType(Lcom/mopub/mraid/PlacementType;)V
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setPlacementType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {p1}, Lcom/mopub/mraid/PlacementType;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method notifyReady()V
    .locals 1

    const-string v0, "mraidbridge.notifyReadyEvent();"

    .line 590
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public notifyScreenMetrics(Lcom/mopub/mraid/MraidScreenMetrics;)V
    .locals 2
    .param p1    # Lcom/mopub/mraid/MraidScreenMetrics;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setScreenSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getScreenRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setMaxSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getRootViewRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setCurrentPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getCurrentAdRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");mraidbridge.setDefaultPosition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getDefaultAdRectDips()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mopub/mraid/MraidBridge;->stringifyRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {p0, v0}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.notifySizeChangeEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p1}, Lcom/mopub/mraid/MraidScreenMetrics;->getCurrentAdRectDips()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->stringifySize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 584
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method notifySupports(ZZZZZ)V
    .locals 2

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setSupports("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method notifyViewState(Lcom/mopub/mraid/ViewState;)V
    .locals 2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p1}, Lcom/mopub/mraid/ViewState;->toJavascriptString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method notifyViewability(Z)V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mraidbridge.setIsViewable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mraid/MraidBridge;->injectJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method runCommand(Lcom/mopub/mraid/MraidJavascriptCommand;Ljava/util/Map;)V
    .locals 9
    .param p1    # Lcom/mopub/mraid/MraidJavascriptCommand;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mraid/MraidJavascriptCommand;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mraid/MraidCommandException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mPlacementType:Lcom/mopub/mraid/PlacementType;

    invoke-virtual {p1, v0}, Lcom/mopub/mraid/MraidJavascriptCommand;->requiresClick(Lcom/mopub/mraid/PlacementType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    if-nez v0, :cond_0

    .line 375
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Cannot execute this command unless the user clicks"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    if-nez v0, :cond_1

    .line 379
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Invalid state to execute this command"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_2

    .line 383
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "The current WebView is being destroyed"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_2
    sget-object v0, Lcom/mopub/mraid/MraidBridge$7;->$SwitchMap$com$mopub$mraid$MraidJavascriptCommand:[I

    invoke-virtual {p1}, Lcom/mopub/mraid/MraidJavascriptCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 442
    :pswitch_0
    new-instance p1, Lcom/mopub/mraid/MraidCommandException;

    const-string p2, "Unspecified MRAID Javascript command"

    invoke-direct {p1, p2}, Lcom/mopub/mraid/MraidCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :pswitch_1
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->createCalendarEvent(Landroid/content/Context;Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "uri"

    .line 428
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    .line 429
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidNativeCommandHandler:Lcom/mopub/mraid/MraidNativeCommandHandler;

    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lcom/mopub/mraid/MraidBridge$6;

    invoke-direct {v2, p0, p1}, Lcom/mopub/mraid/MraidBridge$6;-><init>(Lcom/mopub/mraid/MraidBridge;Lcom/mopub/mraid/MraidJavascriptCommand;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/mopub/mraid/MraidNativeCommandHandler;->storePicture(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/MraidNativeCommandHandler$MraidCommandFailureListener;)V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "uri"

    .line 424
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 425
    iget-object p2, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p2, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onPlayVideo(Ljava/net/URI;)V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "allowOrientationChange"

    .line 417
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "forceOrientation"

    .line 418
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/mopub/mraid/MraidBridge;->parseOrientation(Ljava/lang/String;)Lcom/mopub/mraid/MraidOrientation;

    move-result-object p2

    .line 420
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onSetOrientationProperties(ZLcom/mopub/mraid/MraidOrientation;)V

    goto/16 :goto_0

    :pswitch_5
    const-string p1, "url"

    .line 413
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 414
    iget-object p2, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p2, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onOpen(Ljava/net/URI;)V

    goto/16 :goto_0

    :pswitch_6
    const-string p1, "shouldUseCustomClose"

    .line 409
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 410
    iget-object p2, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p2, p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onUseCustomClose(Z)V

    goto/16 :goto_0

    :pswitch_7
    const-string p1, "url"

    .line 403
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidBridge;->parseURI(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    const-string v0, "shouldUseCustomClose"

    .line 404
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 406
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onExpand(Ljava/net/URI;Z)V

    goto :goto_0

    :pswitch_8
    const-string p1, "width"

    .line 392
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result p1

    const v0, 0x186a0

    invoke-direct {p0, p1, v1, v0}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v3

    const-string p1, "height"

    .line 393
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v4

    const-string p1, "offsetX"

    .line 394
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result p1

    const v1, -0x186a0

    invoke-direct {p0, p1, v1, v0}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v5

    const-string p1, "offsetY"

    .line 395
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mopub/mraid/MraidBridge;->parseSize(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/mopub/mraid/MraidBridge;->checkRange(III)I

    move-result v6

    const-string p1, "customClosePosition"

    .line 397
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/mopub/common/CloseableLayout$ClosePosition;->TOP_RIGHT:Lcom/mopub/common/CloseableLayout$ClosePosition;

    .line 396
    invoke-direct {p0, p1, v0}, Lcom/mopub/mraid/MraidBridge;->parseClosePosition(Ljava/lang/String;Lcom/mopub/common/CloseableLayout$ClosePosition;)Lcom/mopub/common/CloseableLayout$ClosePosition;

    move-result-object v7

    const-string p1, "allowOffscreen"

    .line 398
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/mopub/mraid/MraidBridge;->parseBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 399
    iget-object v2, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface/range {v2 .. v8}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onResize(IIIILcom/mopub/common/CloseableLayout$ClosePosition;Z)V

    goto :goto_0

    .line 388
    :pswitch_9
    iget-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    invoke-interface {p1}, Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;->onClose()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setClicked(Z)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 616
    iput-boolean p1, p0, Lcom/mopub/mraid/MraidBridge;->mIsClicked:Z

    return-void
.end method

.method public setContentHtml(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    const-string p1, "MRAID bridge called setContentHtml before WebView was attached"

    .line 196
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    .line 201
    iget-object v1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mopub/network/Networking;->getBaseUrlScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ads.mopub.com"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-nez v0, :cond_0

    const-string p1, "MRAID bridge called setContentHtml while WebView was not attached"

    .line 207
    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/mopub/mraid/MraidBridge;->mHasLoaded:Z

    .line 212
    iget-object v0, p0, Lcom/mopub/mraid/MraidBridge;->mMraidWebView:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method setMraidBridgeListener(Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;)V
    .locals 0
    .param p1    # Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 100
    iput-object p1, p0, Lcom/mopub/mraid/MraidBridge;->mMraidBridgeListener:Lcom/mopub/mraid/MraidBridge$MraidBridgeListener;

    return-void
.end method
