.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->startBillingConnection(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$notifyIfFail:Z

.field final synthetic val$successAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->val$successAction:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->val$notifyIfFail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 638
    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->val$notifyIfFail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "Error contacting Google Play"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 639
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->billingClientConnected:Z

    return-void

    const/4 v1, 0x3
.end method

.method public onBillingSetupFinished(I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x2

    .line 630
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->billingClientConnected:Z

    .line 631
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->val$successAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 632
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$14;->val$successAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method
