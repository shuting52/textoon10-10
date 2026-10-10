.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;
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

.field final synthetic val$forText:Z

.field final synthetic val$textureImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;ZLjava/lang/String;)V
    .locals 0

    .line 1623
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->val$forText:Z

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->val$textureImagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cropDone(Landroid/graphics/RectF;IZZZ[I)V
    .locals 6

    .line 1626
    iget-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->val$forText:Z

    const/4 p6, -0x1

    if-eqz p3, :cond_0

    .line 1627
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget p3, p3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-eq p3, p6, :cond_1

    .line 1628
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p6}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    .line 1629
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget p6, p6, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->val$textureImagePath:Ljava/lang/String;

    invoke-direct {v1, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setNewTextureSrc(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    .line 1630
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 p2, 0x31

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    goto :goto_0

    .line 1633
    :cond_0
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget p3, p3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq p3, p6, :cond_1

    .line 1634
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {p6}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 1635
    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object p3, p3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p6, p6, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget p6, p6, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->val$textureImagePath:Ljava/lang/String;

    invoke-direct {v1, p3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;)V

    move v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setNewTextureSrc(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ILandroid/graphics/RectF;ZZ)V

    .line 1636
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 p2, 0x55

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    :cond_1
    :goto_0
    return-void

    const/4 v0, 0x2
.end method
