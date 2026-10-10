.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "textSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$circle;
    }
.end annotation


# instance fields
.field DRAG_HANDLE_1:I

.field DRAG_HANDLE_2:I

.field currText:Ljava/lang/String;

.field dragId:I

.field escapeTouchFor:Landroid/widget/ScrollView;

.field fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private frozen:Z

.field handle:Landroid/graphics/Rect;

.field handle1:Landroid/graphics/PointF;

.field handle1F:Landroid/graphics/PointF;

.field handle2:Landroid/graphics/PointF;

.field handle2F:Landroid/graphics/PointF;

.field handleDrawable:Landroid/graphics/Bitmap;

.field handleDrawable1:Landroid/graphics/Bitmap;

.field handleMargin:I

.field private maxHeight:I

.field paddingSides:I

.field previousPos:Landroid/graphics/PointF;

.field public selectionEnd:I

.field public selectionStart:I

.field showBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 71
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    const/4 v0, 0x2

    .line 50
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    .line 52
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    .line 53
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    .line 54
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    .line 55
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 57
    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, 0x19

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v3

    invoke-direct {v2, v0, v0, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    const/4 v2, 0x4

    .line 60
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->paddingSides:I

    .line 61
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 62
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 63
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    .line 64
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    .line 65
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    const-string p1, "new text"

    .line 66
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->currText:Ljava/lang/String;

    .line 67
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    .line 72
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 202
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    const/4 p1, 0x1

    .line 49
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    const/4 p2, 0x2

    .line 50
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v2

    invoke-direct {v1, p2, p2, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    const/4 v1, 0x4

    .line 60
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->paddingSides:I

    .line 61
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 62
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 63
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    .line 64
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    .line 65
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    const-string p1, "new text"

    .line 66
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->currText:Ljava/lang/String;

    .line 67
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    .line 203
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 47
    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateFonts()V

    return-void

    const/4 v0, 0x0
.end method

.method private getRectToLeft(Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 4

    const/4 v3, 0x0

    .line 218
    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 219
    const/4 v3, 0x2

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object v0

    const/4 v1, 0x3
.end method

.method private getRectToRight(Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 3

    const/4 v2, 0x0

    .line 213
    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 214
    const/4 v2, 0x2

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-object v0

    const/4 v0, 0x2
.end method

.method private updateFonts()V
    .locals 8

    const/4 v7, 0x0

    .line 95
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 96
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    .line 97
    const/4 v7, 0x3

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v4, v2, :cond_0

    const/4 v7, 0x1

    aget-object v5, v1, v4

    .line 98
    const/4 v7, 0x2

    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v7, 0x3

    .line 101
    const/4 v7, 0x0

    :cond_0
    const/4 v7, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    const/4 v7, 0x2

    :goto_1
    const/4 v7, 0x3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    .line 102
    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 103
    const/4 v7, 0x2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I

    move-result v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 104
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    const/4 v7, 0x0

    .line 105
    const/4 v7, 0x1

    new-instance v6, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v2, 0x22

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    const/4 v7, 0x2

    .line 108
    const/4 v7, 0x3

    :cond_2
    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setSelection(II)V

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v2, 0x2

    .line 112
    const/4 v2, 0x3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 114
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    const/4 v2, 0x1

    .line 117
    const/4 v2, 0x2

    :catch_0
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v2, 0x3

    :catch_1
    move-object p1, v0

    :goto_0
    const/4 v2, 0x0

    return-object p1

    const/4 v0, 0x2
.end method

.method dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 4

    const/4 v3, 0x2

    .line 206
    const/4 v3, 0x3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 207
    const/4 v3, 0x0

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, v0, Landroid/graphics/PointF;->x:F

    mul-float p1, p1, p2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    const/4 v1, 0x3
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x2

    .line 383
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public freezeRedraw()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 431
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    return-void

    const/4 v1, 0x1
.end method

.method public getCharIndexFromCoordinate(FF)I
    .locals 2

    const/4 v1, 0x1

    .line 375
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 376
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v0

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    .line 377
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x2

    const/4 p1, -0x1

    return p1

    const/4 v1, 0x1
.end method

.method public getFontsIds()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 2

    const/4 v1, 0x0

    .line 88
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-object v0

    const/4 v1, 0x1
.end method

.method public init()V
    .locals 5

    const/4 v4, 0x3

    const/16 v0, 0x11

    .line 75
    const/4 v4, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setGravity(I)V

    .line 77
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setPadding(IIII)V

    .line 78
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011b

    .line 79
    const/4 v4, 0x3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable:Landroid/graphics/Bitmap;

    const v1, 0x7f07011c

    .line 80
    const/4 v4, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable1:Landroid/graphics/Bitmap;

    return-void

    const/4 v0, 0x0
.end method

.method public invalidate()V
    .locals 2

    const/4 v1, 0x2

    .line 455
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->invalidate()V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public invalidate(IIII)V
    .locals 2

    const/4 v1, 0x3

    .line 465
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->invalidate(IIII)V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    .line 460
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x2

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x1

    .line 341
    const/4 v4, 0x2

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 342
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 343
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 347
    const/4 v4, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 348
    const/4 v4, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 349
    const/4 v4, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 350
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    .line 351
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToLeft(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 352
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleDrawable:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToRight(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 355
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    .line 226
    const/4 v6, 0x1

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 227
    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    const/4 v6, 0x3

    .line 257
    const/4 v6, 0x0

    :pswitch_0
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    if-ne p1, v2, :cond_2

    const/4 v6, 0x1

    .line 259
    const/4 v6, 0x2

    new-instance p1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 260
    const/4 v6, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 261
    const/4 v6, 0x0

    new-instance p1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLineHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    .line 262
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    .line 263
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 264
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2F:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, p1, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 265
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 267
    const/4 v6, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    if-le v4, v5, :cond_0

    const/4 v6, 0x2

    .line 268
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    .line 269
    const/4 v6, 0x0

    new-instance p1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 270
    const/4 v6, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 271
    const/4 v6, 0x2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 272
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_0

    const/4 v6, 0x0

    .line 275
    const/4 v6, 0x1

    :cond_0
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLineHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 276
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 277
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 278
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 279
    const/4 v6, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    if-ne p1, v4, :cond_1

    const/4 v6, 0x3

    .line 280
    const/4 v6, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 281
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 283
    const/4 v6, 0x2

    :cond_1
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    .line 284
    const/4 v6, 0x0

    new-instance p1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 285
    const/4 v6, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 286
    const/4 v6, 0x2

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 287
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_0

    const/4 v6, 0x0

    .line 291
    const/4 v6, 0x1

    :cond_2
    const/4 v6, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    if-ne p1, v2, :cond_6

    const/4 v6, 0x3

    .line 294
    const/4 v6, 0x0

    new-instance p1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 295
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, p1}, Landroid/graphics/PointF;->offset(FF)V

    .line 296
    const/4 v6, 0x2

    new-instance p1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLineHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    .line 297
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p1

    .line 298
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 299
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1F:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v4, p1, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 300
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 302
    const/4 v6, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    if-ge v4, v5, :cond_3

    const/4 v6, 0x0

    .line 303
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    .line 304
    const/4 v6, 0x2

    new-instance p1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 305
    const/4 v6, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 306
    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 307
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_0

    const/4 v6, 0x2

    .line 310
    const/4 v6, 0x3

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLineHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 311
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handleMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 312
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 313
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 314
    const/4 v6, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    if-ne p1, v4, :cond_4

    const/4 v6, 0x1

    .line 315
    const/4 v6, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 316
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object p1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 318
    const/4 v6, 0x0

    :cond_4
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    .line 319
    const/4 v6, 0x2

    new-instance p1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v2, v5

    invoke-direct {p1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 320
    const/4 v6, 0x3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 321
    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 322
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->offset(FF)V

    goto/16 :goto_0

    const/4 v6, 0x2

    :pswitch_1
    const/4 p1, -0x1

    .line 328
    const/4 v6, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    const/4 p1, 0x0

    .line 329
    const/4 v6, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    goto/16 :goto_0

    const/4 v6, 0x1

    .line 230
    const/4 v6, 0x2

    :pswitch_2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToRight(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object p1

    .line 231
    const/4 v6, 0x3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLineHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 232
    const/4 v6, 0x0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 233
    const/4 v6, 0x1

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 235
    const/4 v6, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    invoke-direct {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getRectToLeft(Landroid/graphics/PointF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 236
    const/4 v6, 0x3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLineHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 237
    const/4 v6, 0x0

    iget v4, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 238
    const/4 v6, 0x1

    iget v4, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dpToPixels(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 240
    const/4 v6, 0x2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v6, 0x3

    .line 241
    const/4 v6, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_1:I

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    .line 242
    const/4 v6, 0x1

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 243
    const/4 v6, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    const/4 v6, 0x3

    .line 244
    const/4 v6, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 248
    const/4 v6, 0x1

    :cond_5
    const/4 v6, 0x2

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v6, 0x3

    .line 249
    const/4 v6, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->DRAG_HANDLE_2:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->dragId:I

    .line 250
    const/4 v6, 0x1

    new-instance p1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {p1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->previousPos:Landroid/graphics/PointF;

    .line 251
    const/4 v6, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    if-eqz p1, :cond_6

    const/4 v6, 0x3

    .line 252
    const/4 v6, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 333
    const/4 v6, 0x1

    :cond_6
    const/4 v6, 0x2

    :goto_0
    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->invalidate()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x2
.end method

.method public postInvalidate()V
    .locals 2

    const/4 v1, 0x1

    .line 445
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x3

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->postInvalidate()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public postInvalidate(IIII)V
    .locals 2

    const/4 v1, 0x2

    .line 450
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->postInvalidate(IIII)V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public rectRad(Landroid/graphics/Rect;)F
    .locals 5

    const/4 v4, 0x3

    .line 358
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1

    const/4 v0, 0x0
.end method

.method public requestLayout()V
    .locals 2

    const/4 v1, 0x2

    .line 440
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatTextView;->requestLayout()V

    :cond_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setFontToSelected(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x3

    .line 83
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(IILcom/imaginstudio/imagetools/pixellab/font/customTypeface;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V

    .line 84
    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateFonts()V

    return-void

    const/4 v0, 0x2
.end method

.method public setFonts(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x1

    .line 390
    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x3

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-direct {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V

    :goto_0
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-void

    const/4 v0, 0x0
.end method

.method public setParentTouchInterceptor(Landroid/widget/ScrollView;)V
    .locals 1

    const/4 v0, 0x2

    .line 92
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->escapeTouchFor:Landroid/widget/ScrollView;

    return-void

    const/4 v0, 0x0
.end method

.method public setSelection(II)V
    .locals 2

    const/4 v1, 0x1

    .line 183
    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 184
    const/4 v1, 0x3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateSelection()V

    .line 186
    const/4 v1, 0x1

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v1, 0x1
.end method

.method public setShowBackground(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 126
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    return-void

    const/4 v0, 0x0
.end method

.method public unfreezeRedraw()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 434
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->frozen:Z

    .line 435
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->requestLayout()V

    .line 436
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public updateBackgroundColor()V
    .locals 2

    const/4 v1, 0x3

    .line 144
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->showBackground:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 145
    const/4 v1, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public updateSelection()V
    .locals 8

    const/4 v7, 0x1

    .line 363
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableString;

    .line 364
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/BackgroundColorSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/BackgroundColorSpan;

    .line 365
    const/4 v7, 0x0

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_0

    const/4 v7, 0x2

    aget-object v5, v1, v4

    .line 366
    const/4 v7, 0x3

    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v7, 0x0

    .line 368
    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 369
    const/4 v7, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 370
    const/4 v7, 0x0

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    const/16 v4, 0x9c

    const/16 v5, 0xce

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void

    const/4 v1, 0x3
.end method

.method public updateText(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    .line 130
    const/4 v1, 0x3

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateBackgroundColor()V

    const/4 p1, 0x0

    .line 132
    const/4 v1, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    .line 133
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    .line 134
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 135
    const/4 v1, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    const/4 v1, 0x1
.end method
