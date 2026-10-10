.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
.super Ljava/lang/Object;
.source "FillInfo.java"


# instance fields
.field private fill_color:I

.field private fill_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private fill_type:I

.field private stroke_cap:Landroid/graphics/Paint$Cap;

.field private stroke_color:I

.field private stroke_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field private stroke_type:I

.field private stroke_width:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    .line 27
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    .line 28
    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 29
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    .line 30
    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    .line 31
    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 32
    iput p7, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    .line 33
    iput-object p8, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    return-void
.end method

.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;)V
    .locals 9

    .line 42
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_type()I

    move-result v1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_color()I

    move-result v2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_type()I

    move-result v5

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_color()I

    move-result v6

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->copy()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v3

    :goto_1
    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_width()I

    move-result v8

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->getStroke_cap()Landroid/graphics/Paint$Cap;

    move-result-object p1

    move-object v0, p0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ILandroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method applyCapOnPaint(Landroid/graphics/Paint;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 133
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 134
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x3

    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    const/4 v2, 0x0

    :cond_1
    const/4 v2, 0x1

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void

    const/4 v0, 0x2
.end method

.method copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;
    .locals 2

    const/4 v1, 0x0

    .line 138
    const/4 v1, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;)V

    return-object v0

    const/4 v1, 0x1
.end method

.method fromBundle(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const/4 v2, 0x0

    return-void

    :cond_0
    const/4 v2, 0x1

    const-string v0, "yMR4"

    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x3

    .line 60
    const/4 v2, 0x0

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v2, 0x3

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    const/4 v2, 0x0

    :cond_2
    const/4 v2, 0x1

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    const-string v0, "NyqG"

    .line 61
    const/4 v2, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    const-string v0, "9vwh"

    .line 62
    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    .line 63
    const/4 v2, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "A67W"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v0, "JrtC"

    .line 64
    const/4 v2, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    const-string v0, "UJ3K"

    .line 65
    const/4 v2, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    .line 66
    const/4 v2, 0x0

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v1, "5CVh"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v0, "vtf8"

    .line 67
    const/4 v2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    return-void

    const/4 v0, 0x2
.end method

.method public getFill_color()I
    .locals 2

    const/4 v1, 0x3

    .line 78
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getFill_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x2

    .line 86
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getFill_type()I
    .locals 2

    const/4 v1, 0x1

    .line 70
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStroke_cap()Landroid/graphics/Paint$Cap;
    .locals 2

    const/4 v1, 0x0

    .line 126
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getStroke_color()I
    .locals 2

    const/4 v1, 0x3

    .line 102
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStroke_gradient()Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;
    .locals 2

    const/4 v1, 0x2

    .line 110
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getStroke_type()I
    .locals 2

    const/4 v1, 0x1

    .line 94
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    return v0

    const/4 v1, 0x1
.end method

.method public getStroke_width()I
    .locals 2

    const/4 v1, 0x0

    .line 118
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    return v0

    const/4 v1, 0x1
.end method

.method public setFill_color(I)V
    .locals 1

    const/4 v0, 0x3

    .line 82
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    return-void

    const/4 v0, 0x0
.end method

.method public setFill_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 90
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

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-void

    const/4 v0, 0x0
.end method

.method public setFill_type(I)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke_cap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    const/4 v0, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke_color(I)V
    .locals 1

    const/4 v0, 0x3

    .line 106
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke_gradient(Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 114
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

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke_type(I)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    const/4 v0, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    return-void

    const/4 v0, 0x0
.end method

.method public setStroke_width(I)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    const/4 v0, 0x1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    return-void

    const/4 v0, 0x0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x3

    .line 46
    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "NyqG"

    .line 47
    const/4 v4, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "9vwh"

    .line 48
    const/4 v4, 0x2

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_color:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "A67W"

    .line 49
    const/4 v4, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->fill_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "JrtC"

    .line 50
    const/4 v4, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "UJ3K"

    .line 51
    const/4 v4, 0x1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_color:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "5CVh"

    .line 52
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_gradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->convertToStringV2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vtf8"

    .line 53
    const/4 v4, 0x3

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_width:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "yMR4"

    .line 54
    const/4 v4, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    if-ne v2, v3, :cond_0

    const/4 v4, 0x1

    const/4 v2, 0x0

    goto :goto_0

    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/FillInfo;->stroke_cap:Landroid/graphics/Paint$Cap;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    if-ne v2, v3, :cond_1

    const/4 v4, 0x0

    const/4 v2, 0x1

    goto :goto_0

    const/4 v4, 0x1

    :cond_1
    const/4 v4, 0x2

    const/4 v2, 0x2

    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    const/4 v0, 0x0
.end method
