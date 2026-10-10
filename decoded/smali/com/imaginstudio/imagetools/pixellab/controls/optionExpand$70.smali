.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V
    .locals 0

    .line 1577
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v13, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1580
    const/4 v13, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->drawingsEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0c00b8

    if-nez v0, :cond_2

    const/4 v13, 0x2

    const/high16 v0, 0x40000000    # 2.0f

    .line 1582
    const/4 v13, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    float-to-int v4, v0

    invoke-static {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getBitmapFromDrawing(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1583
    const/4 v13, 0x0

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v4

    .line 1584
    const/4 v13, 0x1

    iget v5, v4, Landroid/graphics/Rect;->right:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v13, 0x2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_1

    const/4 v13, 0x3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-eq v5, v6, :cond_1

    const/4 v13, 0x0

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    const/4 v13, 0x2

    .line 1587
    const/4 v13, 0x3

    :cond_0
    const/4 v13, 0x0

    invoke-static {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "drawing"

    .line 1589
    const/4 v13, 0x1

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1590
    const/4 v13, 0x2

    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    div-float v9, v3, v0

    .line 1591
    const/4 v13, 0x3

    iget v3, v4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float v10, v3, v0

    .line 1592
    const/4 v13, 0x0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v11, v3, v0

    .line 1593
    const/4 v13, 0x1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v12, v3, v0

    .line 1594
    const/4 v13, 0x2

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    .line 1595
    const/4 v13, 0x3

    invoke-static {v1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V

    .line 1596
    const/4 v13, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v5

    sget v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_DRAWING:I

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;

    goto :goto_1

    const/4 v13, 0x1

    .line 1585
    const/4 v13, 0x2

    :cond_1
    const/4 v13, 0x3

    :goto_0
    const/4 v13, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    const/4 v13, 0x1

    .line 1599
    const/4 v13, 0x2

    :cond_2
    const/4 v13, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$70;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 v13, 0x0

    return-void

    const/4 v1, 0x1
.end method
