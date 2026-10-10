.class Lcom/mopub/common/privacy/ConsentDialogLayout;
.super Lcom/mopub/common/CloseableLayout;
.source "ConsentDialogLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;,
        Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;
    }
.end annotation


# static fields
.field static FINISHED_LOADING:I = 0x65

.field static final URL_CLOSE:Ljava/lang/String; = "mopub://close"

.field static final URL_CONSENT_NO:Ljava/lang/String; = "mopub://consent?no"

.field static final URL_CONSENT_YES:Ljava/lang/String; = "mopub://consent?yes"


# instance fields
.field private mConsentListener:Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLoadListener:Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWebView:Landroid/webkit/WebView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    .line 53
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->initWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    .line 58
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->initWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$2;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$2;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    .line 63
    invoke-direct {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->initWebView()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mConsentListener:Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/common/privacy/ConsentDialogLayout;)Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mLoadListener:Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    return-object p0
.end method

.method private initWebView()Landroid/webkit/WebView;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 83
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 89
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x1

    .line 90
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 91
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 93
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 94
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 95
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 98
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 100
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 101
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 103
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 104
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setId(I)V

    .line 106
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setCloseVisible(Z)V

    .line 108
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private setupEventsListeners(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    new-instance p1, Lcom/mopub/common/privacy/ConsentDialogLayout$1;

    invoke-direct {p1, p0}, Lcom/mopub/common/privacy/ConsentDialogLayout$1;-><init>(Lcom/mopub/common/privacy/ConsentDialogLayout;)V

    invoke-virtual {p0, p1}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    return-void
.end method


# virtual methods
.method setConsentClickListener(Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;)V
    .locals 0
    .param p1    # Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mConsentListener:Lcom/mopub/common/privacy/ConsentDialogLayout$ConsentListener;

    return-void
.end method

.method startLoading(Ljava/lang/String;Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    iput-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mLoadListener:Lcom/mopub/common/privacy/ConsentDialogLayout$PageLoadListener;

    .line 70
    iget-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, p2}, Lcom/mopub/common/privacy/ConsentDialogLayout;->setupEventsListeners(Landroid/webkit/WebView;)V

    .line 72
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogLayout;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
