.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
.super Landroid/view/View;
.source "BezierPanel.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;
.implements Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;,
        Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;
    }
.end annotation


# instance fields
.field currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

.field public customBeziers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;",
            ">;"
        }
    .end annotation
.end field

.field defaultOffset:F

.field dx:F

.field dy:F

.field public editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field fingerPos:Landroid/graphics/PointF;

.field isMotionMove:Z

.field listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

.field maskMode:Z

.field maskOffsetCounter:I

.field needNotifyMaskedObject:Z

.field objectAngle:F

.field objectPivot:Landroid/graphics/PointF;

.field pntBezier:Landroid/graphics/Paint;

.field pntBezierSelected:Landroid/graphics/Paint;

.field prevX:F

.field prevY:F

.field private renderMode:Z

.field shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

.field zoomF:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 165
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 38
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    .line 40
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->isMotionMove:Z

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    .line 57
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    .line 104
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 109
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 124
    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    .line 132
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    .line 250
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    .line 251
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    .line 252
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    .line 392
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    .line 400
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    .line 166
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    .line 167
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    new-instance p1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezier:Landroid/graphics/Paint;

    invoke-direct {p1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezierSelected:Landroid/graphics/Paint;

    .line 171
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->pntBezierSelected:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 176
    const/4 v1, 0x2

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method private getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 181
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 187
    invoke-interface {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;->doOnBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_2
    return-object v1

    const/4 v1, 0x3
.end method

.method private notifyMaskedObject()V
    .locals 3

    const/4 v2, 0x1

    .line 409
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getAllPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierMaskPath(Ljava/util/ArrayList;)V

    .line 410
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getAllPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBezierMaskPath(Ljava/util/ArrayList;)V

    :cond_1
    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 411
    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    return-void

    const/4 v0, 0x2
.end method

.method private startEmpty()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
    .locals 4

    const/4 v3, 0x2

    .line 325
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v2, 0x0

    .line 326
    const/4 v3, 0x2

    iput-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    const/4 v3, 0x3

    .line 328
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;)V

    .line 329
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    const/4 v1, 0x3
.end method

.method private startNew(FF)V
    .locals 3

    const/4 v2, 0x0

    .line 334
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addPointLast(Landroid/graphics/PointF;)Z

    .line 335
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public addAfterSelected()V
    .locals 2

    const/4 v1, 0x0

    .line 205
    const/4 v1, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public addFromStringArrayList(Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/RectF;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 381
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v1

    if-eqz p4, :cond_1

    .line 384
    invoke-virtual {v1, p4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setStyleFromBundle(Landroid/os/Bundle;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setStyleForMask()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 388
    :goto_0
    iget p4, p2, Landroid/graphics/RectF;->left:F

    neg-float v3, p4

    iget p4, p2, Landroid/graphics/RectF;->top:F

    neg-float v4, p4

    iget v5, p3, Landroid/graphics/RectF;->left:F

    iget v6, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v7, p4, v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float v8, p3, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dataFromStringArrayList(Ljava/util/ArrayList;FFFFFF)V

    .line 389
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    :cond_2
    :goto_1
    return-void

    const/4 v1, 0x1
.end method

.method public addNew()V
    .locals 2

    const/4 v1, 0x0

    .line 430
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-nez v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    const/4 v1, 0x1

    .line 431
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefaultForMask(Landroid/graphics/RectF;)V

    goto :goto_2

    const/4 v1, 0x0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 430
    const/4 v1, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefault(Z)V

    :goto_2
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public clearMe()V
    .locals 3

    const/4 v2, 0x2

    .line 135
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 136
    const/4 v2, 0x0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    .line 137
    const/4 v2, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    const/4 v0, 0x0

    .line 138
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    .line 139
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->restoreRotations()V

    .line 140
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->restoreRotations()V

    .line 141
    const/4 v2, 0x0

    :cond_1
    const/4 v2, 0x1

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 142
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    .line 143
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->unhideTemp()V

    .line 144
    const/4 v2, 0x1

    :cond_2
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    const/4 v0, 0x0

    .line 145
    const/4 v2, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    .line 146
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void

    const/4 v0, 0x2
.end method

.method public closeSelected()V
    .locals 2

    const/4 v1, 0x2

    .line 517
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$5;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$5;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 523
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    .line 524
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    const/4 v1, 0x1
.end method

.method public commitTransform(Z)V
    .locals 3

    const/4 v2, 0x3

    .line 636
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 637
    const/4 v2, 0x3

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->commitTransforms(Z)V

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public copySelected()V
    .locals 4

    const/4 v3, 0x3

    .line 436
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    return-void

    :cond_0
    const/4 v3, 0x2

    const/high16 v1, 0x40000000    # 2.0f

    .line 438
    const/4 v3, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    mul-float v2, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->copy(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$OnBezierListener;F)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    .line 439
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 440
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    .line 441
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->updatePath()V

    .line 443
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    const/4 v1, 0x3
.end method

.method public defaultOnSelected()V
    .locals 2

    const/4 v1, 0x2

    .line 217
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public divideNext()V
    .locals 2

    const/4 v1, 0x1

    .line 502
    const/4 v1, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$4;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$4;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method getAllPaths()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 402
    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    const/4 v3, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 404
    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    return-object v0

    const/4 v1, 0x3
.end method

.method public getBitmapFromBezierPanel(I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    .line 43
    const/4 v5, 0x2

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v1, v1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v2, v2, p1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 45
    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p1, p1

    .line 46
    const/4 v5, 0x1

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 47
    const/4 v5, 0x2

    iget p1, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x1

    .line 48
    const/4 v5, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->toggleRenderMode(Z)V

    .line 49
    const/4 v5, 0x0

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->draw(Landroid/graphics/Canvas;)V

    .line 50
    const/4 v5, 0x1

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->toggleRenderMode(Z)V

    return-object v1

    const/4 v1, 0x1
.end method

.method public initiate()V
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    .line 94
    const/4 v2, 0x0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    .line 95
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    .line 96
    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setVisibility(I)V

    .line 97
    const/4 v2, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v0, 0x2
.end method

.method public initiateMaskMode(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p1, :cond_0

    const/4 v7, 0x2

    if-nez p2, :cond_0

    const/4 v7, 0x3

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 60
    const/4 v7, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    .line 61
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    .line 62
    const/4 v7, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setVisibility(I)V

    .line 63
    const/4 v7, 0x0

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->shapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 64
    const/4 v7, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->textReference:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const/4 v7, 0x2

    .line 66
    const/4 v7, 0x3

    invoke-virtual {p2, v0, v2, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->tempDisableRotations(ZZZ)V

    .line 67
    const/4 v7, 0x0

    iget v3, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->angle:I

    int-to-float v3, v3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    .line 68
    const/4 v7, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getX()F

    move-result v4

    iget v5, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->width_f:F

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getY()F

    move-result v5

    iget v6, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->height_f:F

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    const/4 v7, 0x2

    if-eqz p1, :cond_2

    const/4 v7, 0x3

    .line 71
    const/4 v7, 0x0

    invoke-virtual {p1, v0, v2, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->tempDisableRotations(ZZZ)V

    .line 72
    const/4 v7, 0x1

    iget v3, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->angle:I

    int-to-float v3, v3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    .line 73
    const/4 v7, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getX()F

    move-result v4

    iget v5, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getY()F

    move-result v5

    iget v6, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->textHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 75
    const/4 v7, 0x3

    :cond_2
    const/4 v7, 0x0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    .line 76
    const/4 v7, 0x1

    iput-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    if-eqz p2, :cond_3

    const/4 v7, 0x2

    .line 77
    const/4 v7, 0x3

    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0

    const/4 v7, 0x0

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getBoundsRect()Landroid/graphics/RectF;

    move-result-object v1

    :goto_0
    const/4 v7, 0x2

    if-eqz p2, :cond_4

    const/4 v7, 0x3

    .line 78
    const/4 v7, 0x0

    iget-object p1, p2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierMaskBundle:Landroid/os/Bundle;

    goto :goto_1

    const/4 v7, 0x1

    :cond_4
    const/4 v7, 0x2

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->bezierMaskBundle:Landroid/os/Bundle;

    :goto_1
    const/4 v7, 0x3

    if-eqz p1, :cond_7

    const/4 v7, 0x0

    const-string p2, "BcR2"

    .line 80
    const/4 v7, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p2

    const/4 v2, 0x2

    if-ge p2, v2, :cond_5

    const/4 v7, 0x3

    goto :goto_3

    const/4 v7, 0x0

    :cond_5
    const/4 v7, 0x1

    const-string p2, "BcR2"

    .line 83
    const/4 v7, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object p2

    .line 84
    const/4 v7, 0x3

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    const/4 v7, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v7, 0x2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "BcR2"

    .line 85
    const/4 v7, 0x3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v7, 0x0

    const-string v4, "st"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v7, 0x1

    .line 86
    const/4 v7, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->addFromStringArrayList(Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/os/Bundle;)V

    goto :goto_2

    const/4 v7, 0x3

    .line 81
    const/4 v7, 0x0

    :cond_7
    const/4 v7, 0x1

    :goto_3
    const/4 v7, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefaultForMask(Landroid/graphics/RectF;)V

    .line 90
    const/4 v7, 0x3

    :cond_8
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->selectBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    :cond_9
    const/4 v7, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public isCurrBezierClosed()Z
    .locals 2

    const/4 v1, 0x0

    .line 213
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 214
    const/4 v1, 0x3

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    return v0

    const/4 v1, 0x1
.end method

.method public notifySelectionChanged()V
    .locals 4

    const/4 v3, 0x1

    .line 424
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    .line 425
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->selectionChanged(I)V

    .line 426
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    return-void

    const/4 v1, 0x3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    .line 227
    const/4 v7, 0x2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 228
    const/4 v7, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    .line 229
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 230
    const/4 v7, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 233
    const/4 v7, 0x3

    :cond_0
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    const/4 v7, 0x1

    :goto_0
    const/4 v7, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v7, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 234
    const/4 v7, 0x0

    invoke-virtual {v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPath(Landroid/graphics/Canvas;)V

    .line 235
    const/4 v7, 0x1

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne v3, v6, :cond_2

    const/4 v7, 0x3

    const/4 v3, 0x1

    goto :goto_1

    const/4 v7, 0x0

    :cond_2
    const/4 v7, 0x1

    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x2

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v2, p1, v3, v4, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPathPoints(Landroid/graphics/Canvas;ZZF)V

    .line 236
    const/4 v7, 0x3

    :cond_3
    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    if-nez v3, :cond_1

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v6, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne v3, v6, :cond_4

    const/4 v7, 0x2

    const/4 v4, 0x1

    :cond_4
    const/4 v7, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v2, p1, v4, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->drawPathPoints(Landroid/graphics/Canvas;ZZF)V

    goto :goto_0

    const/4 v7, 0x0

    .line 239
    const/4 v7, 0x1

    :cond_5
    const/4 v7, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    const/4 v7, 0x3

    .line 240
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    const/4 v7, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x3

    .line 256
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v7, 0x1

    const/4 v0, 0x1

    goto :goto_0

    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->isMotionMove:Z

    .line 257
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    const/4 v7, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v7, 0x3

    .line 259
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectPivot:Landroid/graphics/PointF;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->objectAngle:F

    mul-float v5, v5, v4

    invoke-static {v0, v3, v5}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rotateAroundDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    .line 261
    const/4 v7, 0x1

    :cond_1
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 262
    const/4 v7, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->fingerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 263
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v0, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNew(FF)V

    .line 264
    const/4 v7, 0x2

    :cond_2
    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v7, 0x0

    return v1

    .line 266
    const/4 v7, 0x1

    :cond_3
    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    const/4 v7, 0x3

    .line 291
    const/4 v7, 0x0

    :pswitch_0
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    .line 292
    const/4 v7, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    sub-float p1, v3, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    .line 293
    const/4 v7, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    .line 294
    const/4 v7, 0x3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    .line 295
    const/4 v7, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    invoke-virtual {v4, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->dragCurrent(FF)V

    goto/16 :goto_3

    const/4 v7, 0x1

    .line 300
    const/4 v7, 0x2

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setX(F)V

    .line 301
    const/4 v7, 0x3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setY(F)V

    .line 302
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->resetDragTarget()V

    .line 303
    const/4 v7, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->motionActionUp()V

    .line 304
    const/4 v7, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    if-eqz p1, :cond_a

    const/4 v7, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifyMaskedObject()V

    goto/16 :goto_3

    const/4 v7, 0x0

    .line 268
    const/4 v7, 0x1

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v5, :cond_7

    const/4 v7, 0x2

    .line 269
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 270
    const/4 v7, 0x2

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v5, v0, v3, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectPoint(FFF)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v7, 0x3

    if-eq v5, v4, :cond_4

    const/4 v7, 0x0

    const/4 p1, 0x0

    .line 271
    const/4 v7, 0x1

    iput-object p1, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 273
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz p1, :cond_5

    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->selectionChanged(I)V

    :cond_5
    const/4 v7, 0x0

    move-object v4, v5

    .line 277
    const/4 v7, 0x1

    :cond_6
    const/4 v7, 0x2

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragWhole()V

    goto :goto_2

    const/4 v7, 0x3

    .line 278
    const/4 v7, 0x0

    :cond_7
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v5, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne p1, v5, :cond_8

    const/4 v7, 0x2

    .line 279
    const/4 v7, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v4, v0, v3, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectPoint(FFF)Z

    .line 280
    const/4 v7, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    invoke-virtual {v4, v0, v3, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragTarget(FFF)V

    .line 281
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    goto :goto_2

    const/4 v7, 0x2

    .line 283
    const/4 v7, 0x3

    :cond_8
    const/4 v7, 0x0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addPointLast(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    goto :goto_1

    const/4 v7, 0x2

    .line 284
    const/4 v7, 0x3

    :cond_9
    const/4 v7, 0x0

    invoke-direct {p0, v0, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNew(FF)V

    .line 285
    const/4 v7, 0x1

    :goto_1
    const/4 v7, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v4, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setDragTarget(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;)V

    .line 287
    const/4 v7, 0x3

    :goto_2
    const/4 v7, 0x0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevX:F

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->prevY:F

    .line 288
    const/4 v7, 0x1

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dx:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->dy:F

    :cond_a
    const/4 v7, 0x2

    :goto_3
    const/4 v7, 0x3

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v1, 0x3
.end method

.method public openSelected()V
    .locals 2

    const/4 v1, 0x1

    .line 529
    const/4 v1, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$6;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$6;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 535
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    .line 536
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    const/4 v1, 0x1
.end method

.method public pathChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 1

    const/4 v0, 0x2

    .line 416
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    .line 417
    const/4 v0, 0x0

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->isMotionMove:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->needNotifyMaskedObject:Z

    goto :goto_0

    const/4 v0, 0x2

    .line 419
    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifyMaskedObject()V

    :goto_0
    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public pathsToBundle(Z)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x3

    .line 312
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    const/4 v7, 0x3

    .line 313
    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    .line 315
    const/4 v7, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    const/4 v7, 0x3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 316
    const/4 v7, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 317
    const/4 v7, 0x2

    invoke-virtual {v3, v4, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addToArrayList(Ljava/util/ArrayList;Z)V

    if-eqz p1, :cond_1

    const/4 v7, 0x3

    .line 318
    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "st"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->styleToBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v7, 0x1

    add-int/lit8 v3, v1, 0x1

    .line 319
    const/4 v7, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v1, v3

    goto :goto_0

    const/4 v7, 0x3

    :cond_2
    const/4 v7, 0x0

    return-object v0

    :cond_3
    const/4 v7, 0x1

    :goto_1
    const/4 v7, 0x2

    const/4 p1, 0x0

    return-object p1

    const/4 v1, 0x3
.end method

.method public prepareEdit(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    return-void

    const/4 v0, 0x0
.end method

.method public removeSelected()V
    .locals 4

    const/4 v3, 0x3

    .line 192
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    return-void

    .line 194
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskMode:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x1

    return-void

    .line 195
    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    const/4 v3, 0x0

    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->count()I

    move-result v1

    if-lt v1, v2, :cond_4

    const/4 v3, 0x1

    .line 196
    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->removeSelected()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v3, 0x0

    .line 197
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->selectBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    .line 199
    const/4 v3, 0x0

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    .line 200
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    :cond_4
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method public removeSelectedBezier()V
    .locals 4

    const/4 v3, 0x1

    .line 476
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v3, 0x3

    return-void

    .line 477
    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    const/4 v3, 0x0

    .line 479
    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 480
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    .line 481
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    .line 483
    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifyMaskedObject()V

    :cond_2
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public removeSelectedPoint()V
    .locals 1

    const/4 v0, 0x2

    .line 496
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->removeSelected()V

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    return-void

    const/4 v0, 0x0
.end method

.method reportActionability()V
    .locals 9

    const/4 v8, 0x2

    .line 511
    const/4 v8, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezier()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    .line 512
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz v1, :cond_3

    const/4 v8, 0x1

    if-nez v0, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    const/4 v8, 0x3

    .line 513
    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->getCount()I

    move-result v2

    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->actions:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToList;->tail:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const/4 v8, 0x2

    const/4 v3, 0x1

    goto :goto_0

    const/4 v8, 0x3

    :cond_1
    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x1

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->closedContour:Z

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    if-ne v4, v7, :cond_2

    const/4 v8, 0x2

    const/4 v5, 0x1

    :cond_2
    const/4 v8, 0x3

    invoke-interface {v1, v2, v3, v0, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->pathChanged(IZZZ)V

    return-void

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const/4 v8, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public restoreOptions()V
    .locals 1

    const/4 v0, 0x3

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->clearMe()V

    return-void

    const/4 v0, 0x0
.end method

.method public rotateBezier(I)V
    .locals 2

    const/4 v1, 0x2

    .line 626
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$14;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$14;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public scaleBezier(I)V
    .locals 2

    const/4 v1, 0x1

    .line 616
    const/4 v1, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$13;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$13;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method selectBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 4

    const/4 v3, 0x0

    .line 245
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v3, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    if-eq v1, p1, :cond_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 246
    const/4 v3, 0x1

    iput-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    goto :goto_0

    const/4 v3, 0x2

    .line 247
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    goto :goto_0

    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public selectNextBezier()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 463
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    const/4 v4, 0x3

    .line 464
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 466
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 467
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    const/4 v0, 0x1

    goto :goto_1

    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x2

    :cond_1
    const/4 v4, 0x3

    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 471
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    :cond_2
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public selectPrevBezier()V
    .locals 5

    const/4 v4, 0x1

    .line 449
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v4, 0x3

    if-lez v0, :cond_1

    const/4 v4, 0x0

    .line 450
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    .line 452
    const/4 v4, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selected:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;

    .line 453
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->selectMe()V

    goto :goto_1

    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    .line 457
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    :cond_2
    const/4 v4, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V
    .locals 1

    const/4 v0, 0x2

    .line 489
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->currMode:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->reportActionability()V

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setFill(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const/4 v1, 0x3

    .line 552
    const/4 v1, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$8;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public setFillOpacity(I)V
    .locals 2

    const/4 v1, 0x2

    .line 541
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$7;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$7;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public setListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;)V
    .locals 1

    const/4 v0, 0x1

    .line 161
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 2

    const/4 v1, 0x0

    .line 590
    const/4 v1, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$11;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 2

    const/4 v1, 0x3

    .line 605
    const/4 v1, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$12;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$12;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public setStrokeOpacity(I)V
    .locals 2

    const/4 v1, 0x2

    .line 579
    const/4 v1, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public setStrokeWidth(I)V
    .locals 2

    const/4 v1, 0x1

    .line 567
    const/4 v1, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;

    invoke-direct {v0, p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$9;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V

    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getSelectedBezierAndDo(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    return-void

    const/4 v1, 0x1
.end method

.method public startNewDefault(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v7, 0x1

    .line 339
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    if-eqz p1, :cond_4

    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const/4 v7, 0x0

    .line 340
    const/4 v7, 0x1

    new-instance p1, Landroid/graphics/RectF;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getContainerHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 341
    const/4 v7, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->editShapeReference:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->bezierShapeBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const/4 v7, 0x3

    const-string v2, "BcR2"

    .line 343
    const/4 v7, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const/4 v7, 0x2

    const-string v2, "BcR2"

    .line 344
    const/4 v7, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v2

    .line 345
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    const/4 v7, 0x1

    :goto_0
    const/4 v7, 0x2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v7, 0x3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "BcR2"

    .line 346
    const/4 v7, 0x0

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x1

    const-string v5, "st"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x2

    .line 347
    const/4 v7, 0x3

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "st"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, v5, v2, p1, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->addFromStringArrayList(Ljava/util/ArrayList;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/os/Bundle;)V

    goto :goto_0

    const/4 v7, 0x0

    .line 350
    const/4 v7, 0x1

    :cond_1
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->selectBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V

    .line 351
    const/4 v7, 0x0

    :cond_2
    const/4 v7, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    if-eqz p1, :cond_3

    const/4 v7, 0x2

    .line 352
    const/4 v7, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->listener:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;->updateMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    .line 354
    const/4 v7, 0x0

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    .line 359
    const/4 v7, 0x2

    :cond_4
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getWidth()I

    move-result p1

    .line 360
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getHeight()I

    move-result v1

    .line 361
    const/4 v7, 0x1

    new-instance v2, Landroid/graphics/PointF;

    int-to-float p1, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, p1, v3

    int-to-float v1, v1

    mul-float v1, v1, v3

    invoke-direct {v2, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v7, 0x2

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x64

    if-ge v1, v5, :cond_7

    const/4 v7, 0x3

    if-nez v3, :cond_7

    const/4 v7, 0x0

    .line 366
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    const/4 v7, 0x2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v7, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    .line 367
    const/4 v7, 0x0

    invoke-virtual {v3, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->isStillDefault(Landroid/graphics/PointF;F)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v7, 0x1

    .line 368
    const/4 v7, 0x2

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getWidth()I

    move-result v3

    int-to-float v3, v3

    rem-float/2addr v1, v3

    iget v3, v2, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x40400000    # 3.0f

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    mul-float v6, v6, v5

    add-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->getHeight()I

    move-result v5

    int-to-float v5, v5

    rem-float/2addr v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    const/4 v3, 0x0

    goto :goto_2

    const/4 v7, 0x3

    :cond_6
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_2
    const/4 v7, 0x1

    move v1, v4

    goto :goto_1

    const/4 v7, 0x2

    .line 375
    const/4 v7, 0x3

    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->doDefaultPreset(Landroid/graphics/PointF;F)V

    .line 376
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    const/4 v1, 0x3
.end method

.method public startNewDefaultForMask(Landroid/graphics/RectF;)V
    .locals 5

    const/4 v4, 0x3

    if-nez p1, :cond_0

    const/4 v4, 0x0

    return-void

    .line 396
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startEmpty()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->setStyleForMask()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->defaultOffset:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->maskOffsetCounter:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->doDefaultPresetMask(Landroid/graphics/RectF;F)V

    .line 397
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->notifySelectionChanged()V

    return-void

    const/4 v0, 0x0
.end method

.method public toggleRenderMode(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 106
    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->renderMode:Z

    return-void

    const/4 v0, 0x0
.end method

.method public zoomChanged(F)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->zoomF:F

    .line 114
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
