.class Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;
.super Ljava/lang/Object;
.source "colorPickerAdvanced.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;
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

    .line 190
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    const/4 v0, 0x1

    .line 194
    const/4 v0, 0x2

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$000(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)I

    move-result p1

    .line 195
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;->access$200(Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced;)Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerAdvanced$ColorPickedListener;->colorPicked(I)V

    goto :goto_0

    const/4 v0, 0x0

    .line 198
    const/4 v0, 0x1

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    const/4 v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x0
.end method
