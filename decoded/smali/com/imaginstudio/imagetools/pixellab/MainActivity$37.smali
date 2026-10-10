.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->activityResultLogic(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$selectedBGImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1681
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->val$selectedBGImagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1685
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {v0, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setCircular(Z)V

    .line 1686
    const/4 v1, 0x1

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p3, p4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipH(Z)V

    .line 1687
    const/4 v1, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p3, p5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipV(Z)V

    .line 1688
    const/4 v1, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->val$selectedBGImagePath:Ljava/lang/String;

    invoke-virtual {p3, p4, p5, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setAsBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/RectF;I)V

    const/4 p1, 0x1

    if-eqz p6, :cond_0

    const/4 v1, 0x0

    .line 1689
    const/4 v1, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    const/4 p3, 0x0

    aget p3, p6, p3

    aget p4, p6, p1

    iget-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p2, p3, p4, p1, p5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setForcedDims(IIZLandroid/content/Context;)V

    .line 1690
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$37;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    return-void

    const/4 v1, 0x1
.end method
