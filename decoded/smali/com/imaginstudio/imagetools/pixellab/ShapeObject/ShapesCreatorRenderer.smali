.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreatorRenderer;
.super Ljava/lang/Object;
.source "ShapesCreatorRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapFromShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 13
    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int v1, v1, p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    const/4 v3, 0x2

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    .line 15
    const/4 v3, 0x3

    invoke-virtual {v1, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 16
    const/4 v3, 0x0

    iget p1, p2, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x1

    .line 17
    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setIsRendering(Z)V

    .line 18
    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 19
    const/4 v3, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapesCreator;->setIsRendering(Z)V

    return-object v0

    const/4 v1, 0x3
.end method
