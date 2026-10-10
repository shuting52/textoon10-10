.class Lcom/mopub/common/privacy/ConsentDialogResponse;
.super Ljava/lang/Object;
.source "ConsentDialogResponse.java"


# instance fields
.field private final mHtml:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogResponse;->mHtml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogResponse;->mHtml:Ljava/lang/String;

    return-object v0
.end method
