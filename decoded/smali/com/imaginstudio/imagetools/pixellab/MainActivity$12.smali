.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 551
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    .line 553
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 554
    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 555
    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND"

    .line 557
    const/4 v4, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v4, 0x1

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v4, 0x2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    const-string v3, "image/"

    .line 558
    const/4 v4, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x3

    .line 559
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$800(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    .line 560
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$900(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    const/4 v4, 0x2

    .line 562
    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1000(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    goto :goto_0

    const/4 v4, 0x1

    .line 566
    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setScreenContent(Landroid/os/Bundle;)V

    .line 567
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    .line 568
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->history:Lcom/imaginstudio/imagetools/pixellab/undo/History;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->instanceState:Landroid/os/Bundle;

    const-string v2, "historyUndo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/undo/History;->fromBundle(Landroid/os/Bundle;)V

    .line 570
    const/4 v4, 0x2

    :goto_0
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->workingArea:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v0, 0x0
.end method
