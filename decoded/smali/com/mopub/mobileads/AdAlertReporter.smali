.class public Lcom/mopub/mobileads/AdAlertReporter;
.super Ljava/lang/Object;
.source "AdAlertReporter.java"


# static fields
.field private static final BODY_SEPARATOR:Ljava/lang/String; = "\n=================\n"

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "M/d/yy hh:mm:ss a z"

.field private static final EMAIL_RECIPIENT:Ljava/lang/String; = "creative-review@mopub.com"

.field private static final IMAGE_QUALITY:I = 0x19


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDateString:Ljava/lang/String;

.field private mEmailIntent:Landroid/content/Intent;

.field private mParameters:Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/mopub/common/AdReport;)V
    .locals 1
    .param p3    # Lcom/mopub/common/AdReport;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "M/d/yy hh:mm:ss a z"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 40
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mDateString:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->initEmailIntent()V

    .line 43
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdAlertReporter;->convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 45
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    const-string p2, ""

    .line 46
    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    .line 49
    invoke-virtual {p3}, Lcom/mopub/common/AdReport;->getResponseString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdAlertReporter;->addEmailSubject()V

    const/4 p2, 0x3

    .line 53
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    aput-object v0, p2, p3

    const/4 p3, 0x1

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    aput-object v0, p2, p3

    const/4 p3, 0x2

    aput-object p1, p2, p3

    invoke-direct {p0, p2}, Lcom/mopub/mobileads/AdAlertReporter;->addEmailBody([Ljava/lang/String;)V

    return-void
.end method

.method private varargs addEmailBody([Ljava/lang/String;)V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 116
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, "\n=================\n"

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private addEmailSubject()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New creative violation report - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mopub/mobileads/AdAlertReporter;->mDateString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private convertBitmapInWEBPToBase64EncodedString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 97
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x19

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 99
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initEmailIntent()V
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    const-string v1, "mailto:creative-review@mopub.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    const/4 v3, 0x1

    .line 79
    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 86
    :cond_1
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method getEmailIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getParameters()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mParameters:Ljava/lang/String;

    return-object v0
.end method

.method getResponse()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAlertReporter;->mEmailIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAlertReporter;->mContext:Landroid/content/Context;

    const-string v1, "No email client available"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
