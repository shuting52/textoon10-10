.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;
.super Landroid/view/View;
.source "ImageEraseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;,
        Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;
    }
.end annotation


# static fields
.field public static final defaultStrokeWidth:F


# instance fields
.field private TOUCH_TOLERANCE:F

.field backgroundCheckersShader:Landroid/graphics/BitmapShader;

.field bounds:Landroid/graphics/Rect;

.field currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

.field currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field currSelectionRect:Landroid/graphics/RectF;

.field currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field currStrokeBlur:I

.field currStrokeWidth:F

.field currTouchMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

.field dX:F

.field dY:F

.field draggingSecondaryHandle:Z

.field private final enableStripes:Z

.field firstQuadTo:Z

.field gridSize:I

.field handlesDrag:I

.field image:Landroid/graphics/Bitmap;

.field imgArea:Landroid/graphics/RectF;

.field lastSelectionPoint:Landroid/graphics/PointF;

.field listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

.field private mX:F

.field private mY:F

.field public masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

.field needUpdateArea:Z

.field oldX:F

.field oldY:F

.field pntBackgroundCheckers:Landroid/graphics/Paint;

.field pntBlack:Landroid/graphics/Paint;

.field pntEraserInd:Landroid/graphics/Paint;

.field pntGrid:Landroid/graphics/Paint;

.field pntImg:Landroid/graphics/Paint;

.field pntMask:Landroid/graphics/Paint;

.field pntSelection:Landroid/graphics/Paint;

.field pntSelection2:Landroid/graphics/Paint;

.field pntSelection3:Landroid/graphics/Paint;

.field pntSelectionHandle:Landroid/graphics/Paint;

.field pntSelectionHandleInv:Landroid/graphics/Paint;

.field previewListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

.field secondaryHandlePaint:Landroid/graphics/Paint;

.field private final secondaryHandleRad:F

.field selectionHandleRad:F

.field selectionHandleRad2:F

.field public sizeUnder:F

.field touchCenterDist:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 169
    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    sput v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V
    .locals 8

    .line 176
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0x39e3c000    # -10000.0f

    .line 47
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->TOUCH_TOLERANCE:F

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    const/4 v1, 0x3

    .line 52
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad:F

    const/4 v1, 0x5

    .line 53
    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    mul-float v3, v3, v2

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    .line 55
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->enableStripes:Z

    const/16 v2, 0xa

    .line 57
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v3

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    .line 58
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    .line 60
    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    .line 164
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    .line 166
    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    .line 167
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    .line 168
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    .line 170
    sget v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    .line 171
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeBlur:I

    .line 173
    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-direct {v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    .line 222
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntGrid:Landroid/graphics/Paint;

    .line 223
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPxInt(I)I

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    .line 226
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    .line 357
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    const/4 v2, 0x0

    .line 415
    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    const/4 v3, -0x2

    .line 416
    iput v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    .line 418
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    .line 523
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    .line 177
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    .line 178
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    .line 179
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntImg:Landroid/graphics/Paint;

    .line 180
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntImg:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 181
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    .line 182
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    .line 185
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    .line 187
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v5, 0xc8

    invoke-static {v5, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v7, v6, [F

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    aput v1, v7, v0

    invoke-static {v6}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    aput v1, v7, v4

    invoke-direct {v5, v7, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 190
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection2:Landroid/graphics/Paint;

    .line 192
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    .line 193
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection2:Landroid/graphics/Paint;

    const/16 v1, 0x50

    const/16 v2, 0xe9

    const/16 v5, 0x1e

    const/16 v6, 0x63

    invoke-static {v1, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    .line 198
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    const/16 v2, 0xb4

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    .line 201
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;

    invoke-direct {v0, p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->setOnPathChangeListener(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;)V

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070080

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 213
    new-instance p3, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p3, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->backgroundCheckersShader:Landroid/graphics/BitmapShader;

    if-eqz p1, :cond_1

    .line 215
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBackgroundCheckers:Landroid/graphics/Paint;

    .line 216
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBackgroundCheckers:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->backgroundCheckersShader:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 219
    :cond_1
    invoke-virtual {p0, v4, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawMasks(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/RectF;Landroid/graphics/BitmapShader;)V
    .locals 5

    .line 315
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 317
    invoke-virtual {p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getMasks()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    .line 318
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 319
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->isStrokeFill()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 320
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getStrokeWidth()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p4, :cond_1

    .line 322
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 324
    :cond_1
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 326
    :goto_2
    iget v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    :goto_3
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 327
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-static {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->equalsRectF(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 328
    iget-object v2, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 329
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 330
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 331
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 332
    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v2, v2, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 334
    :cond_3
    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 336
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void

    const/4 v1, 0x1
.end method

.method private getSecondaryHandleOffset()F
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 311
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    add-float/2addr v1, v0

    :cond_0
    const/4 v2, 0x1

    return v1

    const/4 v0, 0x2
.end method

.method private updateArea()V
    .locals 8

    const/4 v7, 0x3

    .line 339
    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .line 340
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 341
    const/4 v7, 0x3

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    .line 342
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 343
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    if-eqz v0, :cond_0

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->imgAreaUpdated(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 344
    const/4 v7, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    :cond_1
    const/4 v7, 0x1

    return-void

    const/4 v1, 0x3
.end method

.method private updateSelectionPathFromRect()V
    .locals 3

    const/4 v2, 0x3

    .line 133
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    .line 134
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    .line 135
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addOval(Landroid/graphics/RectF;)V

    goto :goto_0

    const/4 v2, 0x0

    .line 136
    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x3

    .line 137
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    .line 138
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addRect(Landroid/graphics/RectF;)V

    :cond_1
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public delLastFreeSelection()V
    .locals 3

    const/4 v2, 0x1

    .line 143
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x3

    .line 144
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->removeLast()V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method drawAlphaGrid(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    const/4 v9, 0x0

    if-nez p2, :cond_0

    const/4 v9, 0x1

    return-void

    .line 540
    const/4 v9, 0x2

    :cond_0
    const/4 v9, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntGrid:Landroid/graphics/Paint;

    const/16 v1, 0x96

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 543
    const/4 v9, 0x0

    :goto_0
    const/4 v9, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    const/4 v9, 0x2

    const/4 v2, 0x0

    .line 544
    const/4 v9, 0x3

    :goto_1
    const/4 v9, 0x0

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v3, v3, v2

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    const/4 v9, 0x1

    .line 545
    const/4 v9, 0x2

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v9, 0x3

    const/4 v3, 0x1

    goto :goto_2

    const/4 v9, 0x0

    :cond_1
    const/4 v9, 0x1

    const/4 v3, 0x0

    :goto_2
    const/4 v9, 0x2

    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_2

    const/4 v9, 0x3

    goto :goto_3

    const/4 v9, 0x0

    :cond_2
    const/4 v9, 0x1

    const/4 v4, 0x0

    :goto_3
    const/4 v9, 0x2

    xor-int/2addr v3, v4

    if-eqz v3, :cond_3

    const/4 v9, 0x3

    .line 546
    const/4 v9, 0x0

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v4, v4, v2

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v5, v5, v1

    int-to-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v6, v6, v7

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->gridSize:I

    mul-int v7, v7, v8

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 547
    const/4 v9, 0x1

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 548
    const/4 v9, 0x2

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 549
    const/4 v9, 0x3

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 550
    const/4 v9, 0x0

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 552
    const/4 v9, 0x1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntGrid:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    const/4 v9, 0x2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    const/4 v9, 0x3

    :cond_4
    const/4 v9, 0x0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    const/4 v9, 0x1

    :cond_5
    const/4 v9, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method drawStripes(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10

    .line 525
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 527
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 528
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    const/16 v1, 0x28

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 531
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v0, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    .line 532
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v3

    .line 533
    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    :goto_0
    iget v4, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 534
    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v0

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    add-float v8, v4, v0

    iget-object v9, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v3

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v1

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    const/4 v0, 0x2
.end method

.method public getCurrentEraserRadius()F
    .locals 2

    const/4 v1, 0x1

    .line 101
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    return v0

    const/4 v1, 0x1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x0

    .line 235
    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 238
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    const/4 v8, 0x0

    .line 239
    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->updateArea()V

    .line 241
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBackgroundCheckers:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const/4 v8, 0x3

    .line 242
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBackgroundCheckers:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    const/4 v8, 0x1

    :cond_0
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntImg:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 247
    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 248
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 250
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 251
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntMask:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->backgroundCheckersShader:Landroid/graphics/BitmapShader;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->drawMasks(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/RectF;Landroid/graphics/BitmapShader;)V

    .line 252
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 254
    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 256
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_2

    const/4 v8, 0x2

    .line 257
    const/4 v8, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v8, 0x0

    .line 258
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 259
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x75000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    const/4 v8, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 261
    const/4 v8, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 263
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    const/4 v8, 0x3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v1

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    const/4 v8, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 267
    const/4 v8, 0x1

    :cond_1
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    const/high16 v1, -0x6a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    const/4 v8, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    const v1, -0x69000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    const/4 v8, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntEraserInd:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 271
    const/4 v8, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    const/4 v8, 0x3

    .line 272
    const/4 v8, 0x0

    :cond_2
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_8

    const/4 v8, 0x2

    .line 273
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 282
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v0, v1, :cond_4

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_3

    const/4 v8, 0x2

    goto :goto_0

    const/4 v8, 0x3

    .line 286
    const/4 v8, 0x0

    :cond_3
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_5

    const/4 v8, 0x2

    .line 287
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    const/4 v8, 0x1

    .line 283
    const/4 v8, 0x2

    :cond_4
    const/4 v8, 0x3

    :goto_0
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection3:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 284
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelection:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 291
    const/4 v8, 0x2

    :cond_5
    const/4 v8, 0x3

    :goto_1
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v8, 0x1

    .line 292
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_6

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    if-ne v0, v1, :cond_6

    const/4 v8, 0x0

    .line 293
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    .line 294
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad:F

    const v3, 0x3fb33333    # 1.4f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 295
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->lastSelectionPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad:F

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    const/4 v8, 0x0

    .line 297
    const/4 v8, 0x1

    :cond_6
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v0, v1, :cond_7

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_8

    const/4 v8, 0x0

    .line 298
    const/4 v8, 0x1

    :cond_7
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 299
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 300
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandleInv:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 302
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 303
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->pntSelectionHandle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    const/4 v8, 0x0

    :goto_2
    const/4 v8, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x3

    .line 350
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 351
    const/4 v0, 0x1

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    .line 352
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 353
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    const/4 p1, 0x1

    .line 354
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->needUpdateArea:Z

    return-void

    const/4 v0, 0x0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x2

    .line 422
    const/4 v12, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 423
    const/4 v12, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 425
    const/4 v12, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    const/4 v12, 0x2

    .line 457
    const/4 v12, 0x3

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    .line 458
    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    .line 460
    const/4 v12, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v3, :cond_4

    const/4 v12, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v2, v3, :cond_4

    const/4 v12, 0x3

    .line 461
    const/4 v12, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 462
    const/4 v12, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v12, 0x2

    .line 463
    const/4 v12, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_0

    const/4 v12, 0x0

    .line 464
    const/4 v12, 0x1

    :cond_0
    const/4 v12, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    if-nez v0, :cond_1

    const/4 v12, 0x3

    .line 465
    const/4 v12, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    const/4 v12, 0x1

    .line 466
    const/4 v12, 0x2

    :cond_1
    const/4 v12, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    if-ne v0, v5, :cond_2

    const/4 v12, 0x0

    .line 467
    const/4 v12, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    const/4 v12, 0x2

    .line 468
    const/4 v12, 0x3

    :cond_2
    const/4 v12, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v12, 0x1

    .line 469
    const/4 v12, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 470
    const/4 v12, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 471
    const/4 v12, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 472
    const/4 v12, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v1

    div-float/2addr p1, v2

    .line 474
    const/4 v12, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 475
    const/4 v12, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float v1, v1, p1

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 476
    const/4 v12, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 478
    const/4 v12, 0x1

    :cond_3
    const/4 v12, 0x2

    :goto_0
    const/4 v12, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 480
    const/4 v12, 0x0

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    if-eq p1, v4, :cond_a

    const/4 v12, 0x1

    .line 481
    const/4 v12, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->updateSelectionPathFromRect()V

    .line 482
    const/4 v12, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    goto/16 :goto_4

    const/4 v12, 0x0

    .line 486
    const/4 v12, 0x1

    :cond_4
    const/4 v12, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v3, :cond_7

    const/4 v12, 0x3

    .line 487
    const/4 v12, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    const/4 v12, 0x1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->draggingSecondaryHandle:Z

    if-nez v2, :cond_5

    const/4 v12, 0x2

    .line 488
    const/4 v12, 0x3

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    .line 489
    const/4 v12, 0x0

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    .line 490
    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    goto :goto_1

    const/4 v12, 0x2

    .line 491
    const/4 v12, 0x3

    :cond_5
    const/4 v12, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_6

    const/4 v12, 0x1

    .line 492
    const/4 v12, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(FFF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(FFF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeMove(FF)V

    goto :goto_1

    const/4 v12, 0x3

    .line 493
    const/4 v12, 0x0

    :cond_6
    const/4 v12, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float p1, p1, v6

    if-nez p1, :cond_8

    const/4 v12, 0x2

    .line 494
    const/4 v12, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeMove(FF)V

    goto :goto_1

    const/4 v12, 0x0

    .line 498
    const/4 v12, 0x1

    :cond_7
    const/4 v12, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeMove(FF)V

    .line 500
    const/4 v12, 0x3

    :cond_8
    const/4 v12, 0x0

    :goto_1
    const/4 v12, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    if-eqz p1, :cond_a

    const/4 v12, 0x2

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->image:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    new-instance v9, Landroid/graphics/PointF;

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {v9, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne p1, v0, :cond_9

    const/4 v12, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getCurrentEraserRadius()F

    move-result p1

    :goto_2
    const/4 v12, 0x0

    move v10, p1

    goto :goto_3

    const/4 v12, 0x1

    :cond_9
    const/4 v12, 0x2

    sget p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->defaultStrokeWidth:F

    goto :goto_2

    const/4 v12, 0x3

    :goto_3
    const/4 v12, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;->update(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/PointF;FF)V

    .line 503
    const/4 v12, 0x1

    :cond_a
    const/4 v12, 0x2

    :goto_4
    const/4 v12, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    goto/16 :goto_6

    const/4 v12, 0x0

    .line 507
    const/4 v12, 0x1

    :pswitch_1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    if-eqz p1, :cond_b

    const/4 v12, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    invoke-interface {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;->disable()V

    .line 508
    const/4 v12, 0x3

    :cond_b
    const/4 v12, 0x0

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    .line 509
    const/4 v12, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne p1, v2, :cond_c

    const/4 v12, 0x2

    .line 510
    const/4 v12, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float p1, p1, v6

    if-nez p1, :cond_c

    const/4 v12, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->pointIfNotMoved(FF)V

    .line 512
    const/4 v12, 0x1

    :cond_c
    const/4 v12, 0x2

    iput-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->draggingSecondaryHandle:Z

    .line 513
    const/4 v12, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    .line 514
    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    goto/16 :goto_6

    const/4 v12, 0x1

    .line 427
    const/4 v12, 0x2

    :pswitch_2
    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v4, :cond_10

    const/4 v12, 0x3

    .line 428
    const/4 v12, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_f

    const/4 v12, 0x1

    .line 429
    const/4 v12, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    .line 430
    const/4 v12, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v2, v4, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result v2

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v4, v4, v7

    cmpl-float v2, v2, v4

    if-lez v2, :cond_d

    const/4 v12, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    .line 431
    const/4 v12, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v7

    add-float/2addr v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v2, v4, v7, v8}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dist(FFFF)F

    move-result v2

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->secondaryHandleRad:F

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v4, v4, v7

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_d

    const/4 v12, 0x2

    const/4 v3, 0x1

    :cond_d
    const/4 v12, 0x3

    iput-boolean v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->draggingSecondaryHandle:Z

    if-nez v3, :cond_e

    const/4 v12, 0x0

    .line 432
    const/4 v12, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    .line 433
    const/4 v12, 0x2

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    .line 434
    const/4 v12, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    goto :goto_5

    const/4 v12, 0x0

    .line 436
    const/4 v12, 0x1

    :cond_e
    const/4 v12, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchCenterDist:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->getSecondaryHandleOffset()F

    move-result v4

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 437
    const/4 v12, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeStart(FF)V

    goto :goto_5

    const/4 v12, 0x0

    .line 440
    const/4 v12, 0x1

    :cond_f
    const/4 v12, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeStart(FF)V

    goto :goto_5

    const/4 v12, 0x3

    .line 443
    const/4 v12, 0x0

    :cond_10
    const/4 v12, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v2, v3, :cond_11

    const/4 v12, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v3, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v2, v3, :cond_11

    const/4 v12, 0x3

    .line 444
    const/4 v12, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchFreeModeStart(FF)V

    goto :goto_5

    const/4 v12, 0x1

    .line 445
    const/4 v12, 0x2

    :cond_11
    const/4 v12, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_12

    const/4 v12, 0x0

    .line 446
    const/4 v12, 0x1

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->touchedRectSide(Landroid/graphics/PointF;Landroid/graphics/RectF;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->handlesDrag:I

    .line 449
    const/4 v12, 0x2

    :cond_12
    const/4 v12, 0x3

    :goto_5
    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldX:F

    .line 450
    const/4 v12, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->oldY:F

    .line 451
    const/4 v12, 0x2

    iput v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dX:F

    .line 452
    const/4 v12, 0x3

    iput v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->dY:F

    .line 453
    const/4 v12, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currTouchMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$TouchMode;

    :goto_6
    const/4 v12, 0x1

    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v0, 0x0
.end method

.method rectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x3

    .line 228
    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public removeFreeSelection(Z)V
    .locals 5

    const/4 v4, 0x3

    .line 392
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    goto :goto_0

    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->getInverted(Landroid/graphics/RectF;I)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object p1

    :goto_0
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-direct {v1, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->add(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;)V

    .line 393
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v0, :cond_1

    const/4 v4, 0x2

    .line 394
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    .line 396
    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    .line 397
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrStrokeBlur(I)V
    .locals 1

    const/4 v0, 0x0

    .line 110
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeBlur:I

    return-void

    const/4 v0, 0x0
.end method

.method public setCurrentEraserRadius(I)V
    .locals 1

    const/4 v0, 0x3

    int-to-float p1, p1

    .line 105
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setMasks(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V
    .locals 1

    const/4 v0, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x1

    .line 79
    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    :goto_0
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public setMode(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;)V
    .locals 2

    const/4 v1, 0x3

    .line 92
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    .line 93
    const/4 v1, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    .line 94
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    .line 95
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    .line 96
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public setPreviewListener(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->previewListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnNeedUpdatePreview;

    return-void

    const/4 v0, 0x0
.end method

.method public setSelectionType(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V
    .locals 4

    const/4 v3, 0x3

    .line 114
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 115
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->selTypeChanged(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V

    .line 117
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq v0, p1, :cond_3

    const/4 v3, 0x1

    .line 118
    const/4 v3, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    .line 120
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq p1, v0, :cond_1

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v0, :cond_2

    const/4 v3, 0x1

    :cond_1
    const/4 v3, 0x2

    const p1, 0x3f59999a    # 0.85f

    .line 121
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v0, v0, p1

    .line 122
    const/4 v3, 0x0

    new-instance p1, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    .line 123
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 126
    const/4 v3, 0x2

    :cond_2
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    .line 127
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->updateSelectionPathFromRect()V

    .line 128
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    :cond_3
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public setSizeUnder(I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->sizeUnder:F

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method touchFreeModeMove(FF)V
    .locals 9

    const/4 v8, 0x0

    .line 374
    const/4 v8, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 375
    const/4 v8, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 376
    const/4 v8, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->TOUCH_TOLERANCE:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v8, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->TOUCH_TOLERANCE:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    const/4 v8, 0x1

    .line 377
    const/4 v8, 0x2

    :cond_0
    const/4 v8, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    .line 378
    const/4 v8, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v1, v2, :cond_1

    const/4 v8, 0x1

    .line 379
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object v0

    .line 380
    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v1

    .line 381
    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->moved()V

    move-object v2, v1

    goto :goto_0

    const/4 v8, 0x1

    :cond_1
    const/4 v8, 0x2

    move-object v2, v0

    .line 383
    const/4 v8, 0x3

    :goto_0
    const/4 v8, 0x0

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    add-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    add-float/2addr v0, p2

    div-float v6, v0, v1

    iget-boolean v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    invoke-virtual/range {v2 .. v7}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->quadTo(FFFFZ)V

    const/4 v0, 0x0

    .line 384
    const/4 v8, 0x1

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    .line 385
    const/4 v8, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    .line 386
    const/4 v8, 0x3

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    .line 388
    const/4 v8, 0x0

    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method touchFreeModeStart(FF)V
    .locals 7

    const/4 v6, 0x3

    const/4 v0, 0x1

    .line 359
    const/4 v6, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->firstQuadTo:Z

    .line 360
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->erase:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_0

    const/4 v6, 0x2

    .line 361
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeWidth:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currStrokeBlur:I

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->imgArea:Landroid/graphics/RectF;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(FZILandroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->add(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;)V

    .line 362
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->reset()V

    .line 363
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getLast()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getPath()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->lineTo(FFZ)V

    .line 364
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    goto :goto_0

    const/4 v6, 0x3

    .line 366
    const/4 v6, 0x0

    :cond_0
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currEraserMode:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;->select:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$EraserMode;

    if-ne v0, v1, :cond_1

    const/4 v6, 0x2

    .line 367
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionPath:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->lineTo(FFZ)V

    .line 368
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    .line 370
    const/4 v6, 0x1

    :cond_1
    const/4 v6, 0x2

    :goto_0
    const/4 v6, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mX:F

    .line 371
    const/4 v6, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->mY:F

    return-void

    const/4 v0, 0x2
.end method

.method touchedRectSide(Landroid/graphics/PointF;Landroid/graphics/RectF;)I
    .locals 8

    const/4 v7, 0x2

    .line 401
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v1, v1, v2

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_0

    const/4 v7, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    mul-float v0, v0, v1

    goto :goto_0

    const/4 v7, 0x1

    :cond_0
    const/4 v7, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    :goto_0
    const/4 v7, 0x3

    float-to-int v0, v0

    .line 402
    const/4 v7, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    mul-float v4, v4, v2

    cmpl-float v2, v3, v4

    if-lez v2, :cond_1

    const/4 v7, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    mul-float v2, v2, v1

    goto :goto_1

    const/4 v7, 0x2

    :cond_1
    const/4 v7, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->selectionHandleRad2:F

    :goto_1
    const/4 v7, 0x0

    float-to-int v1, v2

    .line 403
    const/4 v7, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 404
    const/4 v7, 0x2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->top:F

    int-to-float v1, v1

    add-float/2addr v4, v1

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v0

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 405
    const/4 v7, 0x3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v7, 0x0

    const/4 p1, -0x1

    return p1

    .line 406
    const/4 v7, 0x1

    :cond_2
    const/4 v7, 0x2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget v5, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v0

    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    const/4 v7, 0x3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v7, 0x0

    const/4 p1, 0x0

    return p1

    .line 408
    const/4 v7, 0x1

    :cond_3
    const/4 v7, 0x2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    iget v5, p2, Landroid/graphics/RectF;->right:F

    iget v6, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 409
    const/4 v7, 0x3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v7, 0x0

    const/4 p1, 0x1

    return p1

    .line 410
    const/4 v7, 0x1

    :cond_4
    const/4 v7, 0x2

    iget v3, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v1

    iget v5, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v1

    invoke-virtual {v2, v3, v4, v5, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 411
    const/4 v7, 0x3

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v7, 0x0

    const/4 p1, 0x2

    return p1

    :cond_5
    const/4 v7, 0x1

    const/4 p1, -0x2

    return p1

    const/4 v1, 0x3
.end method

.method public undoAll()V
    .locals 3

    const/4 v2, 0x3

    .line 149
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->remAll()V

    .line 150
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    .line 151
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public undoOp()V
    .locals 3

    const/4 v2, 0x0

    .line 154
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->remLast()V

    .line 155
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->invalidate()V

    .line 156
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->masksCountChanged(I)V

    return-void

    const/4 v0, 0x2
.end method
