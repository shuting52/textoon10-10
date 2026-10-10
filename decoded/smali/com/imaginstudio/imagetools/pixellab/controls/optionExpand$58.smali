.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;
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

    .line 1257
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pathsToBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "BcR2"

    .line 1264
    new-instance v3, Landroid/graphics/RectF;

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v5}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rectFToArr(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1266
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/high16 v3, 0x40000000    # 2.0f

    float-to-int v4, v3

    invoke-virtual {v2, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getBitmapFromBezierPanel(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "drawingBezier"

    .line 1267
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1268
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1269
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1270
    iget v6, v5, Landroid/graphics/Rect;->right:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-eq v6, v7, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_2

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v6, v7, :cond_0

    goto/16 :goto_1

    .line 1273
    :cond_0
    invoke-static {v2, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1274
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float v11, v6, v3

    .line 1275
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    div-float v12, v6, v3

    .line 1276
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v13, v6, v3

    .line 1277
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v14, v5, v3

    .line 1278
    invoke-static {v2, v4, v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V

    .line 1280
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_1

    .line 1281
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 1282
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    .line 1283
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    div-float/2addr v2, v13

    div-float/2addr v3, v14

    .line 1284
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1285
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v3, v5}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 1286
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v5, v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    sget v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_BEZIER:I

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    mul-float v13, v13, v2

    float-to-int v3, v13

    int-to-float v9, v3

    mul-float v2, v2, v14

    float-to-int v2, v2

    int-to-float v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    goto :goto_0

    .line 1288
    :cond_1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v7

    sget v8, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_BEZIER:I

    new-instance v9, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;

    move-result-object v1

    .line 1291
    :goto_0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierShapeData(Landroid/os/Bundle;)V

    goto :goto_2

    .line 1271
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$58;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1295
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    const/4 v1, 0x3
.end method
