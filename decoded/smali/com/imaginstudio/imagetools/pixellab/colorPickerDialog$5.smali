.class Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;
.super Ljava/lang/Object;
.source "colorPickerDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ColorPicker$ColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

.field final synthetic val$alphaControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

.field final synthetic val$newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

.field final synthetic val$saturationControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

.field final synthetic val$textInfo:Landroid/widget/TextView;

.field final synthetic val$valueControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;Landroid/widget/TextView;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$saturationControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$valueControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$alphaControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$textInfo:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChange()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 101
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result v0

    .line 102
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$saturationControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getAlphaVal()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColorHSV()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColor(I[F)V

    .line 103
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$valueControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getAlphaVal()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColorHSV()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColor(I[F)V

    .line 104
    const/4 v4, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$alphaControl:Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getAlphaVal()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColorHSV()[F

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ColorPickerSlider;->setColor(I[F)V

    .line 105
    const/4 v4, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$newColorButton:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    .line 106
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->val$textInfo:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$100(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    const/4 v0, 0x0
.end method
