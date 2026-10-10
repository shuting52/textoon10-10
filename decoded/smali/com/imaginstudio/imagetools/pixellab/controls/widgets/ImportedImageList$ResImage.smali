.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;
.super Ljava/lang/Object;
.source "ImportedImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResImage"
.end annotation


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private borderRad:F

.field private borderRadSelected:F

.field private final bounds:Landroid/graphics/RectF;

.field private color:I

.field private gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private gradientCache:Landroid/graphics/Bitmap;

.field private imgArea:Landroid/graphics/Rect;

.field private pnt:Landroid/graphics/Paint;

.field private final pntBorder:Landroid/graphics/Paint;

.field private final pntBorderSelected:Landroid/graphics/Paint;

.field private selected:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

.field private thumbnail:Z

.field private type:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;ILandroid/graphics/RectF;)V
    .locals 2

    .line 180
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    .line 157
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 161
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    .line 165
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    .line 181
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    .line 182
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    .line 183
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    .line 184
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    .line 185
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    return-void
.end method

.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 2

    .line 170
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    .line 157
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 161
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    .line 165
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    .line 171
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    .line 172
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    const/4 p1, 0x4

    .line 173
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    .line 174
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    .line 175
    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    :cond_0
    return-void
.end method

.method private constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/RectF;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    .line 157
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 161
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    .line 165
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    .line 167
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    return-void
.end method

.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Landroid/graphics/RectF;)V
    .locals 2

    .line 187
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    .line 155
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    .line 157
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 161
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    const/4 p1, 0x2

    .line 165
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->dpToPx(I)F

    move-result v1

    iput v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    .line 188
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 189
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    .line 190
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    .line 191
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    if-eqz p2, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;)Landroid/graphics/RectF;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 143
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    return-object p0

    const/4 v0, 0x0
.end method

.method private buildGradientCache()V
    .locals 6

    const/4 v5, 0x1

    .line 287
    const/4 v5, 0x2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x100

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    .line 288
    const/4 v5, 0x3

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 289
    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 290
    const/4 v5, 0x1

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    const/4 v5, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v1, v3}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/Rect;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 292
    const/4 v5, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x1
.end method

.method private buildPntImgArea()V
    .locals 5

    const/4 v4, 0x1

    .line 229
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 230
    const/4 v4, 0x3

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    .line 231
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 233
    const/4 v4, 0x1

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    .line 234
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 236
    const/4 v4, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    const/4 v4, 0x1

    .line 241
    const/4 v4, 0x2

    :pswitch_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(Landroid/graphics/RectF;)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    const/4 v4, 0x0

    .line 238
    const/4 v4, 0x1

    :pswitch_1
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/4 v4, 0x2

    :goto_0
    const/4 v4, 0x3

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method

.method private getGradientColor(FF)I
    .locals 2

    const/4 v1, 0x1

    .line 278
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    if-nez v0, :cond_0

    const/4 v1, 0x3

    const/4 p1, -0x1

    return p1

    .line 279
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 v1, 0x2

    .line 280
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildGradientCache()V

    .line 282
    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradientCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImageColor(Landroid/graphics/Bitmap;FF)I

    move-result p1

    return p1

    const/4 v1, 0x1
.end method

.method private getImageColor(Landroid/graphics/Bitmap;FF)I
    .locals 3

    const/4 v2, 0x3

    .line 296
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    const/4 p1, -0x1

    return p1

    .line 297
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(III)I

    move-result p2

    .line 298
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p3, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->clipValue(III)I

    move-result p3

    .line 299
    const/4 v2, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    const/4 v0, 0x2
.end method


# virtual methods
.method public copyForDisplay(Landroid/graphics/RectF;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;
    .locals 3

    const/4 v2, 0x3

    .line 247
    const/4 v2, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    invoke-direct {v0, v1, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;Landroid/graphics/RectF;)V

    .line 248
    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    .line 249
    const/4 v2, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    .line 250
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    .line 251
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object p1

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    iput-object p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const/4 p1, 0x0

    .line 252
    const/4 v2, 0x1

    iput-boolean p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    iput-boolean p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    .line 253
    const/4 v2, 0x2

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->buildPntImgArea()V

    return-object v0

    const/4 v0, 0x2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    .line 210
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    const/4 v5, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->isValidRect(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    const/4 v5, 0x3

    .line 212
    const/4 v5, 0x0

    :cond_1
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 213
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList;->backgroundCheckers:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    const/4 v5, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    if-eqz v0, :cond_2

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .line 215
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRadSelected:F

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorderSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 217
    const/4 v5, 0x3

    :cond_2
    const/4 v5, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 218
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    const/4 v5, 0x3

    .line 220
    const/4 v5, 0x0

    :cond_3
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->thumbnail:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    if-nez v0, :cond_4

    const/4 v5, 0x1

    .line 223
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->borderRad:F

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->pntBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/4 v5, 0x3

    return-void

    :cond_5
    const/4 v5, 0x0

    :goto_1
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 2

    const/4 v1, 0x3

    .line 202
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bounds:Landroid/graphics/RectF;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getColorAt(FF)I
    .locals 3

    const/4 v2, 0x2

    .line 264
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    const/4 v2, 0x0

    .line 265
    const/4 v2, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    const/4 v2, 0x3

    .line 269
    const/4 v2, 0x0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getGradientColor(FF)I

    move-result p1

    return p1

    .line 267
    const/4 v2, 0x1

    :pswitch_1
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->color:I

    return p1

    .line 271
    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->getImageColor(Landroid/graphics/Bitmap;FF)I

    move-result p1

    return p1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 p1, -0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x2
.end method

.method public getImgArea()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x3

    .line 206
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->imgArea:Landroid/graphics/Rect;

    return-object v0

    const/4 v1, 0x1
.end method

.method getIntrinsicHeight()I
    .locals 3

    const/4 v2, 0x2

    .line 260
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    return v0

    const/4 v0, 0x2
.end method

.method getIntrinsicWidth()I
    .locals 3

    const/4 v2, 0x2

    .line 257
    const/4 v2, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    return v0

    const/4 v0, 0x2
.end method

.method public setSelected(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 198
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImportedImageList$ResImage;->selected:Z

    return-void

    const/4 v0, 0x0
.end method
