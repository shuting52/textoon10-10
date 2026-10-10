.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createMainMenu()V
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

    .line 3105
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3108
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2600(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 3109
    const/4 v3, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3110
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ContactDialog;->show()V

    goto :goto_0

    const/4 v3, 0x3

    .line 3112
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c00b9

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method
