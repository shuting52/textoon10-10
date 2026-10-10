.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;
.super Landroid/widget/RelativeLayout;
.source "gradientTool_slider.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;
    }
.end annotation


# static fields
.field static final handleHDp:I = 0xf

.field static final handleWDp:I = 0x1a


# instance fields
.field backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field bgGradient:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

.field private colorHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;",
            ">;"
        }
    .end annotation
.end field

.field colors:[I

.field private gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

.field final gridSquare:I

.field final handleH:I

.field final handleW:I

.field lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

.field pnGridBlack:Landroid/graphics/Paint;

.field pnGridWhite:Landroid/graphics/Paint;

.field positions:[F

.field private sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x1a

    .line 39
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    const/16 p1, 0xf

    .line 40
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleH:I

    const/4 p1, 0x5

    .line 41
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->dpToPixels(I)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 46
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    .line 153
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridBlack:Landroid/graphics/Paint;

    .line 154
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridBlack:Landroid/graphics/Paint;

    const-string v0, "#bdbdbd"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridWhite:Landroid/graphics/Paint;

    .line 156
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridWhite:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    .line 158
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070081

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 36
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    return-object p0

    const/4 v0, 0x0
.end method


# virtual methods
.method public addNewColor()V
    .locals 12

    const/4 v11, 0x3

    .line 239
    const/4 v11, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_7

    const/4 v11, 0x1

    .line 240
    const/4 v11, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v0

    .line 241
    const/4 v11, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v1

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v2, :cond_0

    const/4 v11, 0x0

    const/4 v2, 0x1

    goto :goto_0

    const/4 v11, 0x1

    :cond_0
    const/4 v11, 0x2

    const/4 v2, 0x0

    :goto_0
    const/4 v11, 0x3

    if-eqz v2, :cond_1

    const/4 v11, 0x0

    const/16 v5, 0x3e8

    goto :goto_1

    const/4 v11, 0x1

    :cond_1
    const/4 v11, 0x2

    const/4 v5, 0x0

    :goto_1
    const/4 v11, 0x3

    sub-int v6, v5, v0

    .line 246
    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 247
    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getChildCount()I

    move-result v7

    if-eqz v2, :cond_3

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v11, 0x3

    if-ge v4, v7, :cond_5

    const/4 v11, 0x0

    .line 251
    const/4 v11, 0x1

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 252
    const/4 v11, 0x2

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    if-le v10, v0, :cond_2

    const/4 v11, 0x3

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v6, :cond_2

    const/4 v11, 0x0

    .line 253
    const/4 v11, 0x1

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    .line 254
    const/4 v11, 0x2

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 256
    const/4 v11, 0x3

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v6

    move v8, v6

    move v6, v5

    move v5, v2

    const/4 v2, 0x1

    :cond_2
    const/4 v11, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    const/4 v11, 0x1

    :cond_3
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v11, 0x3

    if-ge v4, v7, :cond_5

    const/4 v11, 0x0

    .line 262
    const/4 v11, 0x1

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 263
    const/4 v11, 0x2

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    if-ge v10, v0, :cond_4

    const/4 v11, 0x3

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v10

    sub-int/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-gt v10, v6, :cond_4

    const/4 v11, 0x0

    .line 264
    const/4 v11, 0x1

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    .line 265
    const/4 v11, 0x2

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 267
    const/4 v11, 0x3

    invoke-virtual {v9}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v6

    move v8, v6

    move v6, v5

    move v5, v2

    const/4 v2, 0x1

    :cond_4
    const/4 v11, 0x0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    const/4 v11, 0x1

    :cond_5
    const/4 v11, 0x2

    add-int/2addr v5, v0

    .line 271
    const/4 v11, 0x3

    div-int/lit8 v5, v5, 0x2

    if-eqz v2, :cond_6

    const/4 v11, 0x0

    .line 272
    const/4 v11, 0x1

    invoke-virtual {p0, v1, v8}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->averageTwoColors(II)I

    move-result v1

    :cond_6
    const/4 v11, 0x2

    invoke-virtual {p0, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->addNewColor(II)V

    :cond_7
    const/4 v11, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method addNewColor(II)V
    .locals 9

    const/4 v8, 0x1

    .line 193
    const/4 v8, 0x2

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    move-object v0, v7

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;-><init>(Landroid/content/Context;IIIILandroid/graphics/drawable/Drawable;)V

    .line 194
    const/4 v8, 0x3

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    .line 195
    const/4 v8, 0x0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v1, v2

    mul-int v1, v1, p2

    int-to-float p2, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 p2, -0xfa

    .line 199
    const/4 v8, 0x2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 200
    const/4 v8, 0x3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 201
    const/4 v8, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz p2, :cond_0

    const/4 v8, 0x1

    .line 202
    const/4 v8, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    .line 204
    const/4 v8, 0x3

    :cond_0
    const/4 v8, 0x0

    iput-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 205
    const/4 v8, 0x1

    invoke-virtual {v7, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setTouchListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle$OnHandleTouchListener;)V

    .line 206
    const/4 v8, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v8, 0x3

    invoke-virtual {p0, v7, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    return-void

    const/4 v0, 0x0
.end method

.method averageTwoColors(II)I
    .locals 5

    const/4 v4, 0x2

    .line 276
    const/4 v4, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 277
    const/4 v4, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 278
    const/4 v4, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 279
    const/4 v4, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 276
    const/4 v4, 0x3

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1

    const/4 v0, 0x0
.end method

.method public connectControls(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    return-void

    const/4 v0, 0x0
.end method

.method public connectPreview(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    return-void

    const/4 v0, 0x0
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x3

    .line 179
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method drawGrid(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    const/4 v10, 0x0

    :goto_0
    const/4 v10, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v2, v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 165
    const/4 v10, 0x3

    :goto_1
    const/4 v10, 0x0

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v3, v3, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v10, 0x1

    .line 167
    const/4 v10, 0x2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v3, v3, v2

    .line 168
    const/4 v10, 0x3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    mul-int v4, v4, v1

    .line 169
    const/4 v10, 0x0

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    add-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 170
    const/4 v10, 0x1

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gridSquare:I

    add-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 171
    const/4 v10, 0x2

    rem-int/lit8 v7, v2, 0x2

    const/4 v8, 0x1

    if-nez v7, :cond_0

    const/4 v10, 0x3

    const/4 v7, 0x1

    goto :goto_2

    const/4 v10, 0x0

    :cond_0
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 172
    const/4 v10, 0x2

    :goto_2
    const/4 v10, 0x3

    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_1

    const/4 v10, 0x0

    goto :goto_3

    const/4 v10, 0x1

    :cond_1
    const/4 v10, 0x2

    const/4 v8, 0x0

    .line 173
    const/4 v10, 0x3

    :goto_3
    const/4 v10, 0x0

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    if-ne v7, v8, :cond_2

    const/4 v10, 0x1

    .line 174
    const/4 v10, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridBlack:Landroid/graphics/Paint;

    goto :goto_4

    const/4 v10, 0x3

    :cond_2
    const/4 v10, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->pnGridWhite:Landroid/graphics/Paint;

    :goto_4
    const/4 v10, 0x1

    invoke-virtual {p2, v9, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v10, 0x2

    :cond_3
    const/4 v10, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v10, 0x0

    :cond_4
    const/4 v10, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public flipPositions()V
    .locals 7

    const/4 v6, 0x3

    .line 70
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 71
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    const/4 v6, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 72
    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 73
    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v3

    rsub-int v3, v3, 0x3e8

    .line 74
    const/4 v6, 0x3

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setPosition(I)V

    .line 75
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v4, v5

    mul-int v4, v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v3, -0xfa

    .line 76
    const/4 v6, 0x1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 77
    const/4 v6, 0x2

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    const/4 v6, 0x3

    .line 79
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->requestLayout()V

    .line 80
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    :cond_1
    const/4 v6, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method gradientChanged()V
    .locals 6

    const/4 v5, 0x1

    .line 223
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 224
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    .line 225
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    .line 227
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 228
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v4

    aput v4, v3, v1

    .line 229
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v5, 0x2

    .line 232
    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->updateGradient([I[F)V

    .line 233
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    .line 234
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    .line 236
    const/4 v5, 0x0

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientDoneEditing()V

    return-void

    const/4 v1, 0x1
.end method

.method gradientColorsChanged()V
    .locals 6

    const/4 v5, 0x3

    .line 211
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    .line 212
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    .line 214
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 215
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v4

    aput v4, v3, v1

    .line 216
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v5, 0x3

    .line 219
    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->bgGradient:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$backgroundDrawableHolder;->updateGradient([I[F)V

    .line 220
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientDoneEditing()V

    return-void

    const/4 v1, 0x1
.end method

.method public gradientDoneEditing()V
    .locals 4

    const/4 v3, 0x0

    .line 58
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 59
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colors:[I

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->positions:[F

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->setColors([I[F)V

    .line 60
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method public initializeColors([I[F)V
    .locals 2

    const/4 v1, 0x3

    .line 89
    const/4 v1, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;[I[F)V

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v1, 0x1
.end method

.method public onHandleDoneEvent()V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onHandleMoveEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    return-void

    const/4 v0, 0x0
.end method

.method public onHandleTouchEvent(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;)V
    .locals 3

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 330
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 331
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 333
    const/4 v2, 0x1

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    .line 334
    const/4 v2, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 335
    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->bringToFront()V

    .line 336
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->requestLayout()V

    .line 337
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    .line 338
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_1
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method public removeCurrentColor()V
    .locals 3

    const/4 v2, 0x2

    .line 353
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    .line 354
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 355
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->removeView(Landroid/view/View;)V

    .line 356
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 357
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    .line 358
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->bringToFront()V

    .line 359
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->requestLayout()V

    .line 360
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientChanged()V

    :cond_0
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method selectLeft()V
    .locals 7

    const/4 v6, 0x2

    .line 305
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    .line 308
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    .line 309
    const/4 v6, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    const/4 v6, 0x3

    :goto_0
    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 310
    const/4 v6, 0x2

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    if-ge v5, v2, :cond_0

    const/4 v6, 0x3

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v0, :cond_0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eq v4, v5, :cond_0

    const/4 v6, 0x1

    .line 311
    const/4 v6, 0x2

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move-object v1, v4

    goto :goto_0

    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .line 316
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    const/4 v0, 0x1

    .line 317
    const/4 v6, 0x3

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    .line 318
    const/4 v6, 0x0

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 319
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->bringToFront()V

    .line 320
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->requestLayout()V

    .line 321
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    .line 322
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_2
    const/4 v6, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method selectRight()V
    .locals 7

    const/4 v6, 0x0

    .line 282
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    .line 285
    const/4 v6, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v2

    .line 286
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->colorHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    const/4 v6, 0x1

    :goto_0
    const/4 v6, 0x2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 287
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    if-le v5, v2, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v0, :cond_0

    const/4 v6, 0x2

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eq v4, v5, :cond_0

    const/4 v6, 0x3

    .line 288
    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getPosition()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    move-object v1, v4

    goto :goto_0

    const/4 v6, 0x1

    :cond_1
    const/4 v6, 0x2

    if-eqz v1, :cond_2

    const/4 v6, 0x3

    .line 293
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    const/4 v0, 0x1

    .line 294
    const/4 v6, 0x1

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->toggleSelect(Z)V

    .line 295
    const/4 v6, 0x2

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    .line 296
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->bringToFront()V

    .line 297
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->requestLayout()V

    .line 298
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    .line 299
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->sliderControls:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->selectionChanged()V

    :cond_2
    const/4 v6, 0x0

    return-void

    const/4 v0, 0x2
.end method

.method setCurrentColorPosition(I)V
    .locals 4

    const/4 v3, 0x2

    .line 183
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 184
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    const/4 v3, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setPosition(I)V

    .line 186
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->handleW:I

    sub-int/2addr v1, v2

    mul-int v1, v1, p1

    int-to-float p1, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 p1, -0xfa

    .line 187
    const/4 v3, 0x0

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 188
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->requestLayout()V

    :cond_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method
