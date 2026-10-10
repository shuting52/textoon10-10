.class public Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;
.super Landroid/widget/TextView;
.source "CustomTextView.java"
# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;,
        Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;
    }
.end annotation
# static fields
.field public static final FILL_TYPE_COLOR:I = 0x1
.field public static final FILL_TYPE_GRADIENT:I = 0x2
# instance fields
.field additionalHeightSpace:I
.field additionalWidthSpace:I
.field arcChord:F
.field arcHeight:F
.field boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.field private canvasStore:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field
.field colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.field curveCenter:Landroid/graphics/PointF;
.field public curveDegree:I
.field curvePaint:Landroid/text/TextPaint;
.field curveRadian:D
.field curveRadius:F
.field private curveText:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
.field defaultColor:I
.field public drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;
.field embossFilter:Landroid/graphics/EmbossMaskFilter;
.field fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.field private frozen:Z
.field gradient_bounds:Landroid/graphics/Rect;
.field inPaddingLeft:I
.field inPaddingRight:I
.field private includeEmbossInStroke:Z
.field public inner_color:I
.field public inner_dx:F
.field public inner_dy:F
.field inner_enabled:Z
.field public inner_r:F
.field public isCurved:Z
.field italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.field private justifyAlign:Z
.field private letterSpacing:I
.field private maxDim:I
.field offsetY:I
.field private originalText:Ljava/lang/String;
.field path:Landroid/graphics/Path;
.field pathDirection:Landroid/graphics/Path$Direction;
.field public spacing:I
.field public strokeColor:I
.field public strokeFillType:I
.field public strokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
.field public strokeWidth:F
.field public stroke_enabled:Z
.field private tempBitmap:Landroid/graphics/Bitmap;
.field private tempCanvas:Landroid/graphics/Canvas;
.field textWidthLength:F
.field private textureShader:Landroid/graphics/BitmapShader;
.field tmpBottom:I
.field tmpLeft:I
.field tmpRight:I
.field tmpTop:I
.field public tmp_drawing3DDepth:Z
.field unCurvedText:Ljava/lang/String;
.field underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
.field public userMaxWidth:D
.field public userTextSize:F
.field private wordSpacing:Z
# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .line 179
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    const/4 v0, 0x0
    .line 69
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->embossFilter:Landroid/graphics/EmbossMaskFilter;
    const/4 v1, 0x0
    .line 70
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I
    .line 71
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I
    .line 73
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpLeft:I
    .line 74
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpTop:I
    .line 75
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpRight:I
    .line 76
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpBottom:I
    .line 113
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;
    const/16 v2, 0x64
    .line 115
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxDim:I
    .line 116
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z
    const/high16 v2, -0x1000000
    .line 118
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->defaultColor:I
    .line 120
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V
    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .line 121
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V
    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .line 122
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V
    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .line 123
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V
    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .line 124
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;-><init>()V
    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .line 126
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    const/high16 v3, 0x41a00000    # 20.0f
    .line 131
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F
    const-wide/high16 v3, -0x4010000000000000L    # -1.0
    .line 133
    iput-wide v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D
    .line 134
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I
    const/high16 v3, 0x40800000    # 4.0f
    .line 135
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    .line 139
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I
    .line 140
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>()V
    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    const/4 v3, 0x1
    .line 141
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I
    .line 142
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;
    const/high16 v4, 0x40400000    # 3.0f
    .line 145
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F
    const/4 v4, 0x0
    .line 146
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F
    .line 147
    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F
    .line 148
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I
    .line 151
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    .line 152
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    .line 170
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    const-string v2, ""
    .line 171
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    .line 172
    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
    invoke-direct {v2, p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;-><init>(Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$1;)V
    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
    .line 173
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z
    .line 174
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;
    .line 176
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    .line 781
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z
    .line 181
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxDim:I
    .line 182
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;
    if-nez p2, :cond_0
    .line 183
    new-instance p2, Ljava/util/WeakHashMap;
    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;
    .line 187
    :cond_0
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMinWidth(I)V
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    move-result-object p1
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object p1
    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F
    mul-float p1, p1, p2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateTextSize(F)V
    .line 190
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getContext()Landroid/content/Context;
    move-result-object p1
    const p2, 0x7f0c00fb
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    move-result-object p1
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;)V
    .line 192
    invoke-virtual {p0, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLayerType(ILandroid/graphics/Paint;)V
    .line 193
    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setIncludeFontPadding(Z)V
    return-void
.end method
.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;)Z
    .locals 1
    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"
    .line 58
    const/4 v0, 0x1
    iget-boolean p0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    return p0
    const/4 v0, 0x0
.end method
.method private applyColorToCurve()V
    .locals 3
    const/4 v2, 0x3
    .line 783
    const/4 v2, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmp_drawing3DDepth:Z
    if-nez v0, :cond_0
    const/4 v2, 0x1
    .line 784
    const/4 v2, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    move-result-object v0
    if-eqz v0, :cond_1
    const/4 v2, 0x3
    .line 786
    const/4 v2, 0x0
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I
    move-result v0
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V
    goto :goto_0
    const/4 v2, 0x1
    .line 789
    const/4 v2, 0x2
    :cond_0
    const/4 v2, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextColors()Landroid/content/res/ColorStateList;
    move-result-object v1
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v1
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V
    :cond_1
    const/4 v2, 0x0
    :goto_0
    const/4 v2, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method private applyFontToCurve()V
    .locals 4
    const/4 v3, 0x3
    .line 772
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I
    move-result v1
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->isCoverAll(I)Z
    move-result v0
    .line 773
    const/4 v3, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I
    move-result v2
    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->isCoverAll(I)Z
    move-result v1
    .line 774
    const/4 v3, 0x2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
    .line 775
    const/4 v3, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    if-eqz v1, :cond_0
    const/4 v3, 0x0
    const/high16 v1, -0x41800000    # -0.25f
    goto :goto_0
    const/4 v3, 0x1
    :cond_0
    const/4 v3, 0x2
    const/4 v1, 0x0
    :goto_0
    const/4 v3, 0x3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSkewX(F)V
    .line 776
    const/4 v3, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getLastAttr()Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    move-result-object v0
    if-eqz v0, :cond_1
    const/4 v3, 0x1
    .line 778
    const/4 v3, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;
    move-result-object v0
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v0
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :cond_1
    const/4 v3, 0x3
    return-void
    const/4 v1, 0x3
.end method
.method private drawCurvedText(Landroid/graphics/Canvas;)V
    .locals 8
    const/4 v7, 0x1
    .line 737
    const/4 v7, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
    .line 766
    const/4 v7, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v1
    invoke-virtual {v1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;
    move-result-object v1
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .line 767
    const/4 v7, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->getSpacedText()Ljava/lang/String;
    move-result-object v2
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    if-gez v0, :cond_0
    const/4 v7, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    move-result v0
    int-to-float v0, v0
    move v5, v0
    goto :goto_0
    const/4 v7, 0x2
    :cond_0
    const/4 v7, 0x3
    const/4 v0, 0x0
    const/4 v5, 0x0
    :goto_0
    const/4 v7, 0x0
    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    const/4 v4, 0x0
    move-object v1, p1
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    return-void
    const/4 v1, 0x3
.end method
.method private drawStuff(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation
    const/4 v1, 0x2
    .line 721
    const/4 v1, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V
    .line 723
    const/4 v1, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz v0, :cond_0
    const/4 v1, 0x1
    .line 724
    const/4 v1, 0x2
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawCurvedText(Landroid/graphics/Canvas;)V
    goto :goto_0
    const/4 v1, 0x3
    .line 728
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V
    :goto_0
    const/4 v1, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method private generateTempCanvas(FF)V
    .locals 5
    const/4 v4, 0x0
    const-string v0, "%dx%d"
    const/4 v1, 0x2
    .line 965
    const/4 v4, 0x1
    new-array v1, v1, [Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getWidth()I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 0x0
    aput-object v2, v1, v3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getHeight()I
    move-result v2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v2
    const/4 v3, 0x1
    aput-object v2, v1, v3
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0
    .line 966
    const/4 v4, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/util/Pair;
    if-eqz v1, :cond_0
    const/4 v4, 0x3
    .line 968
    const/4 v4, 0x0
    iget-object p1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;
    check-cast p1, Landroid/graphics/Canvas;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    .line 969
    const/4 v4, 0x1
    iget-object p1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;
    check-cast p1, Landroid/graphics/Bitmap;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
    const/4 v4, 0x2
    .line 971
    const/4 v4, 0x3
    :cond_0
    const/4 v4, 0x0
    new-instance v1, Landroid/graphics/Canvas;
    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V
    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    .line 972
    const/4 v4, 0x1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V
    .line 973
    const/4 v4, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getWidth()I
    move-result v1
    int-to-float v1, v1
    mul-float v1, v1, p1
    float-to-int p1, v1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getHeight()I
    move-result v1
    int-to-float v1, v1
    mul-float v1, v1, p2
    float-to-int p2, v1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object p1
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;
    .line 974
    const/4 v4, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    .line 975
    const/4 v4, 0x0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->canvasStore:Ljava/util/WeakHashMap;
    new-instance p2, Landroid/util/Pair;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;
    invoke-direct {p2, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :goto_0
    const/4 v4, 0x1
    return-void
    const/4 v0, 0x0
.end method
.method static varargs maxList([F)I
    .locals 4
    const/4 v3, 0x3
    const/4 v0, 0x0
    .line 79
    const/4 v3, 0x0
    aget v0, p0, v0
    const/4 v1, 0x1
    .line 80
    const/4 v3, 0x1
    :goto_0
    const/4 v3, 0x2
    array-length v2, p0
    if-ge v1, v2, :cond_1
    const/4 v3, 0x3
    .line 81
    const/4 v3, 0x0
    aget v2, p0, v1
    cmpl-float v2, v2, v0
    if-lez v2, :cond_0
    const/4 v3, 0x1
    aget v0, p0, v1
    :cond_0
    const/4 v3, 0x2
    add-int/lit8 v1, v1, 0x1
    goto :goto_0
    const/4 v3, 0x3
    :cond_1
    const/4 v3, 0x0
    float-to-int p0, v0
    return p0
    const/4 v1, 0x3
.end method
.method private removeSpans(Landroid/text/SpannableString;)V
    .locals 6
    const/4 v5, 0x2
    .line 397
    const/4 v5, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const-class v1, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;
    const/4 v2, 0x0
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;
    .line 398
    const/4 v5, 0x0
    array-length v1, v0
    const/4 v3, 0x0
    :goto_0
    const/4 v5, 0x1
    if-ge v3, v1, :cond_0
    const/4 v5, 0x2
    aget-object v4, v0, v3
    .line 399
    const/4 v5, 0x3
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v3, v3, 0x1
    goto :goto_0
    const/4 v5, 0x0
    .line 401
    const/4 v5, 0x1
    :cond_0
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const-class v1, Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroid/text/style/ForegroundColorSpan;
    .line 402
    const/4 v5, 0x3
    array-length v1, v0
    const/4 v3, 0x0
    :goto_1
    const/4 v5, 0x0
    if-ge v3, v1, :cond_1
    const/4 v5, 0x1
    aget-object v4, v0, v3
    .line 403
    const/4 v5, 0x2
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v3, v3, 0x1
    goto :goto_1
    const/4 v5, 0x3
    .line 405
    const/4 v5, 0x0
    :cond_1
    const/4 v5, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const-class v1, Landroid/text/style/StyleSpan;
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroid/text/style/StyleSpan;
    .line 406
    const/4 v5, 0x2
    array-length v1, v0
    const/4 v3, 0x0
    :goto_2
    const/4 v5, 0x3
    if-ge v3, v1, :cond_2
    const/4 v5, 0x0
    aget-object v4, v0, v3
    .line 407
    const/4 v5, 0x1
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v3, v3, 0x1
    goto :goto_2
    const/4 v5, 0x2
    .line 409
    const/4 v5, 0x3
    :cond_2
    const/4 v5, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const-class v1, Landroid/text/style/UnderlineSpan;
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroid/text/style/UnderlineSpan;
    .line 410
    const/4 v5, 0x1
    array-length v1, v0
    :goto_3
    const/4 v5, 0x2
    if-ge v2, v1, :cond_3
    const/4 v5, 0x3
    aget-object v3, v0, v2
    .line 411
    const/4 v5, 0x0
    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v2, v2, 0x1
    goto :goto_3
    const/4 v5, 0x1
    :cond_3
    const/4 v5, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method public static useNewLetterSpacing()Z
    .locals 3
    const/4 v2, 0x0
    .line 416
    const/4 v2, 0x1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x15
    if-lt v0, v1, :cond_0
    const/4 v2, 0x2
    const/4 v0, 0x1
    goto :goto_0
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    const/4 v0, 0x0
    :goto_0
    const/4 v2, 0x1
    return v0
    const/4 v0, 0x2
.end method
# virtual methods
.method applyJustifyAlign()V
    .locals 2
    const/4 v1, 0x3
    .line 263
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    check-cast v0, Landroid/text/SpannableString;
    .line 264
    const/4 v1, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyJustifyAlign(Landroid/text/SpannableString;)V
    return-void
    const/4 v1, 0x1
.end method
.method applyJustifyAlign(Landroid/text/SpannableString;)V
    .locals 11
    .line 268
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const-class v1, Landroid/text/style/ScaleXSpan;
    const/4 v2, 0x0
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroid/text/style/ScaleXSpan;
    .line 269
    array-length v1, v0
    const/4 v3, 0x0
    :goto_0
    if-ge v3, v1, :cond_0
    aget-object v4, v0, v3
    .line 270
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v3, v3, 0x1
    goto :goto_0
    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z
    if-eqz v0, :cond_6
    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getLayout()Landroid/text/Layout;
    move-result-object v0
    const/4 v1, 0x0
    const/4 v3, 0x0
    .line 277
    :goto_1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getLineCount()I
    move-result v4
    add-int/lit8 v4, v4, -0x1
    if-ge v1, v4, :cond_6
    .line 278
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I
    move-result v4
    add-int/lit8 v5, v3, 0x1
    move v6, v5
    const/4 v7, 0x0
    :goto_2
    add-int/lit8 v8, v4, -0x1
    const/16 v9, 0x20
    if-ge v6, v8, :cond_2
    .line 281
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v8
    invoke-interface {v8, v6}, Ljava/lang/CharSequence;->charAt(I)C
    move-result v8
    if-ne v8, v9, :cond_1
    add-int/lit8 v7, v7, 0x1
    :cond_1
    add-int/lit8 v6, v6, 0x1
    goto :goto_2
    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getLayout()Landroid/text/Layout;
    move-result-object v10
    invoke-virtual {v10}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;
    move-result-object v10
    invoke-static {v6, v3, v4, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    move-result v3
    .line 286
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I
    move-result v6
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getCompoundPaddingLeft()I
    move-result v10
    sub-int/2addr v6, v10
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getCompoundPaddingRight()I
    move-result v10
    sub-int/2addr v6, v10
    int-to-float v6, v6
    sub-float/2addr v6, v3
    int-to-float v3, v7
    .line 287
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v7
    const-string v10, " "
    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
    move-result v7
    mul-float v3, v3, v7
    div-float/2addr v6, v3
    const/high16 v3, 0x3f800000    # 1.0f
    add-float/2addr v6, v3
    cmpl-float v3, v6, v3
    if-lez v3, :cond_4
    :goto_3
    if-ge v5, v8, :cond_4
    .line 290
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v3
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C
    move-result v3
    if-ne v3, v9, :cond_3
    .line 291
    new-instance v3, Landroid/text/style/ScaleXSpan;
    invoke-direct {v3, v6}, Landroid/text/style/ScaleXSpan;-><init>(F)V
    add-int/lit8 v7, v5, 0x1
    const/16 v10, 0x21
    invoke-virtual {p1, v3, v5, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :cond_3
    add-int/lit8 v5, v5, 0x1
    goto :goto_3
    :cond_4
    add-int/lit8 v1, v1, 0x1
    move v3, v4
    goto :goto_1
    :catch_0
    move-exception v0
    .line 298
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    move-result v1
    const-class v3, Landroid/text/style/ScaleXSpan;
    invoke-virtual {p1, v2, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Landroid/text/style/ScaleXSpan;
    .line 299
    array-length v3, v1
    :goto_4
    if-ge v2, v3, :cond_5
    aget-object v4, v1, v2
    .line 300
    invoke-virtual {p1, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v2, v2, 0x1
    goto :goto_4
    .line 302
    :cond_5
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    .line 305
    :cond_6
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V
    return-void
    const/4 v1, 0x3
.end method
.method public applySpacing()V
    .locals 2
    const/4 v1, 0x0
    .line 232
    const/4 v1, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    check-cast v0, Landroid/text/SpannableString;
    .line 233
    const/4 v1, 0x2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpacing(Landroid/text/SpannableString;)V
    return-void
    const/4 v1, 0x1
.end method
.method public applySpacing(Landroid/text/SpannableString;)V
    .locals 6
    const/4 v5, 0x0
    .line 237
    const/4 v5, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const-class v1, Landroid/text/style/ScaleXSpan;
    const/4 v2, 0x0
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v0
    check-cast v0, [Landroid/text/style/ScaleXSpan;
    .line 238
    const/4 v5, 0x2
    array-length v1, v0
    :goto_0
    const/4 v5, 0x3
    if-ge v2, v1, :cond_0
    const/4 v5, 0x0
    aget-object v3, v0, v2
    .line 239
    const/4 v5, 0x1
    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v2, v2, 0x1
    goto :goto_0
    const/4 v5, 0x2
    .line 241
    const/4 v5, 0x3
    :cond_0
    const/4 v5, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    const/4 v1, 0x1
    if-le v0, v1, :cond_5
    const/4 v5, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-eqz v0, :cond_5
    const/4 v5, 0x2
    .line 242
    const/4 v5, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    const/16 v2, 0x21
    const/high16 v3, 0x41200000    # 10.0f
    if-nez v0, :cond_2
    const/4 v5, 0x0
    .line 243
    const/4 v5, 0x1
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result v0
    if-eqz v0, :cond_1
    const/4 v5, 0x2
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    int-to-float p1, p1
    const/high16 v0, 0x42c80000    # 100.0f
    div-float/2addr p1, v0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpacing(F)V
    goto :goto_3
    const/4 v5, 0x3
    .line 245
    const/4 v5, 0x0
    :cond_1
    const/4 v5, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    int-to-float v0, v0
    div-float/2addr v0, v3
    .line 246
    const/4 v5, 0x2
    :goto_1
    const/4 v5, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I
    move-result v3
    if-ge v1, v3, :cond_5
    const/4 v5, 0x0
    .line 247
    const/4 v5, 0x1
    new-instance v3, Landroid/text/style/ScaleXSpan;
    invoke-direct {v3, v0}, Landroid/text/style/ScaleXSpan;-><init>(F)V
    add-int/lit8 v4, v1, 0x1
    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    add-int/lit8 v1, v1, 0x2
    goto :goto_1
    const/4 v5, 0x2
    :cond_2
    const/4 v5, 0x3
    const/high16 v0, 0x3f800000    # 1.0f
    .line 251
    const/4 v5, 0x0
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    int-to-float v4, v4
    div-float/2addr v4, v3
    add-float/2addr v4, v0
    .line 252
    const/4 v5, 0x1
    :goto_2
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    move-result v0
    if-ge v1, v0, :cond_5
    const/4 v5, 0x3
    .line 253
    const/4 v5, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C
    move-result v0
    .line 254
    const/4 v5, 0x1
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z
    move-result v3
    if-nez v3, :cond_3
    const/4 v5, 0x2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z
    move-result v0
    if-eqz v0, :cond_4
    const/4 v5, 0x3
    :cond_3
    const/4 v5, 0x0
    new-instance v0, Landroid/text/style/ScaleXSpan;
    invoke-direct {v0, v4}, Landroid/text/style/ScaleXSpan;-><init>(F)V
    add-int/lit8 v3, v1, 0x1
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :cond_4
    const/4 v5, 0x1
    add-int/lit8 v1, v1, 0x1
    goto :goto_2
    const/4 v5, 0x2
    .line 259
    const/4 v5, 0x3
    :cond_5
    const/4 v5, 0x0
    :goto_3
    const/4 v5, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V
    return-void
    const/4 v1, 0x1
.end method
.method public applySpans()V
    .locals 9
    const/4 v8, 0x3
    .line 342
    const/4 v8, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    check-cast v0, Landroid/text/SpannableString;
    .line 344
    const/4 v8, 0x1
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpacing(Landroid/text/SpannableString;)V
    .line 346
    const/4 v8, 0x2
    invoke-direct {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeSpans(Landroid/text/SpannableString;)V
    .line 348
    const/4 v8, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_0
    const/4 v8, 0x0
    :goto_0
    const/4 v8, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    const/4 v3, 0x0
    if-eqz v2, :cond_1
    const/4 v8, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .line 349
    const/4 v8, 0x3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v4
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I
    move-result v4
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    move-result v3
    .line 350
    const/4 v8, 0x0
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v4
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I
    move-result v5
    invoke-virtual {p0, v4, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I
    move-result v4
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v5
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    move-result v5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    move-result v4
    .line 351
    const/4 v8, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v5
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    move-result v5
    if-ge v3, v5, :cond_0
    const/4 v8, 0x2
    if-lt v4, v3, :cond_0
    const/4 v8, 0x3
    .line 352
    const/4 v8, 0x0
    new-instance v5, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getFont()Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;
    move-result-object v2
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/font/customTypeface;->getTypeface()Landroid/graphics/Typeface;
    move-result-object v2
    invoke-direct {v5, v2}, Lcom/imaginstudio/imagetools/pixellab/font/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V
    const/16 v2, 0x22
    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    goto :goto_0
    const/4 v8, 0x1
    .line 355
    const/4 v8, 0x2
    :cond_1
    const/4 v8, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_2
    const/4 v8, 0x0
    :goto_1
    const/4 v8, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    const/16 v4, 0x21
    if-eqz v2, :cond_3
    const/4 v8, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .line 356
    const/4 v8, 0x3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v5
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I
    move-result v5
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
    move-result v5
    .line 357
    const/4 v8, 0x0
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v6
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I
    move-result v7
    invoke-virtual {p0, v6, v7, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I
    move-result v6
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v7
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I
    move-result v7
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I
    move-result v6
    .line 358
    const/4 v8, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v7
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I
    move-result v7
    if-ge v5, v7, :cond_2
    const/4 v8, 0x2
    if-lt v6, v5, :cond_2
    const/4 v8, 0x3
    .line 359
    const/4 v8, 0x0
    new-instance v7, Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I
    move-result v2
    invoke-direct {v7, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
    invoke-virtual {v0, v7, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    goto :goto_1
    const/4 v8, 0x1
    .line 362
    const/4 v8, 0x2
    :cond_3
    const/4 v8, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_4
    const/4 v8, 0x0
    :goto_2
    const/4 v8, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_5
    const/4 v8, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .line 363
    const/4 v8, 0x3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v5
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I
    move-result v5
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
    move-result v5
    .line 364
    const/4 v8, 0x0
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v6
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I
    move-result v2
    invoke-virtual {p0, v6, v2, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I
    move-result v2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    move-result v6
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I
    move-result v2
    .line 365
    const/4 v8, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    move-result v6
    if-ge v5, v6, :cond_4
    const/4 v8, 0x2
    if-lt v2, v5, :cond_4
    const/4 v8, 0x3
    .line 366
    const/4 v8, 0x0
    new-instance v6, Landroid/text/style/StyleSpan;
    const/4 v7, 0x1
    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V
    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    goto :goto_2
    const/4 v8, 0x1
    .line 370
    const/4 v8, 0x2
    :cond_5
    const/4 v8, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_6
    const/4 v8, 0x0
    :goto_3
    const/4 v8, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_7
    const/4 v8, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .line 371
    const/4 v8, 0x3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v5
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I
    move-result v5
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
    move-result v5
    .line 372
    const/4 v8, 0x0
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v6
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I
    move-result v2
    invoke-virtual {p0, v6, v2, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I
    move-result v2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    move-result v6
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I
    move-result v2
    .line 373
    const/4 v8, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    move-result v6
    if-ge v5, v6, :cond_6
    const/4 v8, 0x2
    if-lt v2, v5, :cond_6
    const/4 v8, 0x3
    .line 374
    const/4 v8, 0x0
    new-instance v6, Landroid/text/style/StyleSpan;
    const/4 v7, 0x2
    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V
    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    goto :goto_3
    const/4 v8, 0x1
    .line 378
    const/4 v8, 0x2
    :cond_7
    const/4 v8, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_8
    const/4 v8, 0x0
    :goto_4
    const/4 v8, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_9
    const/4 v8, 0x2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    .line 379
    const/4 v8, 0x3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v5
    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I
    move-result v5
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
    move-result v5
    .line 380
    const/4 v8, 0x0
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v6
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I
    move-result v2
    invoke-virtual {p0, v6, v2, v5}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I
    move-result v2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    move-result v6
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I
    move-result v2
    .line 381
    const/4 v8, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v6
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    move-result v6
    if-ge v5, v6, :cond_8
    const/4 v8, 0x2
    if-lt v2, v5, :cond_8
    const/4 v8, 0x3
    .line 382
    const/4 v8, 0x0
    new-instance v6, Landroid/text/style/UnderlineSpan;
    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V
    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    goto :goto_4
    const/4 v8, 0x1
    :cond_9
    const/4 v8, 0x2
    return-void
    const/4 v0, 0x0
.end method
.method public clearStroke()V
    .locals 2
    const/4 v1, 0x0
    const/4 v0, 0x0
    .line 464
    const/4 v1, 0x1
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    .line 465
    const/4 v1, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V
    return-void
    const/4 v1, 0x1
.end method
.method public clearStyles(II)V
    .locals 2
    const/4 v1, 0x0
    .line 817
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->removeInterval(II)V
    .line 818
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->removeInterval(II)V
    .line 819
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->removeInterval(II)V
    .line 820
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    return-void
    const/4 v1, 0x1
.end method
.method public createFontFromPath(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    const/4 v2, 0x2
    .line 876
    const/4 v2, 0x3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
    .line 878
    const/4 v2, 0x0
    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getContext()Landroid/content/Context;
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
    .line 881
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
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    const/4 v0, 0x2
    .line 497
    const/4 v0, 0x3
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDraw(Landroid/graphics/Canvas;)V
    return-void
    const/4 v0, 0x0
.end method
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    const/4 v6, 0x1
    .line 691
    const/4 v6, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->embossFilter:Landroid/graphics/EmbossMaskFilter;
    if-eqz v0, :cond_0
    const/4 v6, 0x3
    const/16 v0, 0x9
    .line 692
    const/4 v6, 0x0
    new-array v0, v0, [F
    .line 693
    const/4 v6, 0x1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;
    move-result-object v1
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V
    const/4 v1, 0x0
    .line 694
    const/4 v6, 0x2
    aget v1, v0, v1
    const/high16 v2, 0x3f800000    # 1.0f
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F
    move-result v1
    const/4 v3, 0x4
    .line 695
    const/4 v6, 0x3
    aget v0, v0, v3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F
    move-result v0
    .line 697
    const/4 v6, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getWidth()I
    move-result v2
    int-to-float v2, v2
    mul-float v1, v1, v2
    float-to-int v1, v1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getHeight()I
    move-result v2
    int-to-float v2, v2
    mul-float v0, v0, v2
    float-to-int v0, v0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v0
    .line 698
    const/4 v6, 0x1
    new-instance v1, Landroid/graphics/Canvas;
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    .line 699
    const/4 v6, 0x2
    invoke-super {p0, v1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V
    .line 700
    const/4 v6, 0x3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;
    move-result-object v1
    .line 701
    const/4 v6, 0x0
    new-instance v2, Landroid/graphics/Paint;
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
    .line 702
    const/4 v6, 0x1
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->embossFilter:Landroid/graphics/EmbossMaskFilter;
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    const/4 v3, 0x1
    .line 703
    const/4 v6, 0x2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setDither(Z)V
    .line 704
    const/4 v6, 0x3
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    .line 705
    const/4 v6, 0x0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
    .line 706
    const/4 v6, 0x1
    new-instance v3, Landroid/graphics/BitmapShader;
    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;
    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    const/4 v0, 0x0
    .line 707
    const/4 v6, 0x2
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    goto :goto_0
    const/4 v6, 0x3
    .line 709
    const/4 v6, 0x0
    :cond_0
    const/4 v6, 0x1
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V
    .line 712
    const/4 v6, 0x2
    :goto_0
    const/4 v6, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;
    if-eqz v0, :cond_1
    const/4 v6, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawMaskListener:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;
    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$onFinishDraw;->done(Landroid/graphics/Canvas;)V
    :cond_1
    const/4 v6, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method public freeze()V
    .locals 2
    const/4 v1, 0x3
    const/4 v0, 0x1
    .line 980
    const/4 v1, 0x0
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    return-void
    const/4 v1, 0x1
.end method
.method public getLetterSpace()I
    .locals 2
    const/4 v1, 0x2
    .line 207
    const/4 v1, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    return v0
    const/4 v1, 0x1
.end method
.method public getTextLength()I
    .locals 2
    const/4 v1, 0x1
    .line 450
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    if-eqz v0, :cond_0
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v0
    goto :goto_0
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    const/4 v0, 0x0
    :goto_0
    const/4 v1, 0x2
    return v0
    const/4 v1, 0x1
.end method
.method public invalidate()V
    .locals 2
    const/4 v1, 0x0
    .line 1005
    const/4 v1, 0x1
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    if-nez v0, :cond_0
    const/4 v1, 0x2
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V
    :cond_0
    const/4 v1, 0x3
    return-void
    const/4 v1, 0x1
.end method
.method public invalidate(IIII)V
    .locals 2
    const/4 v1, 0x1
    .line 1015
    const/4 v1, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    if-nez v0, :cond_0
    const/4 v1, 0x3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V
    :cond_0
    const/4 v1, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2
    const/4 v1, 0x2
    .line 1010
    const/4 v1, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    if-nez v0, :cond_0
    const/4 v1, 0x0
    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V
    :cond_0
    const/4 v1, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method public isJustifyAlign()Z
    .locals 2
    const/4 v1, 0x3
    .line 829
    const/4 v1, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z
    return v0
    const/4 v1, 0x1
.end method
.method public isWordSpacing()Z
    .locals 2
    const/4 v1, 0x2
    .line 210
    const/4 v1, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    return v0
    const/4 v1, 0x1
.end method
.method negativePart(F)F
    .locals 3
    const/4 v2, 0x1
    const/4 v0, 0x0
    cmpl-float v1, p1, v0
    if-ltz v1, :cond_0
    const/4 v2, 0x2
    goto :goto_0
    const/4 v2, 0x3
    .line 197
    const/4 v2, 0x0
    :cond_0
    const/4 v2, 0x1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F
    move-result v0
    :goto_0
    const/4 v2, 0x2
    return v0
    const/4 v0, 0x2
.end method
.method public offsetEnd(III)I
    .locals 2
    const/4 v1, 0x0
    .line 393
    const/4 v1, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-eqz v0, :cond_0
    const/4 v1, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    if-nez v0, :cond_0
    const/4 v1, 0x3
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result v0
    if-nez v0, :cond_0
    const/4 v1, 0x0
    sub-int/2addr p2, p1
    mul-int/lit8 p2, p2, 0x2
    add-int/2addr p2, p3
    :cond_0
    const/4 v1, 0x1
    return p2
    const/4 v1, 0x1
.end method
.method public offsetStart(I)I
    .locals 2
    const/4 v1, 0x3
    .line 389
    const/4 v1, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-eqz v0, :cond_0
    const/4 v1, 0x1
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    if-nez v0, :cond_0
    const/4 v1, 0x2
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result v0
    if-nez v0, :cond_0
    const/4 v1, 0x3
    mul-int/lit8 p1, p1, 0x2
    add-int/lit8 p1, p1, -0x1
    :cond_0
    const/4 v1, 0x0
    return p1
    const/4 v1, 0x1
.end method
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    move-object/from16 v0, p0
    move-object/from16 v1, p1
    .line 503
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-nez v2, :cond_0
    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyJustifyAlign()V
    :cond_0
    const/16 v2, 0x9
    .line 507
    new-array v2, v2, [F
    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;
    move-result-object v3
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V
    const/4 v3, 0x0
    .line 510
    aget v4, v2, v3
    const/high16 v5, 0x3f800000    # 1.0f
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F
    move-result v4
    const/4 v6, 0x4
    .line 511
    aget v2, v2, v6
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F
    move-result v2
    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    const/4 v6, 0x1
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V
    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setDither(Z)V
    .line 516
    iget-boolean v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    const/4 v8, 0x0
    if-eqz v5, :cond_7
    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    invoke-virtual {v5}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;
    move-result-object v5
    .line 518
    iget-boolean v9, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z
    if-nez v9, :cond_1
    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v9
    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .line 521
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->freeze()V
    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V
    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getCurrentTextColor()I
    move-result v9
    .line 524
    new-instance v10, Landroid/text/TextPaint;
    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V
    .line 525
    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V
    .line 526
    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setDither(Z)V
    .line 527
    invoke-virtual {v10, v6}, Landroid/text/TextPaint;->setFilterBitmap(Z)V
    .line 529
    new-instance v11, Landroid/text/TextPaint;
    invoke-direct {v11}, Landroid/text/TextPaint;-><init>()V
    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v12
    invoke-virtual {v11, v12}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v12
    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 534
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V
    .line 535
    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .line 536
    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .line 538
    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I
    const/4 v13, 0x2
    if-ne v12, v13, :cond_2
    iget-object v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;
    if-eqz v12, :cond_2
    const/high16 v12, -0x1000000
    goto :goto_0
    :cond_2
    iget v12, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I
    .line 540
    :goto_0
    invoke-virtual {v0, v12}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V
    .line 542
    iget v14, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->setStrokeWidth(F)V
    .line 543
    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setColor(I)V
    .line 548
    new-instance v12, Lcom/imaginstudio/imagetools/pixellab/TextObject/superCanvas;
    invoke-direct {v12}, Lcom/imaginstudio/imagetools/pixellab/TextObject/superCanvas;-><init>()V
    .line 549
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v15, 0x13
    if-ne v14, v15, :cond_3
    const-wide v14, 0x406fe00000000000L    # 255.0
    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextSize()F
    move-result v3
    float-to-double v6, v3
    div-double/2addr v14, v6
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F
    move-result v3
    float-to-double v6, v3
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(DD)D
    move-result-wide v6
    double-to-float v3, v6
    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I
    move-result v6
    int-to-float v6, v6
    mul-float v6, v6, v3
    float-to-int v6, v6
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I
    move-result v7
    int-to-float v7, v7
    mul-float v7, v7, v3
    float-to-int v7, v7
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v6, v7, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v6
    .line 552
    invoke-virtual {v12, v3, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/superCanvas;->scale(FF)V
    goto :goto_1
    .line 555
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I
    move-result v3
    int-to-float v3, v3
    mul-float v3, v3, v4
    float-to-int v3, v3
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I
    move-result v6
    int-to-float v6, v6
    mul-float v6, v6, v2
    float-to-int v6, v6
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    invoke-static {v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    move-result-object v6
    .line 556
    invoke-virtual {v12, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/superCanvas;->scale(FF)V
    .line 558
    :goto_1
    invoke-virtual {v12, v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/superCanvas;->setBitmap(Landroid/graphics/Bitmap;)V
    .line 559
    invoke-virtual {v10, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .line 560
    iget v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I
    if-ne v3, v13, :cond_4
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;
    if-eqz v3, :cond_4
    const/16 v3, 0xff
    .line 561
    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setAlpha(I)V
    .line 562
    iget-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    iget-object v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->gradient_bounds:Landroid/graphics/Rect;
    invoke-virtual {v3, v7}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;
    move-result-object v3
    invoke-virtual {v10, v3}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .line 564
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v3
    invoke-virtual {v3, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 567
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz v3, :cond_5
    .line 568
    new-instance v3, Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v7
    invoke-direct {v3, v7}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    .line 569
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V
    .line 573
    :cond_5
    invoke-direct {v0, v12}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V
    .line 574
    new-instance v3, Landroid/graphics/Paint;
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V
    const/4 v7, 0x1
    .line 575
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    .line 576
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setDither(Z)V
    .line 577
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
    .line 578
    new-instance v7, Landroid/graphics/RectF;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I
    move-result v10
    int-to-float v10, v10
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I
    move-result v12
    int-to-float v12, v12
    const/4 v13, 0x0
    invoke-direct {v7, v13, v13, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V
    invoke-virtual {v1, v6, v8, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .line 580
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v3
    invoke-virtual {v3, v11}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 585
    invoke-virtual {v0, v9}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V
    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->restoreColorSpans()V
    .line 588
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z
    if-nez v3, :cond_6
    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v3
    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .line 592
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unfreeze()V
    .line 593
    invoke-super/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V
    .line 594
    invoke-super/range {p0 .. p0}, Landroid/widget/TextView;->requestLayout()V
    .line 596
    :cond_7
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz v3, :cond_8
    .line 597
    new-instance v3, Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    invoke-direct {v3, v5}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    iput-object v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    .line 598
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V
    .line 599
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyColorToCurve()V
    .line 601
    :cond_8
    new-instance v3, Landroid/text/TextPaint;
    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V
    .line 603
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;
    if-eqz v5, :cond_9
    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    iget-object v6, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .line 608
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V
    .line 610
    iget-object v5, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;
    if-eqz v5, :cond_a
    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v5
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 614
    :cond_a
    iget-boolean v3, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z
    if-eqz v3, :cond_d
    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->freeze()V
    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->removeColorSpans()V
    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getCurrentTextColor()I
    move-result v3
    .line 618
    new-instance v5, Landroid/text/TextPaint;
    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V
    const/4 v6, 0x1
    .line 619
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V
    .line 620
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setDither(Z)V
    .line 621
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setFilterBitmap(Z)V
    .line 622
    new-instance v6, Landroid/text/TextPaint;
    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V
    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v7
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v7
    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 626
    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .line 629
    invoke-direct {v0, v4, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->generateTempCanvas(FF)V
    .line 631
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I
    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V
    .line 632
    iget v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setColor(I)V
    .line 633
    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .line 634
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 636
    iget-boolean v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz v2, :cond_b
    .line 637
    new-instance v2, Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v4
    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    iput-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    .line 638
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V
    .line 641
    :cond_b
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    invoke-direct {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V
    const/high16 v2, -0x1000000
    .line 643
    invoke-virtual {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V
    .line 644
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setColor(I)V
    .line 646
    new-instance v2, Landroid/graphics/PorterDuffXfermode;
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;
    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .line 647
    new-instance v2, Landroid/graphics/BlurMaskFilter;
    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F
    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;
    invoke-direct {v2, v4, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V
    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .line 649
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I
    .line 650
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    iget v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F
    iget v7, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F
    invoke-virtual {v2, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V
    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v2
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 653
    iget-boolean v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz v2, :cond_c
    .line 654
    new-instance v2, Landroid/text/TextPaint;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v4
    invoke-direct {v2, v4}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    iput-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    .line 655
    invoke-direct/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V
    .line 658
    :cond_c
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    invoke-direct {v0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->drawStuff(Landroid/graphics/Canvas;)V
    .line 661
    :try_start_0
    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .line 666
    :catch_0
    new-instance v2, Landroid/graphics/Paint;
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
    const/4 v4, 0x1
    .line 667
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V
    .line 668
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setDither(Z)V
    .line 669
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    .line 672
    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getWidth()I
    move-result v7
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getHeight()I
    move-result v9
    const/4 v10, 0x0
    invoke-direct {v5, v10, v10, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V
    invoke-virtual {v1, v4, v8, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .line 673
    iget-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tempCanvas:Landroid/graphics/Canvas;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;
    invoke-virtual {v1, v10, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v1
    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V
    .line 677
    invoke-virtual {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextColor(I)V
    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->restoreColorSpans()V
    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unfreeze()V
    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V
    :cond_d
    return-void
    const/4 v1, 0x1
.end method
.method protected onLayout(ZIIII)V
    .locals 1
    const/4 v0, 0x3
    .line 686
    const/4 v0, 0x0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V
    return-void
    const/4 v0, 0x0
.end method
.method protected onMeasure(II)V
    .locals 2
    const/4 v1, 0x2
    .line 956
    const/4 v1, 0x3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
    .line 957
    const/4 v1, 0x0
    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz p1, :cond_0
    const/4 v1, 0x1
    .line 958
    const/4 v1, 0x2
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcChord:F
    float-to-int p1, p1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingLeft()I
    move-result p2
    add-int/2addr p1, p2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingRight()I
    move-result p2
    add-int/2addr p1, p2
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I
    add-int/2addr p1, p2
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcHeight:F
    float-to-int p2, p2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalHeightSpace:I
    add-int/2addr p2, v0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingTop()I
    move-result v0
    add-int/2addr p2, v0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingBottom()I
    move-result v0
    add-int/2addr p2, v0
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMeasuredDimension(II)V
    goto :goto_0
    const/4 v1, 0x3
    .line 960
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredWidth()I
    move-result p1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getMeasuredHeight()I
    move-result p2
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMeasuredDimension(II)V
    :goto_0
    const/4 v1, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method public postInvalidate()V
    .locals 2
    const/4 v1, 0x0
    .line 995
    const/4 v1, 0x1
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    if-nez v0, :cond_0
    const/4 v1, 0x2
    invoke-super {p0}, Landroid/widget/TextView;->postInvalidate()V
    :cond_0
    const/4 v1, 0x3
    return-void
    const/4 v1, 0x1
.end method
.method public postInvalidate(IIII)V
    .locals 2
    const/4 v1, 0x1
    .line 1000
    const/4 v1, 0x2
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    if-nez v0, :cond_0
    const/4 v1, 0x3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->postInvalidate(IIII)V
    :cond_0
    const/4 v1, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method printRect(Landroid/graphics/Rect;I)V
    .locals 4
    const/4 v3, 0x2
    const-string v0, "justify"
    .line 338
    const/4 v3, 0x3
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "line : "
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, " : Left : "
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/graphics/Rect;->left:I
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", top : "
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/graphics/Rect;->top:I
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", right : "
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p2, p1, Landroid/graphics/Rect;->right:I
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string p2, ", bottom : "
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget p1, p1, Landroid/graphics/Rect;->bottom:I
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    return-void
    const/4 v1, 0x3
.end method
.method public removeColorSpans()V
    .locals 6
    const/4 v5, 0x1
    .line 420
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    check-cast v0, Landroid/text/SpannableString;
    .line 422
    const/4 v5, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I
    move-result v1
    const-class v2, Landroid/text/style/ForegroundColorSpan;
    const/4 v3, 0x0
    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Landroid/text/style/ForegroundColorSpan;
    .line 423
    const/4 v5, 0x0
    array-length v2, v1
    :goto_0
    const/4 v5, 0x1
    if-ge v3, v2, :cond_0
    const/4 v5, 0x2
    aget-object v4, v1, v3
    .line 424
    const/4 v5, 0x3
    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V
    add-int/lit8 v3, v3, 0x1
    goto :goto_0
    const/4 v5, 0x0
    :cond_0
    const/4 v5, 0x1
    return-void
    const/4 v1, 0x1
.end method
.method public requestLayout()V
    .locals 2
    const/4 v1, 0x3
    .line 990
    const/4 v1, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    if-nez v0, :cond_0
    const/4 v1, 0x1
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V
    :cond_0
    const/4 v1, 0x2
    return-void
    const/4 v1, 0x1
.end method
.method public restoreColorSpans()V
    .locals 7
    const/4 v6, 0x0
    .line 428
    const/4 v6, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    check-cast v0, Landroid/text/SpannableString;
    .line 430
    const/4 v6, 0x2
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->getIntervals()Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :cond_0
    const/4 v6, 0x3
    :goto_0
    const/4 v6, 0x0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_1
    const/4 v6, 0x1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    const/4 v3, 0x0
    .line 431
    const/4 v6, 0x2
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v4
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetStart(I)I
    move-result v4
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
    move-result v3
    .line 432
    const/4 v6, 0x3
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getStart()I
    move-result v4
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getEnd()I
    move-result v5
    invoke-virtual {p0, v4, v5, v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetEnd(III)I
    move-result v4
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v5
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    move-result v5
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
    move-result v4
    .line 433
    const/4 v6, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v5
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    move-result v5
    if-ge v3, v5, :cond_0
    const/4 v6, 0x1
    .line 434
    const/4 v6, 0x2
    new-instance v5, Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;->getColor()I
    move-result v2
    invoke-direct {v5, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
    const/16 v2, 0x21
    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    goto :goto_0
    const/4 v6, 0x3
    :cond_1
    const/4 v6, 0x0
    return-void
    const/4 v0, 0x2
.end method
.method public returnActualText()Ljava/lang/String;
    .locals 2
    const/4 v1, 0x2
    .line 447
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    return-object v0
    const/4 v1, 0x1
.end method
.method public setBlack()V
    .locals 6
    const/4 v5, 0x1
    .line 793
    const/4 v5, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getText()Ljava/lang/CharSequence;
    move-result-object v0
    check-cast v0, Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;
    const/high16 v2, -0x1000000
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getTextLength()I
    move-result v2
    const/4 v3, 0x0
    const/16 v4, 0x21
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    return-void
    const/4 v1, 0x1
.end method
.method public setBoldToSelection(II)V
    .locals 3
    const/4 v2, 0x0
    .line 800
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    invoke-direct {v1, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .line 801
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    return-void
    const/4 v0, 0x2
.end method
.method public setColorToSelection(III)V
    .locals 3
    const/4 v2, 0x0
    .line 796
    const/4 v2, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    invoke-direct {v1, p2, p3, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(III)V
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .line 797
    const/4 v2, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    return-void
    const/4 v0, 0x2
.end method
.method public setCurve(I)V
    .locals 10
    const/4 v9, 0x0
    if-eqz p1, :cond_0
    const/4 v9, 0x1
    const/4 v0, 0x1
    goto :goto_0
    const/4 v9, 0x2
    :cond_0
    const/4 v9, 0x3
    const/4 v0, 0x0
    .line 890
    const/4 v9, 0x0
    :goto_0
    const/4 v9, 0x1
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    .line 892
    const/4 v9, 0x2
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result v0
    const/4 v1, 0x0
    if-eqz v0, :cond_2
    const/4 v9, 0x3
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    if-nez v0, :cond_2
    const/4 v9, 0x0
    .line 893
    const/4 v9, 0x1
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-nez v0, :cond_1
    const/4 v9, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    int-to-float v0, v0
    const/high16 v2, 0x42c80000    # 100.0f
    div-float/2addr v0, v2
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpacing(F)V
    goto :goto_1
    const/4 v9, 0x3
    .line 894
    const/4 v9, 0x0
    :cond_1
    const/4 v9, 0x1
    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpacing(F)V
    .line 897
    const/4 v9, 0x2
    :cond_2
    const/4 v9, 0x3
    :goto_1
    const/4 v9, 0x0
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    if-eqz p1, :cond_3
    const/4 v9, 0x1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0
    .line 900
    const/4 v9, 0x2
    iput-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D
    const p1, 0x7fffffff
    .line 901
    const/4 v9, 0x3
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaxWidth(I)V
    .line 903
    const/4 v9, 0x0
    :cond_3
    const/4 v9, 0x1
    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz p1, :cond_7
    const/4 v9, 0x2
    .line 904
    const/4 v9, 0x3
    new-instance p1, Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    .line 905
    const/4 v9, 0x0
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applyFontToCurve()V
    .line 906
    const/4 v9, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    invoke-virtual {p1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->setText(Ljava/lang/String;I)V
    .line 908
    const/4 v9, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveText:Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView$CurveText;->getSpacedText()Ljava/lang/String;
    move-result-object p1
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unCurvedText:Ljava/lang/String;
    .line 910
    const/4 v9, 0x3
    new-instance p1, Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct {p1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V
    .line 911
    const/4 v9, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .line 912
    const/4 v9, 0x1
    new-instance v0, Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;
    .line 914
    const/4 v9, 0x2
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->pathDirection:Landroid/graphics/Path$Direction;
    .line 915
    const/4 v9, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->unCurvedText:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
    move-result v0
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textWidthLength:F
    .line 919
    const/4 v9, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    move-result v0
    int-to-double v2, v0
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D
    move-result-wide v2
    iput-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    .line 920
    const/4 v9, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textWidthLength:F
    float-to-double v2, v0
    iget-wide v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    div-double/2addr v2, v4
    double-to-float v0, v2
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F
    const/high16 v0, 0x40000000    # 2.0f
    .line 921
    const/4 v9, 0x2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F
    mul-float v2, v2, v0
    iget-wide v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    const-wide/high16 v5, 0x4000000000000000L    # 2.0
    div-double/2addr v3, v5
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D
    move-result-wide v3
    double-to-float v0, v3
    mul-float v2, v2, v0
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcChord:F
    .line 922
    const/4 v9, 0x3
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F
    add-float/2addr v0, v1
    iget-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    div-double/2addr v2, v5
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
    move-result-wide v2
    double-to-float v2, v2
    const/high16 v3, 0x3f800000    # 1.0f
    sub-float v2, v3, v2
    mul-float v0, v0, v2
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcHeight:F
    .line 924
    const/4 v9, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    if-lez v0, :cond_4
    const/4 v9, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I
    mul-int/lit8 v0, v0, 0x2
    neg-int v0, v0
    goto :goto_2
    const/4 v9, 0x2
    :cond_4
    const/4 v9, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I
    neg-int v0, v0
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v2
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    add-int/2addr v0, v2
    mul-int/lit8 v0, v0, 0x2
    :goto_2
    const/4 v9, 0x0
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I
    .line 925
    const/4 v9, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I
    int-to-float v0, v0
    iget-wide v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    div-double/2addr v7, v5
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D
    move-result-wide v7
    double-to-float v2, v7
    mul-float v0, v0, v2
    float-to-int v0, v0
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I
    .line 927
    const/4 v9, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v2
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I
    sub-int/2addr v0, v2
    int-to-float v0, v0
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    if-gez v2, :cond_5
    const/4 v9, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v1
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    int-to-float v1, v1
    iget-wide v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    div-double/2addr v7, v5
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D
    move-result-wide v7
    double-to-float v2, v7
    sub-float v2, v3, v2
    mul-float v1, v1, v2
    :cond_5
    const/4 v9, 0x0
    add-float/2addr v0, v1
    float-to-int v0, v0
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalHeightSpace:I
    const/16 v0, 0x5a
    .line 929
    const/4 v9, 0x1
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I
    int-to-float p1, p1
    sub-float/2addr v1, p1
    float-to-int p1, v1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingTop()I
    move-result v1
    add-int/2addr p1, v1
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I
    .line 931
    const/4 v9, 0x2
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    if-gez p1, :cond_6
    const/4 v9, 0x3
    .line 932
    const/4 v9, 0x0
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->pathDirection:Landroid/graphics/Path$Direction;
    const/16 v0, -0x5a
    .line 934
    const/4 v9, 0x1
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F
    neg-float p1, p1
    float-to-int p1, p1
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I
    .line 935
    const/4 v9, 0x2
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I
    int-to-float p1, p1
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcHeight:F
    float-to-int v1, v1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingTop()I
    move-result v2
    add-int/2addr v1, v2
    int-to-float v1, v1
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curvePaint:Landroid/text/TextPaint;
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    move-result-object v2
    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    int-to-float v2, v2
    iget-wide v7, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadian:D
    div-double/2addr v7, v5
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D
    move-result-wide v4
    double-to-float v4, v4
    sub-float/2addr v3, v4
    mul-float v2, v2, v3
    add-float/2addr v1, v2
    add-float/2addr p1, v1
    float-to-int p1, p1
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I
    .line 938
    const/4 v9, 0x3
    :cond_6
    const/4 v9, 0x0
    new-instance p1, Landroid/graphics/PointF;
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->arcChord:F
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingRight()I
    move-result v2
    int-to-float v2, v2
    add-float/2addr v1, v2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingLeft()I
    move-result v2
    int-to-float v2, v2
    add-float/2addr v1, v2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->additionalWidthSpace:I
    int-to-float v2, v2
    add-float/2addr v1, v2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I
    int-to-float v2, v2
    sub-float/2addr v1, v2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I
    int-to-float v2, v2
    sub-float/2addr v1, v2
    const/high16 v2, 0x3f000000    # 0.5f
    mul-float v1, v1, v2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I
    int-to-float v2, v2
    add-float/2addr v1, v2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->offsetY:I
    int-to-float v2, v2
    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;
    .line 939
    const/4 v9, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;
    iget v1, v1, Landroid/graphics/PointF;->x:F
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;
    iget v2, v2, Landroid/graphics/PointF;->y:F
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveRadius:F
    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->pathDirection:Landroid/graphics/Path$Direction;
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V
    .line 941
    const/4 v9, 0x2
    new-instance p1, Landroid/graphics/Matrix;
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V
    int-to-float v0, v0
    .line 942
    const/4 v9, 0x3
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;
    iget v1, v1, Landroid/graphics/PointF;->x:F
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveCenter:Landroid/graphics/PointF;
    iget v2, v2, Landroid/graphics/PointF;->y:F
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V
    .line 943
    const/4 v9, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->path:Landroid/graphics/Path;
    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    .line 948
    const/4 v9, 0x1
    :cond_7
    const/4 v9, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->requestLayout()V
    .line 949
    const/4 v9, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->postInvalidate()V
    return-void
    const/4 v1, 0x1
.end method
.method public setFonts(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1
    const/4 v0, 0x1
    .line 812
    const/4 v0, 0x2
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .line 813
    const/4 v0, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    return-void
    const/4 v0, 0x0
.end method
.method public setIncludeEmbossInStroke(Z)V
    .locals 1
    const/4 v0, 0x1
    .line 733
    const/4 v0, 0x2
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->includeEmbossInStroke:Z
    return-void
    const/4 v0, 0x0
.end method
.method public setInnerShadow(ZFFFI)V
    .locals 1
    const/4 v0, 0x0
    .line 483
    const/4 v0, 0x1
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z
    .line 485
    const/4 v0, 0x2
    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_enabled:Z
    if-eqz p1, :cond_0
    const/4 v0, 0x3
    const p1, 0x3dcccccd    # 0.1f
    .line 486
    const/4 v0, 0x0
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F
    move-result p1
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_r:F
    .line 487
    const/4 v0, 0x1
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dx:F
    .line 488
    const/4 v0, 0x2
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_dy:F
    .line 489
    const/4 v0, 0x3
    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inner_color:I
    .line 491
    const/4 v0, 0x0
    :cond_0
    const/4 v0, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->invalidate()V
    return-void
    const/4 v0, 0x0
.end method
.method public setItalicToSelection(II)V
    .locals 3
    const/4 v2, 0x3
    .line 804
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    invoke-direct {v1, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .line 805
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    return-void
    const/4 v0, 0x2
.end method
.method public setJustifyAlign(Z)V
    .locals 1
    const/4 v0, 0x3
    .line 832
    const/4 v0, 0x0
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z
    if-eqz p1, :cond_0
    const/4 v0, 0x1
    const/4 p1, 0x0
    .line 834
    const/4 v0, 0x2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpace(I)V
    :cond_0
    const/4 v0, 0x3
    return-void
    const/4 v0, 0x0
.end method
.method public setLetterSpace(I)V
    .locals 2
    const/4 v1, 0x1
    if-eqz p1, :cond_0
    const/4 v1, 0x2
    const/4 v0, 0x0
    .line 218
    const/4 v1, 0x3
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->justifyAlign:Z
    .line 221
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-eqz v0, :cond_1
    const/4 v1, 0x2
    if-nez p1, :cond_2
    const/4 v1, 0x3
    :cond_1
    const/4 v1, 0x0
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-eq v0, p1, :cond_2
    const/4 v1, 0x1
    .line 222
    const/4 v1, 0x2
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    .line 223
    const/4 v1, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;)V
    goto :goto_0
    const/4 v1, 0x0
    .line 226
    const/4 v1, 0x1
    :cond_2
    const/4 v1, 0x2
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    .line 227
    const/4 v1, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpacing()V
    :goto_0
    const/4 v1, 0x0
    return-void
    const/4 v1, 0x1
.end method
.method public setLineSpacing(FF)V
    .locals 1
    const/4 v0, 0x2
    .line 201
    const/4 v0, 0x3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V
    .line 202
    const/4 v0, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updatePaddings()V
    return-void
    const/4 v0, 0x0
.end method
.method public setMaskFilter(Landroid/graphics/EmbossMaskFilter;)V
    .locals 3
    const/4 v2, 0x2
    .line 62
    const/4 v2, 0x3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x1a
    if-lt v0, v1, :cond_0
    const/4 v2, 0x0
    .line 63
    const/4 v2, 0x1
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->embossFilter:Landroid/graphics/EmbossMaskFilter;
    goto :goto_0
    const/4 v2, 0x2
    .line 65
    const/4 v2, 0x3
    :cond_0
    const/4 v2, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaint()Landroid/text/TextPaint;
    move-result-object v0
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    :goto_0
    if-eqz p1, :plus_emboss_restore_hardware
    const/4 v0, 0x1
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    goto :plus_emboss_layer_done
:plus_emboss_restore_hardware
    const/4 v0, 0x0
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
:plus_emboss_layer_done
    const/4 v2, 0x1
    return-void
    const/4 v0, 0x2
.end method
.method public setStrokeFill(ZFIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1
    const/4 v0, 0x3
    .line 468
    const/4 v0, 0x0
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    .line 469
    const/4 v0, 0x1
    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    if-eqz p1, :cond_1
    const/4 v0, 0x2
    const/4 p1, 0x0
    cmpl-float p1, p2, p1
    if-nez p1, :cond_0
    const/4 v0, 0x3
    const p2, 0x3dcccccd    # 0.1f
    .line 470
    const/4 v0, 0x0
    :cond_0
    const/4 v0, 0x1
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    .line 471
    const/4 v0, 0x2
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeColor:I
    .line 472
    const/4 v0, 0x3
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeFillType:I
    .line 473
    const/4 v0, 0x0
    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .line 478
    const/4 v0, 0x1
    :cond_1
    const/4 v0, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updatePaddings()V
    return-void
    const/4 v0, 0x0
.end method
.method public setTextureShader(Landroid/graphics/BitmapShader;)V
    .locals 1
    const/4 v0, 0x0
    .line 825
    const/4 v0, 0x1
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textureShader:Landroid/graphics/BitmapShader;
    return-void
    const/4 v0, 0x0
.end method
.method public setUnderToSelection(II)V
    .locals 3
    const/4 v2, 0x3
    .line 808
    const/4 v2, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;
    invoke-direct {v1, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;-><init>(II)V
    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->addInterval(Lcom/imaginstudio/imagetools/pixellab/controls/functions/interval;)V
    .line 809
    const/4 v2, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    return-void
    const/4 v0, 0x2
.end method
.method public setWordSpacing(Z)V
    .locals 1
    const/4 v0, 0x3
    .line 213
    const/4 v0, 0x0
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    .line 214
    const/4 v0, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;)V
    return-void
    const/4 v0, 0x0
.end method
.method public textUpdated()V
    .locals 2
    const/4 v1, 0x3
    .line 439
    const/4 v1, 0x0
    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->isCurved:Z
    if-eqz v0, :cond_0
    const/4 v1, 0x1
    .line 440
    const/4 v1, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->curveDegree:I
    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setCurve(I)V
    .line 442
    const/4 v1, 0x3
    :cond_0
    const/4 v1, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->requestLayout()V
    .line 443
    const/4 v1, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->postInvalidate()V
    return-void
    const/4 v1, 0x1
.end method
.method public unfreeze()V
    .locals 2
    const/4 v1, 0x3
    const/4 v0, 0x0
    .line 984
    const/4 v1, 0x0
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->frozen:Z
    return-void
    const/4 v1, 0x1
.end method
.method updateEnds(II)V
    .locals 2
    const/4 v1, 0x2
    .line 331
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->fontsIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V
    .line 332
    const/4 v1, 0x0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->colorIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V
    .line 333
    const/4 v1, 0x1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->boldIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V
    .line 334
    const/4 v1, 0x2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->italicIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V
    .line 335
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->underIds:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;->updateEnds(II)V
    return-void
    const/4 v1, 0x1
.end method
.method public updatePaddings()V
    .locals 11
    const/4 v10, 0x1
    .line 88
    const/4 v10, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingLeft()I
    move-result v0
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpLeft:I
    sub-int/2addr v0, v1
    const/4 v1, 0x2
    new-array v2, v1, [F
    iget-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    const/high16 v4, 0x3f000000    # 0.5f
    const/4 v5, 0x0
    if-eqz v3, :cond_0
    const/4 v10, 0x3
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    mul-float v3, v3, v4
    goto :goto_0
    const/4 v10, 0x0
    :cond_0
    const/4 v10, 0x1
    const/4 v3, 0x0
    :goto_0
    const/4 v10, 0x2
    const/4 v6, 0x0
    aput v3, v2, v6
    const/high16 v3, 0x40a00000    # 5.0f
    const/4 v7, 0x1
    aput v3, v2, v7
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I
    move-result v2
    add-int/2addr v0, v2
    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I
    add-int/2addr v0, v2
    .line 89
    const/4 v10, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingRight()I
    move-result v2
    iget v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpRight:I
    sub-int/2addr v2, v8
    new-array v8, v1, [F
    iget-boolean v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    if-eqz v9, :cond_1
    const/4 v10, 0x0
    iget v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    mul-float v9, v9, v4
    goto :goto_1
    const/4 v10, 0x1
    :cond_1
    const/4 v10, 0x2
    const/4 v9, 0x0
    :goto_1
    const/4 v10, 0x3
    aput v9, v8, v6
    aput v3, v8, v7
    invoke-static {v8}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I
    move-result v3
    add-int/2addr v2, v3
    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingRight:I
    add-int/2addr v2, v3
    .line 90
    const/4 v10, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingTop()I
    move-result v3
    iget v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpTop:I
    sub-int/2addr v3, v8
    new-array v8, v7, [F
    iget-boolean v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    if-eqz v9, :cond_2
    const/4 v10, 0x1
    iget v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    mul-float v9, v9, v4
    goto :goto_2
    const/4 v10, 0x2
    :cond_2
    const/4 v10, 0x3
    const/4 v9, 0x0
    :goto_2
    const/4 v10, 0x0
    aput v9, v8, v6
    invoke-static {v8}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I
    move-result v8
    add-int/2addr v3, v8
    .line 91
    const/4 v10, 0x1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->getPaddingBottom()I
    move-result v8
    iget v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpBottom:I
    sub-int/2addr v8, v9
    new-array v1, v1, [F
    iget-boolean v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->stroke_enabled:Z
    if-eqz v9, :cond_3
    const/4 v10, 0x2
    iget v9, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->strokeWidth:F
    mul-float v4, v4, v9
    goto :goto_3
    const/4 v10, 0x3
    :cond_3
    const/4 v10, 0x0
    const/4 v4, 0x0
    :goto_3
    const/4 v10, 0x1
    aput v4, v1, v6
    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->spacing:I
    int-to-float v4, v4
    invoke-virtual {p0, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->negativePart(F)F
    move-result v4
    aput v4, v1, v7
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->maxList([F)I
    move-result v1
    add-int/2addr v8, v1
    .line 93
    const/4 v10, 0x2
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpLeft:I
    .line 94
    const/4 v10, 0x3
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpTop:I
    .line 95
    const/4 v10, 0x0
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpRight:I
    .line 96
    const/4 v10, 0x1
    iput v8, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->tmpBottom:I
    .line 98
    const/4 v10, 0x2
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->inPaddingLeft:I
    if-lez v1, :cond_4
    const/4 v10, 0x3
    const/high16 v1, 0x3f800000    # 1.0f
    goto :goto_4
    const/4 v10, 0x0
    :cond_4
    const/4 v10, 0x1
    const/4 v1, 0x0
    :goto_4
    const/4 v10, 0x2
    neg-int v4, v0
    int-to-float v4, v4
    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I
    move-result v6
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setShadowLayer(FFFI)V
    .line 100
    const/4 v10, 0x3
    invoke-virtual {p0, v0, v3, v2, v8}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setPadding(IIII)V
    .line 106
    const/4 v10, 0x0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V
    return-void
    const/4 v0, 0x2
.end method
.method public updateText(Ljava/lang/String;)V
    .locals 2
    const/4 v1, 0x2
    .line 328
    const/4 v1, 0x3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateText(Ljava/lang/String;I)V
    return-void
    const/4 v1, 0x1
.end method
.method public updateText(Ljava/lang/String;I)V
    .locals 2
    const/4 v1, 0x1
    const/4 v0, -0x1
    if-eq p2, v0, :cond_0
    const/4 v1, 0x2
    goto :goto_0
    const/4 v1, 0x3
    .line 309
    const/4 v1, 0x0
    :cond_0
    const/4 v1, 0x1
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I
    move-result p2
    :goto_0
    const/4 v1, 0x2
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    move-result v0
    invoke-virtual {p0, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->updateEnds(II)V
    .line 311
    const/4 v1, 0x3
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    .line 313
    const/4 v1, 0x0
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->letterSpacing:I
    if-eqz p2, :cond_3
    const/4 v1, 0x1
    iget-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->wordSpacing:Z
    if-eqz p2, :cond_1
    const/4 v1, 0x2
    goto :goto_1
    const/4 v1, 0x3
    .line 317
    const/4 v1, 0x0
    :cond_1
    const/4 v1, 0x1
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result p2
    if-nez p2, :cond_2
    const/4 v1, 0x2
    .line 318
    const/4 v1, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->originalText:Ljava/lang/String;
    const-string p2, ".(?=.)"
    const-string v0, "$0\u200a"
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    goto :goto_2
    const/4 v1, 0x0
    .line 319
    const/4 v1, 0x1
    :cond_2
    const/4 v1, 0x2
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result p2
    if-eqz p2, :cond_5
    const/4 v1, 0x3
    .line 320
    const/4 v1, 0x0
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    goto :goto_2
    const/4 v1, 0x1
    .line 314
    const/4 v1, 0x2
    :cond_3
    const/4 v1, 0x3
    :goto_1
    const/4 v1, 0x0
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->useNewLetterSpacing()Z
    move-result p2
    if-eqz p2, :cond_4
    const/4 v1, 0x1
    const/4 p2, 0x0
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setLetterSpacing(F)V
    .line 315
    const/4 v1, 0x2
    :cond_4
    const/4 v1, 0x3
    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .line 323
    const/4 v1, 0x0
    :cond_5
    const/4 v1, 0x1
    :goto_2
    const/4 v1, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->applySpans()V
    .line 324
    const/4 v1, 0x3
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V
    return-void
    const/4 v1, 0x1
.end method
.method public updateTextSize(F)V
    .locals 8
    const/4 v7, 0x1
    .line 453
    const/4 v7, 0x2
    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F
    float-to-double v0, v0
    const/4 v2, 0x0
    .line 454
    const/4 v7, 0x3
    invoke-virtual {p0, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setTextSize(IF)V
    .line 455
    const/4 v7, 0x0
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userTextSize:F
    .line 456
    const/4 v7, 0x1
    iget-wide v2, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D
    const-wide/high16 v4, -0x4010000000000000L    # -1.0
    cmpl-double v6, v2, v4
    if-eqz v6, :cond_0
    const/4 v7, 0x2
    float-to-double v2, p1
    div-double/2addr v2, v0
    .line 458
    const/4 v7, 0x3
    iget-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D
    mul-double v0, v0, v2
    iput-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D
    .line 459
    const/4 v7, 0x0
    iget-wide v0, p0, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->userMaxWidth:D
    double-to-int p1, v0
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->setMaxWidth(I)V
    .line 461
    const/4 v7, 0x1
    :cond_0
    const/4 v7, 0x2
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/CustomTextView;->textUpdated()V
    return-void
    const/4 v1, 0x3
.end method
