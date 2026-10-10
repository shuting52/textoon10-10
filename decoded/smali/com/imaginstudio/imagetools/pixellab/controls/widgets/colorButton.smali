.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "colorButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;
    }
.end annotation


# static fields
.field public static final TYPE_COLOR:I = 0x1

.field public static final TYPE_GRADIENT:I = 0x2


# instance fields
.field backgroundCheckers:Landroid/graphics/drawable/Drawable;

.field backgroundCheckersBitmap:Landroid/graphics/Bitmap;

.field displayColor:I

.field displayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field public isSquare:Z

.field public mColorChangeNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;

.field numberToViewStr:Ljava/lang/String;

.field numberView:Z

.field pntCheckers:Landroid/graphics/Paint;

.field pntText:Landroid/graphics/Paint;

.field private strokeEnabled:Z

.field strokeWidth:I

.field textArea:Landroid/graphics/Rect;

.field private textBounds:Landroid/graphics/Rect;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V
    .locals 4

    .line 74
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->isSquare:Z

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->dpToPixels(I)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeWidth:I

    const/4 v2, 0x0

    .line 46
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    .line 47
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntText:Landroid/graphics/Paint;

    .line 48
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    .line 49
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textBounds:Landroid/graphics/Rect;

    .line 50
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberView:Z

    const-string v0, "1"

    .line 64
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberToViewStr:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    .line 76
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    if-eqz p4, :cond_0

    .line 77
    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 78
    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iput-boolean p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->isSquare:Z

    if-eqz p5, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070081

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070080

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->backgroundCheckersBitmap:Landroid/graphics/Bitmap;

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    .line 87
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 88
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 89
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BitmapShader;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->backgroundCheckersBitmap:Landroid/graphics/Bitmap;

    sget-object p4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object p5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p3, p4, p5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 91
    :goto_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntText:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method public disableStroke()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 53
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeEnabled:Z

    return-void

    const/4 v1, 0x1
.end method

.method dpToPixels(I)I
    .locals 3

    const/4 v2, 0x1

    .line 183
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    int-to-float p1, p1

    .line 184
    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1

    const/4 v0, 0x2
.end method

.method public getDisplayColor()I
    .locals 2

    const/4 v1, 0x1

    .line 164
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    return v0

    const/4 v1, 0x1
.end method

.method public getDisplayGradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x0

    .line 156
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getType()I
    .locals 2

    const/4 v1, 0x3

    .line 148
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    return v0

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x2

    .line 96
    const/4 v9, 0x3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    const/4 v9, 0x0

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v3, 0xff

    .line 98
    const/4 v9, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    const/4 v9, 0x2

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->isSquare:Z

    const/4 v4, 0x2

    if-nez v3, :cond_5

    const/4 v9, 0x3

    .line 101
    const/4 v9, 0x0

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    if-ne v3, v2, :cond_1

    const/4 v9, 0x1

    .line 102
    const/4 v9, 0x2

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberView:Z

    if-nez v3, :cond_0

    const/4 v9, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    goto :goto_0

    const/4 v9, 0x0

    :cond_0
    const/4 v9, 0x1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->stripAlpha(I)I

    move-result v3

    :goto_0
    const/4 v9, 0x2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    const/4 v9, 0x3

    .line 104
    const/4 v9, 0x0

    :cond_1
    const/4 v9, 0x1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    if-ne v3, v4, :cond_2

    const/4 v9, 0x2

    .line 105
    const/4 v9, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v3, v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    const/4 v9, 0x0

    :cond_2
    const/4 v9, 0x1

    :goto_1
    const/4 v9, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->backgroundCheckersBitmap:Landroid/graphics/Bitmap;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    const/4 v9, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    if-eqz v3, :cond_3

    const/4 v9, 0x0

    .line 108
    const/4 v9, 0x1

    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeEnabled:Z

    if-eqz v3, :cond_3

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->dpToPixels(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntCheckers:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    const/4 v9, 0x3

    :cond_3
    const/4 v9, 0x0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 112
    const/4 v9, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 113
    const/4 v9, 0x2

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    const/4 v9, 0x3

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->dpToPixels(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v2, -0x1000000

    .line 115
    const/4 v9, 0x0

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x64

    .line 116
    const/4 v9, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    const/4 v9, 0x2

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeEnabled:Z

    if-eqz v2, :cond_4

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->dpToPixels(I)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v2, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 118
    const/4 v9, 0x0

    :cond_4
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->dpToPixels(I)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    const/4 v9, 0x2

    .line 121
    const/4 v9, 0x3

    :cond_5
    const/4 v9, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 122
    const/4 v9, 0x1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v2}, Landroid/graphics/Paint;-><init>(I)V

    const v6, -0x777778

    .line 123
    const/4 v9, 0x2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    const/4 v9, 0x3

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 125
    const/4 v9, 0x0

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeWidth:I

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    const v6, -0x333334

    .line 126
    const/4 v9, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    const/4 v9, 0x2

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    const/4 v9, 0x3

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeWidth:I

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->strokeWidth:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 130
    const/4 v9, 0x0

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    if-ne v5, v2, :cond_7

    const/4 v9, 0x1

    .line 131
    const/4 v9, 0x2

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberView:Z

    if-nez v2, :cond_6

    const/4 v9, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    goto :goto_2

    const/4 v9, 0x0

    :cond_6
    const/4 v9, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->stripAlpha(I)I

    move-result v2

    :goto_2
    const/4 v9, 0x2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    const/4 v9, 0x3

    .line 133
    const/4 v9, 0x0

    :cond_7
    const/4 v9, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    if-ne v2, v4, :cond_8

    const/4 v9, 0x2

    .line 134
    const/4 v9, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v2, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 136
    const/4 v9, 0x0

    :cond_8
    const/4 v9, 0x1

    :goto_3
    const/4 v9, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    const/4 v9, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    const/4 v9, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 140
    const/4 v9, 0x1

    :goto_4
    const/4 v9, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberView:Z

    if-eqz v0, :cond_9

    const/4 v9, 0x3

    .line 141
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->getContrastColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberToViewStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntText:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->fitTextInRect(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textBounds:Landroid/graphics/Rect;

    .line 143
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberToViewStr:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->pntText:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    const/4 v9, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 177
    const/4 v0, 0x2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatImageButton;->onSizeChanged(IIII)V

    .line 178
    const/4 v0, 0x3

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    .line 179
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3e99999a    # 0.3f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->textArea:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float p4, p4, p3

    float-to-int p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->inset(II)V

    return-void

    const/4 v0, 0x0
.end method

.method public setDisplayColor(I)V
    .locals 2

    const/4 v1, 0x2

    .line 168
    const/4 v1, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayColor:I

    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->invalidate()V

    .line 170
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->mColorChangeNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 171
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->mColorChangeNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;->colorDisplayChanged(I)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public setDisplayGradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x2

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x3

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->displayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-void

    const/4 v0, 0x0
.end method

.method public setNumberToView(I)V
    .locals 1

    const/4 v0, 0x1

    .line 70
    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberToViewStr:Ljava/lang/String;

    .line 71
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setOnColorNotifyChange(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->mColorChangeNotify:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton$colorChangeNotify;

    return-void

    const/4 v0, 0x0
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->type:I

    return-void

    const/4 v0, 0x0
.end method

.method public toggleNumberView(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 66
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->numberView:Z

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method
