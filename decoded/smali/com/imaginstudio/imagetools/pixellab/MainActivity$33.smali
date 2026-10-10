.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1567
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v3, 0x1

    .line 1568
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    .line 1570
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    .line 1572
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;->val$data:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "quoteExported"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    const/high16 v1, 0x3f400000    # 0.75f

    .line 1573
    const/4 v3, 0x1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 1575
    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setMax(F)V

    const/16 v1, 0x11

    .line 1576
    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextAlign(I)V

    .line 1579
    const/4 v3, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;

    invoke-direct {v1, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$33$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$33;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method
