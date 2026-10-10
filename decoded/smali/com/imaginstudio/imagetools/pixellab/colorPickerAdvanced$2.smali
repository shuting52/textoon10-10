.class Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;
.super Ljava/lang/Object;
.source "colorPickerAdvanced.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 83
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->gValue:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->commitEditTextValue(Landroid/widget/EditText;)I

    move-result p1

    .line 84
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    if-eq v0, p1, :cond_0

    const/4 v1, 0x3

    .line 85
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->currGreenVal:I

    .line 86
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->updateHexField()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
