.class Lcom/mopub/common/privacy/PersonalInfoManager$2;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;->loadConsentDialog(Lcom/mopub/common/privacy/ConsentDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

.field final synthetic val$consentDialogListener:Lcom/mopub/common/privacy/ConsentDialogListener;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentDialogListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$2;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    iput-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$2;->val$consentDialogListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$2;->val$consentDialogListener:Lcom/mopub/common/privacy/ConsentDialogListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->DO_NOT_TRACK:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/common/privacy/ConsentDialogListener;->onConsentDialogLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
