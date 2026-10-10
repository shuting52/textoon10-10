.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/Image/ImageCropperDialog$OnCropEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
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

    .line 1065
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1068
    const/4 v0, 0x0

    iget-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p6, p4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipH(Z)V

    .line 1069
    const/4 v0, 0x1

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p4, p4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p4, p5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setFlipV(Z)V

    .line 1070
    const/4 v0, 0x2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p4, p4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    invoke-virtual {p4, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setCircular(Z)V

    .line 1071
    const/4 v0, 0x3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p1, p2, p4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->updateBitmapPortion(Landroid/graphics/RectF;ILandroid/content/Context;)V

    .line 1072
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$22;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    return-void

    const/4 v0, 0x0
.end method
