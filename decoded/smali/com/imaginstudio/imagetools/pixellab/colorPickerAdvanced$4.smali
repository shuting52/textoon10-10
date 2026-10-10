.class Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;
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

    .line 110
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    return-void

    const/4 v0, 0x0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-boolean p1, p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 119
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x0

    .line 121
    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iput-boolean p2, p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->justifiedEdit:Z

    :goto_0
    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method
