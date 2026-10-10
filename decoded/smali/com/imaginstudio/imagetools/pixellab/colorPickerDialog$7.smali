.class Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$7;
.super Ljava/lang/Object;
.source "colorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;
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

    .line 147
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$7;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    const/4 v0, 0x2

    .line 151
    const/4 v0, 0x3

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$7;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/ColorPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ColorPicker;->getColor()I

    move-result p1

    .line 152
    const/4 v0, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$7;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->access$200(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;)Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;->onColorSelected(I)V

    goto :goto_0

    const/4 v0, 0x1

    .line 155
    const/4 v0, 0x2

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    const/4 v0, 0x3

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method
