.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createSaveMenu()V
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

    .line 3007
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3010
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x3

    .line 3011
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$2400(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x1

    return-void

    const/4 v0, 0x0
.end method
