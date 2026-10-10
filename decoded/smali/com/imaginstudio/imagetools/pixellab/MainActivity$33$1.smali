.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;

.field final synthetic val$currText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V
    .locals 0

    .line 1579
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$currText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1582
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$currText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$currText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setX(F)V

    .line 1583
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$currText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;->val$currText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setY(F)V

    return-void

    const/4 v0, 0x0
.end method
