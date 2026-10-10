.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;
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

    .line 1188
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0c00bc

    const/4 v2, 0x0

    .line 1193
    :try_start_0
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 1195
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/high16 v5, 0x40000000    # 2.0f

    float-to-int v6, v5

    invoke-virtual {v4, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getBitmapFromBezierPanel(I)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v6, "drawingArrow"

    .line 1196
    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->generateName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1197
    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1198
    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->getAutoCropBound(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1199
    iget v8, v7, Landroid/graphics/Rect;->right:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-eq v8, v9, :cond_3

    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-eq v8, v9, :cond_3

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    if-ne v8, v9, :cond_0

    goto/16 :goto_1

    .line 1202
    :cond_0
    invoke-static {v4, v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanelRenderer;->autoCropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1203
    iget v8, v7, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    div-float v13, v8, v5

    .line 1204
    iget v8, v7, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    div-float v14, v8, v5

    .line 1205
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v19, v8, v5

    .line 1206
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float v20, v7, v5

    const/4 v5, 0x1

    .line 1207
    invoke-static {v4, v6, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;I)V

    .line 1209
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v4, :cond_1

    .line 1210
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->reference:Ljava/lang/String;

    .line 1211
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v7}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v7, v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5, v7}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 1212
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v15, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    sget v16, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_ARROW:I

    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x1

    move-object/from16 v17, v5

    invoke-virtual/range {v15 .. v20}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->editSrc(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFF)V

    .line 1213
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-boolean v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->changedGeometry:Z

    if-eqz v5, :cond_2

    .line 1214
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotateShape(I)V

    .line 1215
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5, v13}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setX(F)V

    .line 1216
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->arrowPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v5, v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v5, v14}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setY(F)V

    goto :goto_0

    .line 1219
    :cond_1
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v9

    sget v10, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_ARROW:I

    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    move/from16 v15, v19

    move/from16 v16, v20

    invoke-virtual/range {v9 .. v16}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->addNewShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZFFFF)Ljava/lang/String;

    move-result-object v4

    .line 1221
    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setArrowData(Landroid/os/Bundle;)V

    goto :goto_2

    .line 1200
    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1224
    :catch_0
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$56;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    const/4 v1, 0x1
.end method
