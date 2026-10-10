.class Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;
.super Ljava/lang/Object;
.source "colorPickerAdvanced.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 130
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 133
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->hexValue:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "#"

    .line 136
    const/4 v3, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 137
    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    const/4 v3, 0x2

    :cond_0
    const/4 v3, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x0

    .line 141
    const/4 v3, 0x1

    :catch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)I

    move-result p1

    .line 142
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00ed

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    const/4 v3, 0x3

    :goto_0
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->setRGBFields(I)V

    .line 145
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->acceptHex:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 146
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$100(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;I)V

    return-void

    const/4 v1, 0x3
.end method
