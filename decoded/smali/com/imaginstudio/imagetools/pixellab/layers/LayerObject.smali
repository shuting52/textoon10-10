.class public Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;
.super Landroid/view/View;
.source "LayerObject.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;,
        Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
    }
.end annotation


# static fields
.field static final autoScrollVelocity:F


# instance fields
.field bmpBorderPaint:Landroid/graphics/Paint;

.field bmpPaint:Landroid/graphics/Paint;

.field bounds:Landroid/graphics/RectF;

.field buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

.field buttonsArea:Landroid/graphics/RectF;

.field buttonsColorFilter:Landroid/graphics/ColorFilter;

.field checkMarkBounds:Landroid/graphics/RectF;

.field checkMarkPath:Landroid/graphics/Path;

.field checked:Z

.field checkers:Landroid/graphics/drawable/Drawable;

.field contentArea:Landroid/graphics/RectF;

.field dY:F

.field deleteButton:Landroid/graphics/RectF;

.field deleteDrawable:Landroid/graphics/drawable/Drawable;

.field dragArea:Landroid/graphics/RectF;

.field private dragCirclesRadii:F

.field drawableBounds:Landroid/graphics/RectF;

.field editButton:Landroid/graphics/RectF;

.field editDrawable:Landroid/graphics/drawable/Drawable;

.field hideButton:Landroid/graphics/RectF;

.field hideDrawable:Landroid/graphics/drawable/Drawable;

.field layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

.field lockButton:Landroid/graphics/RectF;

.field lockDrawable:Landroid/graphics/drawable/Drawable;

.field padding:I

.field paddingBg:I

.field pntBg:Landroid/graphics/Paint;

.field pntButtonsBg:Landroid/graphics/Paint;

.field pntDrag:Landroid/graphics/Paint;

.field pntSelectBg:Landroid/graphics/Paint;

.field pntSelectBorder:Landroid/graphics/Paint;

.field pntSelectCheck:Landroid/graphics/Paint;

.field pntSeparator:Landroid/graphics/Paint;

.field previousY:F

.field public reference:Ljava/lang/String;

.field referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

.field referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

.field scrollAnimation:Landroid/animation/AnimatorSet;

.field selectButton:Landroid/graphics/RectF;

.field selectButtonCenter:Landroid/graphics/PointF;

.field selectButtonRadius:F

.field selectionMode:Z

.field textView:Landroid/widget/TextView;

.field textViewNeedsRedraw:Z

.field touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    .line 56
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->autoScrollVelocity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Z)V
    .locals 5

    .line 134
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    .line 43
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 p1, 0x3

    .line 47
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->padding:I

    const/4 v1, 0x4

    .line 48
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->paddingBg:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 51
    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    .line 55
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntBg:Landroid/graphics/Paint;

    .line 60
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    .line 63
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBg:Landroid/graphics/Paint;

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "#68768a"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    .line 74
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "#e37b7b"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    .line 76
    iput-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    .line 77
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    .line 78
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    .line 413
    new-instance v1, Landroid/graphics/RectF;

    const/16 v2, 0x1e

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    .line 135
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    .line 137
    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    .line 138
    sget-object p4, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 140
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p3, v1, :cond_0

    .line 141
    invoke-virtual {p4, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getShapeByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    .line 142
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setLayersListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$OnShapeNotifyLayers;)V

    goto :goto_0

    .line 143
    :cond_0
    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne p3, v1, :cond_1

    .line 144
    invoke-virtual {p4, p2}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getTextByRef(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    .line 145
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {p2, p0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLayersListener(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent$OnTextNotifyLayers;)V

    .line 148
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 149
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 150
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    const/16 p3, 0xe6

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    const-string p3, "#aa000000"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 153
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f070081

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkers:Landroid/graphics/drawable/Drawable;

    .line 155
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f07012d

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f07012c

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f070130

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f070131

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 160
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 161
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntBg:Landroid/graphics/Paint;

    const-string p3, "#f4f4f4"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    const-string p3, "#cfcfcf"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    const-string p3, "#918d91"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    const-string p3, "#d1d1d1"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    const-string p3, "#6d6d6d"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBg:Landroid/graphics/Paint;

    const-string p3, "#dddddd"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    const-string p3, "#2d939c"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private clickAll()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 539
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x3

    .line 540
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->selectMe()V

    goto :goto_0

    const/4 v2, 0x1

    .line 541
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 542
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->selectMe()V

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method private clickDelete()V
    .locals 5

    const/4 v4, 0x1

    .line 531
    const/4 v4, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getTextContain()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    .line 533
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->reference:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->removeObjectByReference(Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/lang/String;Z)V

    .line 535
    const/4 v4, 0x1

    :cond_0
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    invoke-interface {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;->deleteMyView(Landroid/view/View;)V

    return-void

    const/4 v0, 0x0
.end method

.method private clickEdit()V
    .locals 5

    const/4 v4, 0x0

    .line 503
    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickAll()V

    .line 504
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    const/4 v0, 0x2

    .line 505
    const/4 v4, 0x0

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 506
    const/4 v4, 0x1

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getLocationInWindow([I)V

    .line 507
    const/4 v4, 0x2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 508
    const/4 v4, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    .line 509
    const/4 v4, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 510
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-interface {v0, p0, v2, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;->clickedEditButton(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Landroid/graphics/Rect;)V

    :cond_0
    const/4 v4, 0x2

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    const/4 v0, 0x0
.end method

.method private clickHide()V
    .locals 3

    const/4 v2, 0x0

    .line 515
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    .line 516
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setHidden(Z)V

    goto :goto_0

    const/4 v2, 0x0

    .line 517
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x3

    .line 518
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setHidden(Z)V

    .line 520
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method private clickLock()V
    .locals 3

    const/4 v2, 0x1

    .line 523
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x3

    .line 524
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLocked(Z)V

    goto :goto_0

    const/4 v2, 0x1

    .line 525
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 526
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isLocked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setLocked(Z)V

    .line 528
    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->invalidate()V

    return-void

    const/4 v0, 0x2
.end method

.method private clickSelect()V
    .locals 2

    const/4 v1, 0x2

    .line 546
    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    .line 547
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method private drawDragArea(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x2

    .line 301
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 303
    const/4 v6, 0x0

    :goto_0
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    const/4 v6, 0x2

    .line 304
    const/4 v6, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3e800000    # 0.25f

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    const/high16 v3, 0x3fc00000    # 1.5f

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    .line 306
    const/4 v6, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    div-float/2addr v4, v3

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 308
    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x3f400000    # 0.75f

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v5, v5, v4

    add-float/2addr v2, v5

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    .line 310
    const/4 v6, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    div-float/2addr v4, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntDrag:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v6, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    .line 312
    const/4 v6, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    mul-float v3, v3, v2

    add-float/2addr v0, v3

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v6, 0x0

    :cond_2
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method private drawSeparator(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x3

    .line 317
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v7, 0x0

    mul-float v1, v1, v7

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float v1, v1, v8

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 318
    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    if-nez v0, :cond_0

    const/4 v9, 0x2

    .line 319
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v7

    add-float v3, v0, v1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v8

    add-float v5, v0, v1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 320
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSeparator:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v9, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public static pxToDp(F)I
    .locals 2

    const/4 v1, 0x3

    .line 131
    const/4 v1, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    const/4 v1, 0x1
.end method

.method private requestNoIntercept()V
    .locals 3

    const/4 v2, 0x2

    .line 592
    const/4 v2, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 593
    const/4 v2, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method cancelAnimation()V
    .locals 2

    const/4 v1, 0x0

    .line 551
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 552
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method drawShapeBmp(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v6, 0x3

    .line 292
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->fitRect(IILandroid/graphics/RectF;ZZ)Landroid/graphics/RectF;

    move-result-object p3

    .line 293
    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x2

    .line 294
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkers:Landroid/graphics/drawable/Drawable;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 297
    const/4 v6, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 298
    const/4 v6, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bmpBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    const/4 v0, 0x2
.end method

.method durationFromDistance(I)J
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    const/4 v6, 0x2

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const/4 v6, 0x3

    const-wide/16 v0, 0xc8

    int-to-float p1, p1

    .line 180
    const/4 v6, 0x0

    sget v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->autoScrollVelocity:F

    div-float/2addr p1, v2

    float-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    const/4 v0, 0x2
.end method

.method fitRect(IILandroid/graphics/RectF;ZZ)Landroid/graphics/RectF;
    .locals 3

    const/4 v2, 0x2

    .line 286
    const/4 v2, 0x3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 287
    const/4 v2, 0x0

    new-instance v1, Landroid/graphics/RectF;

    mul-float p1, p1, v0

    mul-float p2, p2, v0

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p4, :cond_0

    const/4 v2, 0x1

    .line 288
    const/4 v2, 0x2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :goto_0
    const/4 v2, 0x3

    sub-float/2addr p1, p2

    goto :goto_1

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget p1, p3, Landroid/graphics/RectF;->left:F

    iget p2, v1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    const/4 v2, 0x2

    :goto_1
    const/4 v2, 0x3

    if-eqz p5, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    :goto_2
    const/4 v2, 0x1

    sub-float/2addr p2, p3

    goto :goto_3

    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p3, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    const/4 v2, 0x0

    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v1

    const/4 v0, 0x2
.end method

.method public imageChanged(Z)V
    .locals 1

    const/4 v0, 0x3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->postInvalidate()V

    :cond_0
    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method initTextView()V
    .locals 5

    const/4 v4, 0x0

    .line 86
    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    if-nez v0, :cond_0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    const/4 v4, 0x3

    .line 87
    const/4 v4, 0x0

    :cond_0
    const/4 v4, 0x1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    .line 88
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    if-eqz v1, :cond_1

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->returnText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    const-string v1, "empty"

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    .line 90
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 92
    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 94
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 96
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 97
    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    :cond_3
    const/4 v4, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method initializeRect()V
    .locals 2

    const/4 v1, 0x3

    .line 325
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 326
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    .line 328
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 329
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    .line 331
    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 332
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    .line 334
    const/4 v1, 0x3

    :cond_2
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    const/4 v1, 0x1

    .line 335
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    .line 337
    const/4 v1, 0x3

    :cond_3
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    .line 338
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    .line 340
    const/4 v1, 0x3

    :cond_4
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    const/4 v1, 0x1

    .line 341
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    .line 343
    const/4 v1, 0x3

    :cond_5
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    if-nez v0, :cond_6

    const/4 v1, 0x1

    .line 344
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    .line 346
    const/4 v1, 0x3

    :cond_6
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    if-nez v0, :cond_7

    const/4 v1, 0x1

    .line 347
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    .line 349
    const/4 v1, 0x3

    :cond_7
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    if-nez v0, :cond_8

    const/4 v1, 0x1

    .line 350
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    .line 352
    const/4 v1, 0x3

    :cond_8
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_9

    const/4 v1, 0x1

    .line 353
    const/4 v1, 0x2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    :cond_9
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method public isChecked()Z
    .locals 2

    const/4 v1, 0x1

    .line 118
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    return v0

    const/4 v1, 0x1
.end method

.method isObjectHidden()Z
    .locals 3

    const/4 v2, 0x0

    .line 199
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    .line 200
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isHidden()Z

    move-result v0

    return v0

    .line 201
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    .line 202
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isHidden()Z

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x2
.end method

.method isObjectLocked()Z
    .locals 3

    const/4 v2, 0x2

    .line 191
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    .line 192
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isLocked()Z

    move-result v0

    return v0

    .line 193
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 194
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isLocked()Z

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x2

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x2
.end method

.method isObjectSelected()Z
    .locals 3

    const/4 v2, 0x0

    .line 183
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x2

    .line 184
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedText:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->isSelected()Z

    move-result v0

    return v0

    .line 185
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    .line 186
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->isSelected()Z

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x2

    .line 213
    const/4 v5, 0x3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v5, 0x1

    return-void

    .line 218
    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->isObjectSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    const-string v0, "#2196f3"

    .line 219
    const/4 v5, 0x1

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 222
    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 224
    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDragArea(Landroid/graphics/Canvas;)V

    .line 226
    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    if-nez v0, :cond_4

    const/4 v5, 0x2

    .line 227
    const/4 v5, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$1;->$SwitchMap$com$imaginstudio$imagetools$pixellab$layers$LayerObject$TouchMode:[I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    const/4 v5, 0x0

    .line 238
    const/4 v5, 0x1

    :pswitch_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    const/4 v5, 0x2

    .line 235
    const/4 v5, 0x3

    :pswitch_1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    const/4 v5, 0x0

    .line 232
    const/4 v5, 0x1

    :pswitch_2
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    const/4 v5, 0x2

    .line 229
    const/4 v5, 0x3

    :pswitch_3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntButtonsBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 242
    const/4 v5, 0x0

    :goto_0
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    .line 244
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    .line 245
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->isObjectHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    .line 246
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    const/4 v5, 0x2

    .line 248
    const/4 v5, 0x3

    :cond_2
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 250
    const/4 v5, 0x1

    :goto_1
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->isObjectLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x3

    .line 251
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsActiveColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    const/4 v5, 0x1

    .line 253
    const/4 v5, 0x2

    :cond_3
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    const/4 v5, 0x0

    :goto_2
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    .line 256
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_3

    const/4 v5, 0x3

    .line 258
    const/4 v5, 0x0

    :cond_4
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    .line 259
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne v1, v2, :cond_5

    const/4 v5, 0x3

    .line 260
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonRadius:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBg:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    const/4 v5, 0x1

    :cond_5
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 263
    const/4 v5, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    if-eqz v0, :cond_6

    const/4 v5, 0x0

    .line 264
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->pntSelectCheck:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 268
    const/4 v5, 0x2

    :cond_6
    const/4 v5, 0x3

    :goto_3
    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawSeparator(Landroid/graphics/Canvas;)V

    .line 270
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_7

    const/4 v5, 0x2

    .line 271
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v5, 0x0

    .line 272
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->referencedShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getCurrBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawShapeBmp(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    goto :goto_4

    const/4 v5, 0x2

    .line 274
    const/4 v5, 0x3

    :cond_7
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->type:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_8

    const/4 v5, 0x1

    .line 275
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->initTextView()V

    .line 277
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 278
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 279
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 281
    const/4 v5, 0x3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const/4 v5, 0x1

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v1, 0x1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v3, 0x3

    .line 358
    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 359
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->initializeRect()V

    .line 360
    const/4 v3, 0x2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 362
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->paddingBg:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 363
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 364
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    sub-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 365
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 366
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 367
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const p3, 0x3df5c28f    # 0.12f

    mul-float p2, p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 368
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 369
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 370
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 371
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 372
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 373
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 374
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 375
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float p2, p2, p3

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 376
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result p4

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 377
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    mul-float p4, p4, p3

    sub-float/2addr p2, p4

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 378
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const p4, 0x3eb33333    # 0.35f

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, p4

    add-float/2addr p3, v0

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3f266666    # 0.65f

    mul-float v0, v0, v1

    add-float/2addr p4, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 380
    const/4 v3, 0x0

    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonCenter:Landroid/graphics/PointF;

    .line 381
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const p2, 0x3f8ccccd    # 1.1f

    mul-float p1, p1, p2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButtonRadius:F

    .line 383
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 384
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 385
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 386
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 388
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    .line 389
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    .line 390
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    .line 391
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    .line 393
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->padding:I

    int-to-float p2, p2

    iget p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->padding:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->inset(FF)V

    .line 394
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/high16 p2, 0x41900000    # 18.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragCirclesRadii:F

    .line 396
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectButton:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 397
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 399
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 400
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const p4, 0x3e0b4396    # 0.136f

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    const v0, 0x3ed78d50    # 0.421f

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 401
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const p4, 0x3ed47ae1    # 0.415f

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    const v0, 0x3f31a9fc    # 0.694f

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    const p4, 0x3f58d4fe    # 0.847f

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checkMarkBounds:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result p4

    const v0, 0x3e86a7f0    # 0.263f

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 404
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->contentArea:Landroid/graphics/RectF;

    const/4 p2, 0x5

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p3

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-void

    const/4 v1, 0x3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    .line 448
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 449
    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    const/4 v5, 0x3

    .line 463
    const/4 v5, 0x0

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v1, :cond_8

    const/4 v5, 0x1

    .line 464
    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->requestNoIntercept()V

    .line 465
    const/4 v5, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->previousY:F

    sub-float p1, v0, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dY:F

    .line 466
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getY()F

    move-result p1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dY:F

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setConfinedY(F)V

    .line 467
    const/4 v5, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->previousY:F

    goto/16 :goto_1

    const/4 v5, 0x2

    .line 472
    const/4 v5, 0x3

    :pswitch_1
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 474
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    .line 475
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->cancelAnimation()V

    .line 476
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 477
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    invoke-interface {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;->dragLayerFinish(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;)V

    .line 480
    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->updateTouchMode(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v5, 0x0

    .line 481
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_1

    const/4 v5, 0x2

    .line 482
    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickDelete()V

    goto :goto_0

    const/4 v5, 0x0

    .line 483
    const/4 v5, 0x1

    :cond_1
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_2

    const/4 v5, 0x3

    .line 484
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickHide()V

    goto :goto_0

    const/4 v5, 0x1

    .line 485
    const/4 v5, 0x2

    :cond_2
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_3

    const/4 v5, 0x0

    .line 486
    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickLock()V

    goto :goto_0

    const/4 v5, 0x2

    .line 487
    const/4 v5, 0x3

    :cond_3
    const/4 v5, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_4

    const/4 v5, 0x1

    .line 488
    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickEdit()V

    goto :goto_0

    const/4 v5, 0x3

    .line 489
    const/4 v5, 0x0

    :cond_4
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_5

    const/4 v5, 0x2

    .line 490
    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickSelect()V

    goto :goto_0

    const/4 v5, 0x0

    .line 491
    const/4 v5, 0x1

    :cond_5
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v0, :cond_6

    const/4 v5, 0x3

    .line 492
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->clickAll()V

    .line 495
    const/4 v5, 0x1

    :cond_6
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->invalidate()V

    .line 496
    const/4 v5, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_1

    const/4 v5, 0x1

    .line 451
    const/4 v5, 0x2

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->updateTouchMode(Landroid/view/MotionEvent;)Z

    .line 452
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne p1, v1, :cond_7

    const/4 v5, 0x0

    .line 453
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bringToFront()V

    .line 454
    const/4 v5, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->previousY:F

    const/4 p1, 0x0

    .line 455
    const/4 v5, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dY:F

    .line 456
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 458
    const/4 v5, 0x1

    :cond_7
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-eq p1, v0, :cond_8

    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-eq p1, v0, :cond_8

    const/4 v5, 0x0

    .line 459
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->invalidate()V

    :cond_8
    const/4 v5, 0x2

    :goto_1
    const/4 v5, 0x3

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v1, 0x1
.end method

.method public selectionChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->postInvalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method setConfinedY(F)V
    .locals 10

    const/4 v9, 0x0

    .line 557
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->cancelAnimation()V

    .line 558
    const/4 v9, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->helperClass:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/displayInfo;->getLayerHolderScroll()Landroid/widget/ScrollView;

    move-result-object v0

    .line 559
    const/4 v9, 0x3

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sget v2, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    add-int/2addr v1, v2

    .line 560
    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sub-int/2addr v2, v3

    sget v3, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    sub-int/2addr v2, v3

    int-to-float v3, v1

    cmpg-float v4, p1, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gtz v4, :cond_0

    const/4 v9, 0x1

    .line 562
    const/4 v9, 0x2

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setY(F)V

    .line 564
    const/4 v9, 0x3

    sget p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    sub-int/2addr v1, p1

    .line 565
    const/4 v9, 0x0

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 566
    const/4 v9, 0x1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const-string v3, "scrollY"

    .line 567
    const/4 v9, 0x2

    new-array v4, v6, [I

    aput v7, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 568
    const/4 v9, 0x3

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v2, "Y"

    .line 569
    const/4 v9, 0x0

    new-array v3, v6, [F

    int-to-float p1, p1

    aput p1, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 570
    const/4 v9, 0x1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    const/4 v9, 0x2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    .line 572
    const/4 v9, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v7

    aput-object p1, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 573
    const/4 v9, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    const/4 v9, 0x1

    :cond_0
    const/4 v9, 0x2

    int-to-float v1, v2

    cmpl-float v3, p1, v1

    if-ltz v3, :cond_1

    const/4 v9, 0x3

    .line 575
    const/4 v9, 0x0

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setY(F)V

    .line 576
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getHeight()I

    move-result p1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 577
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->getHeight()I

    move-result v1

    sget v3, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->height:I

    sub-int/2addr v1, v3

    sget v3, Lcom/imaginstudio/imagetools/pixellab/layers/LayersHolder;->verticalMargin:I

    sub-int/2addr v1, v3

    sub-int v2, v1, v2

    .line 578
    const/4 v9, 0x3

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 579
    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v4, "scrollY"

    .line 580
    const/4 v9, 0x1

    new-array v8, v6, [I

    aput p1, v8, v7

    invoke-static {v0, v4, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 581
    const/4 v9, 0x2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v0, "Y"

    .line 582
    const/4 v9, 0x3

    new-array v3, v6, [F

    int-to-float v1, v1

    aput v1, v3, v7

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->durationFromDistance(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 583
    const/4 v9, 0x0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 584
    const/4 v9, 0x1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    .line 585
    const/4 v9, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v5, [Landroid/animation/Animator;

    aput-object p1, v2, v7

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 586
    const/4 v9, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->scrollAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    const/4 v9, 0x0

    .line 588
    const/4 v9, 0x1

    :cond_1
    const/4 v9, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->setY(F)V

    :goto_0
    const/4 v9, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method setDrawableBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    if-nez p2, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    const/4 v3, 0x0

    .line 410
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 411
    const/4 v3, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->drawableBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v3, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method public setLayerActionListener(Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;)V
    .locals 1

    const/4 v0, 0x3

    .line 127
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->layerActionListener:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$OnLayerAction;

    return-void

    const/4 v0, 0x0
.end method

.method public setSelectionMode(Z)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 113
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->checked:Z

    .line 114
    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method public textChanged()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 81
    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->textViewNeedsRedraw:Z

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->postInvalidate()V

    return-void

    const/4 v1, 0x1
.end method

.method updateTouchMode(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x3

    .line 415
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    .line 416
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v4, 0x2

    .line 417
    const/4 v4, 0x3

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->selectionMode:Z

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    .line 418
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    .line 419
    const/4 v4, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto/16 :goto_0

    const/4 v4, 0x1

    .line 420
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->buttonsArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    .line 421
    const/4 v4, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto/16 :goto_0

    const/4 v4, 0x2

    .line 423
    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto/16 :goto_0

    const/4 v4, 0x1

    .line 426
    const/4 v4, 0x2

    :cond_2
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->dragArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 427
    const/4 v4, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_0

    const/4 v4, 0x3

    .line 428
    const/4 v4, 0x0

    :cond_3
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->deleteButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x2

    .line 429
    const/4 v4, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_0

    const/4 v4, 0x0

    .line 430
    const/4 v4, 0x1

    :cond_4
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->hideButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x3

    .line 431
    const/4 v4, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_0

    const/4 v4, 0x1

    .line 432
    const/4 v4, 0x2

    :cond_5
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->lockButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x0

    .line 433
    const/4 v4, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_0

    const/4 v4, 0x2

    .line 434
    const/4 v4, 0x3

    :cond_6
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->editButton:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v4, 0x1

    .line 435
    const/4 v4, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_0

    const/4 v4, 0x3

    .line 437
    const/4 v4, 0x0

    :cond_7
    const/4 v4, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    goto :goto_0

    const/4 v4, 0x2

    .line 441
    const/4 v4, 0x3

    :cond_8
    const/4 v4, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    .line 443
    const/4 v4, 0x1

    :goto_0
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;->touchMode:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    if-ne v0, p1, :cond_9

    const/4 v4, 0x3

    const/4 p1, 0x1

    goto :goto_1

    const/4 v4, 0x0

    :cond_9
    const/4 v4, 0x1

    const/4 p1, 0x0

    :goto_1
    const/4 v4, 0x2

    return p1

    const/4 v0, 0x0
.end method
