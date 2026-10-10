.class Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;
.super Ljava/lang/Object;
.source "colorPickerDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorPicked(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 116
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->setColor(I)V

    return-void

    const/4 v1, 0x1
.end method
