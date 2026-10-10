.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;
.super Ljava/lang/Object;
.source "EraserMask.java"


# instance fields
.field public blur:I

.field public moved:Z

.field path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public relativeArea:Landroid/graphics/RectF;

.field public strokeFill:Z

.field public strokeWidth:F


# direct methods
.method public constructor <init>(FZILandroid/graphics/RectF;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeWidth:F

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    .line 21
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    .line 22
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->moved:Z

    .line 23
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    .line 24
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    .line 32
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeWidth:F

    .line 33
    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    .line 34
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    .line 35
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    if-eqz p1, :cond_0

    const-string v1, "PtD"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;-><init>(Landroid/os/Bundle;)V

    const-string v1, "Ea"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->arrToRectF(Ljava/util/ArrayList;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V

    const-string v0, "Ew"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setStrokeWidth(F)V

    const-string v0, "Eb"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setBlur(I)V

    const-string v0, "Ef"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->setStrokeFill(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;Landroid/graphics/RectF;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeWidth:F

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    .line 21
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    .line 22
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->moved:Z

    .line 23
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    .line 24
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;-><init>()V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    .line 28
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->set(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    .line 29
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public getBlur()I
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 62
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    return v0

    const/4 v1, 0x1
.end method

.method public getPath()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
    .locals 2

    const/4 v1, 0x2

    .line 38
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getStrokeWidth()F
    .locals 2

    const/4 v1, 0x1

    .line 54
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeWidth:F

    return v0

    const/4 v1, 0x1
.end method

.method public isStrokeFill()Z
    .locals 2

    const/4 v1, 0x0

    .line 46
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    return v0

    const/4 v1, 0x1
.end method

.method public moved()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    .line 76
    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->moved:Z

    return-void

    const/4 v1, 0x1
.end method

.method public pointIfNotMoved(FF)V
    .locals 4

    const/4 v3, 0x2

    .line 70
    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->moved:Z

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 71
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->addCircle(FFF)V

    const/4 p1, 0x1

    .line 72
    const/4 v3, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    :cond_0
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method public setBlur(I)V
    .locals 1

    const/4 v0, 0x1

    .line 58
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    return-void

    const/4 v0, 0x0
.end method

.method public setPath(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    return-void

    const/4 v0, 0x0
.end method

.method public setStrokeFill(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 50
    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeFill:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setStrokeWidth(F)V
    .locals 1

    const/4 v0, 0x2

    .line 66
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->strokeWidth:F

    return-void

    const/4 v0, 0x0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x1

    .line 80
    const/4 v3, 0x2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PtD"

    .line 81
    const/4 v3, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->path:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "Ea"

    .line 82
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->relativeArea:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->rectFToArr(Landroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "Ew"

    .line 83
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->getStrokeWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Eb"

    .line 84
    const/4 v3, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->blur:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "Ef"

    .line 85
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/EraserMask;->isStrokeFill()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    const/4 v1, 0x3
.end method
