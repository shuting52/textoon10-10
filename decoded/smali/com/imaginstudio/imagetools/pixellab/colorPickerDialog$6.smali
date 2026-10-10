.class Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;
.super Ljava/lang/Object;
.source "colorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 113
    const/4 v3, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$6;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;)V

    .line 119
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->show()V

    return-void

    const/4 v1, 0x3
.end method
