.class Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;
.super Ljava/lang/Object;
.source "GridPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Marker"
.end annotation


# instance fields
.field isHorizontal:Z

.field next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field private relPos:F

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GridPanel;FZ)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 303
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    .line 304
    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    return-void
.end method


# virtual methods
.method public getAbsPos()F
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 299
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->isHorizontal:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getHeight()I

    move-result v0

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getWidth()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    int-to-float v0, v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    mul-float v0, v0, v1

    return v0

    const/4 v0, 0x2
.end method

.method public getRelPos()F
    .locals 2

    const/4 v1, 0x2

    .line 294
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    return v0

    const/4 v1, 0x1
.end method

.method public setPos(F)V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 290
    const/4 v1, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->relPos:F

    return-void

    const/4 v1, 0x1
.end method
