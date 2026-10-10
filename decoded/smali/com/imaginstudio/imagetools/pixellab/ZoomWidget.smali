.class public Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
.super Landroid/view/View;
.source "ZoomWidget.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;,
        Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;
    }
.end annotation


# static fields
.field private static final MAX_ZOOM:F = 5.0f

.field private static final MIN_ZOOM:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ZoomLayout"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private child:Landroid/view/View;

.field private dx:F

.field private dy:F

.field horScroll:Landroid/graphics/RectF;

.field horScrollArea:Landroid/graphics/RectF;

.field private lastScaleFactor:F

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field pntBg:Landroid/graphics/Paint;

.field private prevDx:F

.field private prevDy:F

.field previewQuadrant:I

.field private scale:F

.field scaleDetector:Landroid/view/ScaleGestureDetector;

.field final scrollBarPadding:F

.field final scrollBarWidth:F

.field scrollPaint:Landroid/graphics/Paint;

.field scrollPaintBorder:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private toNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

.field verScroll:Landroid/graphics/RectF;

.field verScrollArea:Landroid/graphics/RectF;

.field zoomEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    .line 35
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    const/16 v0, 0xa

    .line 40
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    const/4 v0, 0x4

    .line 41
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    .line 81
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 v1, 0x3

    .line 85
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    .line 92
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    .line 93
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    .line 96
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 97
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    .line 98
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    .line 99
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    .line 103
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    .line 35
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    const/16 p2, 0xa

    .line 40
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    const/4 p2, 0x4

    .line 41
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    .line 81
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 82
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 v0, 0x3

    .line 85
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    .line 92
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    .line 93
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    .line 96
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 97
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    .line 98
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    .line 99
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    .line 108
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    const/4 p3, 0x0

    .line 34
    iput-boolean p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    .line 35
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    const/16 p2, 0xa

    .line 40
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    const/4 p2, 0x4

    .line 41
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    .line 81
    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 82
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 p3, 0x3

    .line 85
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    .line 92
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    .line 93
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    .line 96
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 97
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    .line 98
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    .line 99
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    .line 113
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->init(Landroid/content/Context;)V

    return-void
.end method

.method private applyScaleAndTranslation()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 299
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 300
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 301
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 302
    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method private child()Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    .line 306
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    return-object v0

    const/4 v1, 0x1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    .line 116
    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->pntBg:Landroid/graphics/Paint;

    .line 118
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->pntBg:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->pntBg:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    const/4 v3, 0x0

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 123
    const/4 v3, 0x1

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    .line 124
    const/4 v3, 0x2

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    .line 125
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    const-string v0, "#a6a6a6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    const-string v0, "#69222222"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    const/4 v3, 0x3

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    .line 130
    const/4 v3, 0x0

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    .line 131
    const/4 v3, 0x1

    invoke-virtual {p0, p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    const/4 v1, 0x3
.end method

.method private notifyScaleChanged()V
    .locals 4

    const/4 v3, 0x3

    .line 285
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;

    .line 286
    const/4 v3, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-interface {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;->zoomChanged(F)V

    goto :goto_0

    const/4 v3, 0x0

    .line 288
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    .line 289
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->updateZoom(F)V

    :cond_1
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method private setPreviewQuadrant(FF)Z
    .locals 4

    const/4 v3, 0x3

    .line 258
    const/4 v3, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    .line 259
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 v3, 0x3

    const/4 p1, 0x1

    goto :goto_0

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    const/4 p1, 0x4

    goto :goto_0

    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    const/4 v3, 0x0

    const/4 p1, 0x2

    goto :goto_0

    const/4 v3, 0x1

    :cond_2
    const/4 v3, 0x2

    const/4 p1, 0x3

    :goto_0
    const/4 v3, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    .line 260
    const/4 v3, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->previewQuadrant:I

    if-eq v0, p1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    const/4 v3, 0x2

    :cond_3
    const/4 v3, 0x3

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    return v1

    const/4 v1, 0x3
.end method


# virtual methods
.method public addListener(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$OnZoomListener;)V
    .locals 2

    const/4 v1, 0x2

    .line 50
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const/4 v1, 0x1
.end method

.method dpToPixels(I)F
    .locals 3

    const/4 v2, 0x1

    .line 312
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 313
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1

    const/4 v0, 0x2
.end method

.method drawScrollBars(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    .line 164
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_0

    const/4 v6, 0x1

    .line 168
    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 169
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 171
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 173
    const/4 v6, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v6, 0x0

    .line 174
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 175
    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    mul-float v0, v0, v3

    .line 176
    const/4 v6, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    div-float/2addr v3, v0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float v3, v3, v0

    .line 177
    const/4 v6, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    mul-float v3, v3, v4

    .line 178
    const/4 v6, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 180
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 181
    const/4 v6, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    mul-float v3, v3, v4

    .line 182
    const/4 v6, 0x0

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    div-float/2addr v4, v3

    mul-float v4, v4, v0

    .line 183
    const/4 v6, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    mul-float v4, v4, v0

    .line 184
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 187
    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 188
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 189
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 190
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScroll:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    const/4 v6, 0x0

    :goto_0
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public getViewOrigin()Landroid/graphics/PointF;
    .locals 7

    const/4 v6, 0x3

    .line 320
    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->inRange(FFF)F

    move-result v0

    .line 321
    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->inRange(FFF)F

    move-result v1

    .line 322
    const/4 v6, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    const/4 v0, 0x2
.end method

.method public getZoomFactor()F
    .locals 2

    const/4 v1, 0x0

    .line 89
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    return v0

    const/4 v1, 0x1
.end method

.method inRange(FFF)F
    .locals 1

    const/4 v0, 0x3

    .line 316
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    const/4 v0, 0x0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x2

    .line 157
    const/4 v1, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 159
    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->drawScrollBars(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const/4 v3, 0x2

    .line 271
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    const-string v0, "ZoomLayout"

    .line 272
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScale"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v3, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    const/4 v3, 0x0

    .line 279
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    goto :goto_1

    const/4 v3, 0x3

    .line 274
    const/4 v3, 0x0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 275
    const/4 v3, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    .line 276
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->notifyScaleChanged()V

    .line 277
    const/4 v3, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->lastScaleFactor:F

    :goto_1
    const/4 v3, 0x2

    const/4 p1, 0x1

    return p1

    const/4 v1, 0x3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const/4 v1, 0x0

    const-string p1, "ZoomLayout"

    const-string v0, "onScaleBegin"

    .line 265
    const/4 v1, 0x1

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    const/4 v1, 0x1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2

    const/4 v1, 0x3

    const-string p1, "ZoomLayout"

    const-string v0, "onScaleEnd"

    .line 295
    const/4 v1, 0x0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const/4 v2, 0x2

    .line 136
    const/4 v2, 0x3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 137
    const/4 v2, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    if-nez p3, :cond_0

    const/4 v2, 0x1

    .line 138
    const/4 v2, 0x2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    .line 140
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    if-nez p3, :cond_1

    const/4 v2, 0x1

    .line 141
    const/4 v2, 0x2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    .line 143
    const/4 v2, 0x3

    :cond_1
    const/4 v2, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    if-nez p3, :cond_2

    const/4 v2, 0x1

    .line 144
    const/4 v2, 0x2

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    .line 146
    const/4 v2, 0x3

    :cond_2
    const/4 v2, 0x0

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->bounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    invoke-virtual {p1, p2, p4}, Landroid/graphics/RectF;->inset(FF)V

    .line 149
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->horScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    neg-float p2, p2

    invoke-virtual {p1, p4, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 151
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    sub-float/2addr p2, p3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 152
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarWidth:F

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    invoke-virtual {p1, p4, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 153
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->verScrollArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scrollBarPadding:F

    neg-float p2, p2

    invoke-virtual {p1, p2, p4}, Landroid/graphics/RectF;->offset(FF)V

    return-void

    const/4 v0, 0x2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    .line 326
    const/4 v4, 0x1

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    if-eqz p1, :cond_5

    const/4 v4, 0x2

    .line 328
    const/4 v4, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    const/4 v4, 0x0

    .line 346
    const/4 v4, 0x1

    :pswitch_1
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    .line 347
    const/4 v4, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setPreviewQuadrant(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x3

    .line 348
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->invalidate()V

    goto :goto_0

    const/4 v4, 0x1

    .line 340
    const/4 v4, 0x2

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    if-ne p1, v1, :cond_1

    const/4 v4, 0x3

    .line 341
    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 342
    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    goto :goto_0

    const/4 v4, 0x2

    .line 355
    const/4 v4, 0x3

    :pswitch_3
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    .line 356
    const/4 v4, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    .line 357
    const/4 v4, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    goto :goto_0

    const/4 v4, 0x2

    .line 330
    const/4 v4, 0x3

    :pswitch_4
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 v4, 0x0

    .line 331
    const/4 v4, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    .line 332
    const/4 v4, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startX:F

    .line 333
    const/4 v4, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    sub-float/2addr p1, v1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->startY:F

    .line 335
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setPreviewQuadrant(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x2

    .line 336
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->invalidate()V

    .line 361
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    :pswitch_5
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 363
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    const/4 v4, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    cmpl-float p1, p1, v0

    if-gez p1, :cond_3

    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->mode:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    sget-object p2, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    if-ne p1, p2, :cond_4

    const/4 v4, 0x3

    .line 364
    const/4 v4, 0x0

    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 366
    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    mul-float p1, p1, v0

    .line 367
    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, p2

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    mul-float v0, v0, p2

    .line 369
    const/4 v4, 0x0

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    neg-float v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 370
    const/4 v4, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    neg-float p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    .line 372
    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->applyScaleAndTranslation()V

    :cond_4
    const/4 v4, 0x3

    return v1

    :cond_5
    const/4 v4, 0x0

    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    const/4 v0, 0x0
.end method

.method public resetZoom(Z)V
    .locals 4

    const/4 v3, 0x2

    .line 222
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v3, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    .line 223
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    .line 224
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->notifyScaleChanged()V

    .line 225
    const/4 v3, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    .line 226
    const/4 v3, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    .line 227
    const/4 v3, 0x0

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 228
    const/4 v3, 0x1

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    .line 229
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$2;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    .line 249
    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    const/4 p1, 0x0

    .line 252
    const/4 v3, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    :cond_2
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method public setChild(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 309
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child:Landroid/view/View;

    return-void

    const/4 v0, 0x0
.end method

.method public setNotifyOnChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    return-void

    const/4 v0, 0x0
.end method

.method public setZoomLevel(F)V
    .locals 3

    const/4 v2, 0x3

    .line 193
    const/4 v2, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    .line 194
    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->notifyScaleChanged()V

    .line 195
    const/4 v2, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDx:F

    .line 196
    const/4 v2, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->prevDy:F

    const/4 p1, 0x0

    .line 197
    const/4 v2, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    .line 198
    const/4 v2, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    .line 199
    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    .line 219
    const/4 v2, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dx:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->dy:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->scale:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    const/4 v0, 0x2
.end method

.method public toggleZoom(Z)V
    .locals 2

    const/4 v1, 0x1

    .line 58
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    .line 59
    const/4 v1, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    .line 60
    const/4 v1, 0x0

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    .line 61
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 62
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->setZoomOn(Z)V

    .line 64
    const/4 v1, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->invalidate()V

    :cond_1
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public toggleZoom()Z
    .locals 2

    const/4 v1, 0x1

    .line 54
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->toggleZoom(Z)V

    .line 55
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->zoomEnabled:Z

    return v0

    const/4 v1, 0x1
.end method
