.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;
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

    .line 2361
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2364
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->val$pr:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity$50;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const v3, 0x7f0c004d

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1900(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    return-void

    const/4 v0, 0x0
.end method
