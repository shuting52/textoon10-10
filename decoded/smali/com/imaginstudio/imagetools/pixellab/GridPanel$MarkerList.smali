.class Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;
.super Ljava/lang/Object;
.source "GridPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GridPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MarkerList"
.end annotation


# instance fields
.field first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

.field isHorizontalList:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GridPanel;Z)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 312
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;[F)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addRelativePos([F)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;)V
    .locals 1

    const/4 v0, 0x3

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addAfterSelected()V

    return-void

    const/4 v0, 0x0
.end method

.method private add(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V
    .locals 4

    const/4 v3, 0x2

    .line 391
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 392
    const/4 v3, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_1

    const/4 v3, 0x2

    .line 394
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v3, 0x1

    .line 395
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object v0, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 396
    const/4 v3, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_1

    const/4 v3, 0x0

    .line 398
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 399
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/4 v3, 0x2

    .line 400
    const/4 v3, 0x3

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_0

    const/4 v3, 0x0

    .line 402
    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 403
    const/4 v3, 0x3

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 404
    const/4 v3, 0x0

    iput-object v1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_1
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method private addAfterSelected()V
    .locals 5

    const/4 v4, 0x3

    .line 322
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getContainer(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->getLast()Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    goto :goto_0

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 323
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v2

    goto :goto_1

    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    const/4 v2, 0x0

    :goto_1
    const/4 v4, 0x2

    if-eqz v0, :cond_2

    const/4 v4, 0x3

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    goto :goto_2

    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    const/4 v4, 0x3

    add-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addRelativePos(F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->access$200(Lcom/imaginstudio/imagetools/pixellab/GridPanel;Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    return-void

    const/4 v0, 0x0
.end method

.method private addRelativePos(F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 4

    const/4 v3, 0x1

    .line 382
    const/4 v3, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;-><init>(Lcom/imaginstudio/imagetools/pixellab/GridPanel;FZ)V

    .line 383
    const/4 v3, 0x3

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->add(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    return-object v0

    const/4 v1, 0x3
.end method

.method private varargs addRelativePos([F)V
    .locals 4

    const/4 v3, 0x1

    .line 377
    const/4 v3, 0x2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v0, :cond_0

    const/4 v3, 0x0

    aget v2, p1, v1

    .line 378
    const/4 v3, 0x1

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->addRelativePos(F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method private find_r(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v1, 0x2

    const/4 p1, 0x0

    return-object p1

    .line 429
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getRelPos()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_1
    const/4 v1, 0x3

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->find_r(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    return-object p1

    const/4 v1, 0x1
.end method


# virtual methods
.method checkIfValidRect()Z
    .locals 2

    const/4 v1, 0x2

    .line 327
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    return v0

    const/4 v1, 0x1
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 387
    const/4 v1, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    return-void

    const/4 v1, 0x1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)V
    .locals 14

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 409
    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    move v10, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getHeight()I

    move-result v1

    goto :goto_0

    .line 410
    :goto_1
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 411
    new-instance v11, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;

    invoke-direct {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;-><init>()V

    move-object v12, v1

    :goto_2
    if-eqz v12, :cond_9

    .line 413
    iget-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v1

    :goto_3
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v3, :cond_2

    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v2

    :cond_2
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v3, :cond_3

    move v3, v10

    goto :goto_4

    :cond_3
    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    :goto_4
    iget-boolean v4, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz v4, :cond_4

    invoke-virtual {v12}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v4

    goto :goto_5

    :cond_4
    move v4, v10

    :goto_5
    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->set(FFFF)V

    .line 414
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, v7

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 415
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToHor:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eq v12, v1, :cond_5

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->snappedToVer:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-ne v12, v1, :cond_6

    :cond_5
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, v7

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 416
    :cond_6
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-ne v12, v1, :cond_7

    if-eqz p6, :cond_7

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, v7

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 417
    :cond_7
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v2

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v3

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v4

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v5

    move-object v1, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 418
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-boolean v1, v1, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectionEnabled:Z

    if-eqz v1, :cond_8

    .line 419
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v1

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v2

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    const v4, 0x3f8ccccd    # 1.1f

    mul-float v3, v3, v4

    invoke-virtual {v7, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 420
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX1()F

    move-result v1

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY1()F

    move-result v2

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 421
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v1

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v2

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    mul-float v3, v3, v4

    invoke-virtual {v7, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 422
    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getX2()F

    move-result v1

    invoke-virtual {v11}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->getY2()F

    move-result v2

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->halfCircleRad:F

    invoke-virtual {v7, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 424
    :cond_8
    iget-object v12, v12, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto/16 :goto_2

    :cond_9
    return-void

    const/4 v0, 0x2
.end method

.method public find(F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 2

    const/4 v1, 0x2

    .line 432
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-direct {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->find_r(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-result-object p1

    return-object p1

    const/4 v1, 0x1
.end method

.method public getAtPos(FF)Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 5

    const/4 v4, 0x1

    .line 365
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x3

    return-object v1

    .line 366
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 367
    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 369
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_1

    const/4 v4, 0x2

    .line 371
    const/4 v4, 0x3

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move v2, v3

    goto :goto_0

    const/4 v4, 0x0

    .line 373
    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    const/4 v4, 0x0

    :cond_2
    const/4 v4, 0x1

    move-object v0, v1

    :goto_1
    const/4 v4, 0x2

    return-object v0

    const/4 v0, 0x0
.end method

.method public getLast()Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;
    .locals 3

    const/4 v2, 0x0

    .line 315
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 316
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 317
    const/4 v2, 0x2

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    return-object v0

    const/4 v0, 0x2
.end method

.method move(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;FZ)V
    .locals 2

    const/4 v1, 0x2

    .line 331
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->checkIfValidRect()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 332
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->remove(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-eqz p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    const/4 v1, 0x1

    .line 333
    const/4 v1, 0x2

    :cond_1
    const/4 v1, 0x3

    iget-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->isHorizontalList:Z

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getHeight()I

    move-result p3

    goto :goto_0

    const/4 v1, 0x1

    :cond_2
    const/4 v1, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-virtual {p3}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->getWidth()I

    move-result p3

    :goto_0
    const/4 v1, 0x3

    int-to-float p3, p3

    div-float/2addr p2, p3

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->setPos(F)V

    .line 334
    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->add(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;)V

    :cond_3
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method moveBy(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;F)V
    .locals 2

    const/4 v1, 0x0

    .line 338
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->getAbsPos()F

    move-result v0

    add-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->move(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;FZ)V

    return-void

    const/4 v1, 0x1
.end method

.method remove(Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;Z)Z
    .locals 3

    const/4 v2, 0x3

    .line 343
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-ne v0, p1, :cond_0

    const/4 v2, 0x1

    .line 344
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    const/4 p1, 0x0

    goto :goto_1

    const/4 v2, 0x3

    .line 346
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->first:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    .line 347
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eq v1, p1, :cond_1

    const/4 v2, 0x1

    .line 348
    const/4 v2, 0x2

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    goto :goto_0

    const/4 v2, 0x3

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 351
    const/4 v2, 0x2

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    move-object p1, v0

    :goto_1
    const/4 v2, 0x3

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    .line 357
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz p2, :cond_3

    const/4 v2, 0x2

    .line 358
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;->next:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    :cond_2
    const/4 v2, 0x1

    iput-object p1, p2, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->selectedMarker:Lcom/imaginstudio/imagetools/pixellab/GridPanel$Marker;

    .line 359
    const/4 v2, 0x2

    :cond_3
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GridPanel$MarkerList;->this$0:Lcom/imaginstudio/imagetools/pixellab/GridPanel;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/GridPanel;->access$300(Lcom/imaginstudio/imagetools/pixellab/GridPanel;)V

    :cond_4
    const/4 v2, 0x0

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 v2, 0x1

    const/4 p1, 0x0

    return p1

    const/4 v0, 0x2
.end method
