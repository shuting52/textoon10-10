.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;
.super Ljava/lang/Object;
.source "textSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "circle"
.end annotation


# instance fields
.field center:Landroid/graphics/PointF;

.field rad:F

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;Landroid/graphics/PointF;F)V
    .locals 1

    .line 397
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance p1, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    .line 396
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    .line 398
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    .line 399
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return-void
.end method

.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;Landroid/graphics/Rect;)V
    .locals 3

    .line 401
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    .line 396
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    .line 402
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    .line 403
    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->rectRad(Landroid/graphics/Rect;)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return-void
.end method


# virtual methods
.method public getCenter()Landroid/graphics/PointF;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 415
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getRad()F
    .locals 2

    const/4 v1, 0x0

    .line 423
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return v0

    const/4 v1, 0x1
.end method

.method offset(FF)V
    .locals 2

    const/4 v1, 0x3

    .line 411
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    return-void

    const/4 v1, 0x1
.end method

.method offsetCopy(FF)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;
    .locals 4

    const/4 v3, 0x2

    .line 406
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 407
    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->offset(FF)V

    .line 408
    const/4 v3, 0x1

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    invoke-direct {p1, p2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;Landroid/graphics/PointF;F)V

    return-object p1

    const/4 v1, 0x3
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x3

    .line 419
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->center:Landroid/graphics/PointF;

    return-void

    const/4 v0, 0x0
.end method

.method public setRad(F)V
    .locals 1

    const/4 v0, 0x2

    .line 427
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;->rad:F

    return-void

    const/4 v0, 0x0
.end method
