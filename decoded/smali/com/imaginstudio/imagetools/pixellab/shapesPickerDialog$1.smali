.class Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;
.super Landroid/graphics/drawable/Drawable;
.source "shapesPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pnt:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;->pnt:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v9, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 41
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;->pnt:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/RadialGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v4, v1

    const-string v1, "#fefefe"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v1, "#dfdfdf"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 42
    const/4 v9, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$1;->pnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x1
.end method

.method public getOpacity()I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    return v0

    const/4 v1, 0x1
.end method

.method public setAlpha(I)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method
