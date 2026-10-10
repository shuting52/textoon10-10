.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.source "CustomPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionOval"
.end annotation


# instance fields
.field public rectF:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    .line 284
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method addToArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x5

    .line 294
    const/4 v3, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "o"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    const/4 v1, 0x3
.end method

.method copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
    .locals 8

    const/4 v7, 0x0

    .line 289
    const/4 v7, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionOval;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    return-object v0

    const/4 v1, 0x3
.end method
