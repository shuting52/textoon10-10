.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;
.super Ljava/lang/Object;
.source "ArrowPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->initDefaultStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 255
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 256
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->start:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 257
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->middle:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 258
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->end:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->farthest:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->origin:Landroid/graphics/PointF;

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->pointAlongSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 259
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateMiddle:Z

    .line 260
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateStart:Z

    .line 261
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->needUpdateEnd:Z

    .line 262
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->invalidate()V

    .line 263
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ArrowPanel;->setVisibility(I)V

    return-void

    const/4 v0, 0x0
.end method
