.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;


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

    .line 1094
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizePicked(IIZ)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1097
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->usedImage:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage;->setForcedDims(IIZLandroid/content/Context;)V

    .line 1098
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$23;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->updateBackground(Z)V

    return-void

    const/4 v0, 0x2
.end method
