.class Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;
.super Ljava/lang/Object;
.source "PersonalInfoManager.java"

# interfaces
.implements Lcom/mopub/network/AdRequest$ServerOverrideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalInfoServerOverrideListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method private constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V
    .locals 0

    .line 634
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-void
.end method


# virtual methods
.method public onForceExplicitNo(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 637
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->REVOKED_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-static {v0, v1, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1400(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public onForceGdprApplies()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->isForceGdprApplies()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoData;->setForceGdprApplies(Z)V

    .line 670
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    .line 671
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1302(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 672
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void
.end method

.method public onInvalidateConsent(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->REACQUIRE_BY_SERVER:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$200(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    invoke-static {v0, v1, p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$1400(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method public onReacquireConsent(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mopub/common/privacy/PersonalInfoData;->setConsentChangeReason(Ljava/lang/String;)V

    .line 660
    :cond_0
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoData;->setShouldReacquireConsent(Z)V

    .line 661
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$PersonalInfoServerOverrideListener;->this$0:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->access$300(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/PersonalInfoData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/PersonalInfoData;->writeToDisk()V

    return-void
.end method
