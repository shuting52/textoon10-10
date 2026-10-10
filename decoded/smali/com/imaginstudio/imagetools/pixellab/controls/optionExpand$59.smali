.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;
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

    .line 1396
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v13, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1401
    const/4 v13, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1403
    const/4 v13, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    .line 1404
    const/4 v13, 0x3

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v13, 0x0

    .line 1405
    const/4 v13, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    const/4 v13, 0x2

    .line 1407
    const/4 v13, 0x3

    :cond_0
    const/4 v13, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    const/4 v4, 0x2

    invoke-static {v2, v4, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreatorRenderer;->getBitmapFromShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "drawingShape"

    .line 1408
    const/4 v13, 0x1

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1409
    const/4 v13, 0x2

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    .line 1410
    const/4 v13, 0x3

    invoke-static {v2, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V

    .line 1412
    const/4 v13, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    .line 1413
    const/4 v13, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 1414
    const/4 v13, 0x3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v6, v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5, v6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 1415
    const/4 v13, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v6, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    sget v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_SHAPE:I

    new-instance v8, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v10, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    .line 1416
    const/4 v13, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-boolean v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->changedGeometry:Z

    if-eqz v4, :cond_2

    const/4 v13, 0x2

    .line 1417
    const/4 v13, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V

    .line 1418
    const/4 v13, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    .line 1419
    const/4 v13, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->shapesCreatorTool:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    goto :goto_0

    const/4 v13, 0x2

    .line 1422
    const/4 v13, 0x3

    :cond_1
    const/4 v13, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v5

    sget v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_SHAPE:I

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v11, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v12, v1

    invoke-virtual/range {v5 .. v12}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;

    move-result-object v2

    .line 1424
    const/4 v13, 0x1

    :cond_2
    const/4 v13, 0x2

    :goto_0
    const/4 v13, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$59;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShapeData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v13, 0x0

    :catch_0
    move-exception v0

    .line 1427
    const/4 v13, 0x1

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v13, 0x2

    return-void

    const/4 v1, 0x1
.end method
