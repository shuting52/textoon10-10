.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 1775
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->val$requestCode:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->val$resultCode:I

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1778
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->val$requestCode:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->val$resultCode:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$40;->val$data:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->activityResultLogic(IILandroid/content/Intent;)V

    return-void

    const/4 v0, 0x0
.end method
