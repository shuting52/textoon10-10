.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2352
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v2, 0x7f0c0140

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->msg(Ljava/lang/String;)V

    .line 2353
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->access$1800(Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;)V

    return-void

    const/4 v1, 0x3
.end method
