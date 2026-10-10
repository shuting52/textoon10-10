.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;
.super Ljava/lang/Object;
.source "DrawingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "drawing"
.end annotation


# instance fields
.field blur:I

.field color:I

.field dashed:Z

.field fill:Z

.field private initX:F

.field private initY:F

.field neon:Z

.field path:Landroid/graphics/Path;

.field public stillDrawing:Z

.field strokeWidth:I

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

.field type:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;IIZZZLandroid/graphics/Path;ILcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;FF)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 227
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initY:F

    .line 228
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initX:F

    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->stillDrawing:Z

    .line 237
    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->type:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    .line 240
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->blur:I

    .line 241
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->color:I

    .line 242
    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->dashed:Z

    .line 243
    iput-boolean p5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->fill:Z

    .line 244
    iput-boolean p6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->neon:Z

    .line 245
    iput-object p7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->path:Landroid/graphics/Path;

    .line 246
    iput p8, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->strokeWidth:I

    .line 247
    iput-object p9, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->type:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    .line 248
    iput p10, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initX:F

    .line 249
    iput p11, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->initY:F

    return-void
.end method


# virtual methods
.method public doneDrawing()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 252
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->stillDrawing:Z

    return-void

    const/4 v1, 0x1
.end method

.method public getBlur()I
    .locals 2

    const/4 v1, 0x1

    .line 255
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->blur:I

    return v0

    const/4 v1, 0x1
.end method

.method public getColor()I
    .locals 2

    const/4 v1, 0x0

    .line 259
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    const/4 v1, 0x3

    .line 275
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->path:Landroid/graphics/Path;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getStrokeWidth()I
    .locals 2

    const/4 v1, 0x2

    .line 279
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->strokeWidth:I

    return v0

    const/4 v1, 0x1
.end method

.method public isDashed()Z
    .locals 2

    const/4 v1, 0x1

    .line 263
    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->dashed:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isFill()Z
    .locals 2

    const/4 v1, 0x0

    .line 267
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->fill:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isNeon()Z
    .locals 2

    const/4 v1, 0x3

    .line 271
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$drawing;->neon:Z

    return v0

    const/4 v1, 0x1
.end method
