.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;
.super Landroid/view/View;
.source "CheckeredBgProvider.java"


# instance fields
.field private backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field private bounds:Landroid/graphics/Rect;

.field pntCheckers:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->pntCheckers:Landroid/graphics/Paint;

    .line 67
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->pntCheckers:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->init()V

    return-void
.end method

.method static drawGrid(Landroid/graphics/Rect;Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    .line 43
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 44
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/4 v1, -0x1

    .line 45
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 46
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    mul-int v10, v9, p2

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v10, v1, :cond_4

    const/4 v11, 0x0

    :goto_1
    mul-int v1, v11, p2

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int v2, v1, p2

    add-int v3, v10, p2

    .line 54
    rem-int/lit8 v4, v11, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    rem-int/lit8 v6, v9, 0x2

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    :goto_3
    if-ne v4, v5, :cond_2

    int-to-float v4, v1

    int-to-float v5, v10

    int-to-float v6, v2

    int-to-float v12, v3

    move-object v1, v7

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v12

    move-object/from16 v6, p3

    .line 55
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method init()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 62
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    .line 63
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->pntCheckers:Landroid/graphics/Paint;

    const-string v1, "#b1b1b1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x3

    .line 34
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 36
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 37
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 27
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->bounds:Landroid/graphics/Rect;

    .line 28
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/CheckeredBgProvider;->invalidate()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method
