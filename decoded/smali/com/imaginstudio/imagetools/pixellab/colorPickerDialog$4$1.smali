.class Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;
.super Ljava/lang/Object;
.source "colorPickerDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorPicked(I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 91
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(II)V

    return-void

    const/4 v0, 0x2
.end method
