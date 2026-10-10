.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;
.super Ljava/lang/Object;
.source "ShapesCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 222
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    .line 223
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->shapeObject:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->getInitialArea(IIZ)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->bounds:Landroid/graphics/RectF;

    .line 224
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->invalidate()V

    :cond_0
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method
