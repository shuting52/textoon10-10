.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;
.super Ljava/lang/Object;
.source "BmpPathMasks.java"


# instance fields
.field private masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    .line 71
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 32
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    const/4 v1, 0x1
.end method

.method public copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;
    .locals 7

    const/4 v6, 0x3

    .line 47
    const/4 v6, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;-><init>()V

    .line 48
    const/4 v6, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    const/4 v6, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    .line 49
    const/4 v6, 0x0

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v4

    iget-object v5, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-direct {v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    .line 50
    const/4 v6, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->isStrokeFill()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setStrokeFill(Z)V

    .line 51
    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setStrokeWidth(F)V

    .line 52
    const/4 v6, 0x3

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    invoke-virtual {v3, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setBlur(I)V

    .line 53
    const/4 v6, 0x0

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v6, 0x1

    :cond_0
    const/4 v6, 0x2

    return-object v0

    const/4 v0, 0x2
.end method

.method public getCount()I
    .locals 2

    const/4 v1, 0x0

    .line 63
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getLast()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;
    .locals 3

    const/4 v2, 0x3

    .line 43
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    return-object v0

    const/4 v0, 0x2
.end method

.method public getMasks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    .line 27
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v1, 0x1

    .line 59
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public remAll()V
    .locals 2

    const/4 v1, 0x0

    .line 40
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    const/4 v1, 0x1
.end method

.method public remLast()V
    .locals 3

    const/4 v2, 0x3

    .line 35
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    .line 36
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x1

    .line 77
    const/4 v5, 0x2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const/4 v5, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->masks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    .line 80
    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    return-object v0

    const/4 v1, 0x1
.end method
