.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;
.super Landroid/graphics/drawable/Drawable;
.source "preset_ui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->ForStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bgGrad:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field pnt:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)V
    .locals 3

    .line 92
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 93
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    const-string v0, "#b5bb7b"

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->fromHex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#3a6367"

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->fromHex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;-><init>(III)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->bgGrad:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    .line 94
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->pnt:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 97
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->pnt:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->bgGrad:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v5}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->getShader(FFFF)Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 98
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;)I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui$3;->pnt:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    const/4 v1, 0x3
.end method

.method public getOpacity()I
    .locals 2

    const/4 v1, 0x3

    const/4 v0, -0x1

    return v0

    const/4 v1, 0x1
.end method

.method public setAlpha(I)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method
