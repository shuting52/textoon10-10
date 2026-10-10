.class Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;
.super Ljava/lang/Object;
.source "imageSizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    const/4 v2, 0x2

    .line 195
    const/4 v2, 0x3

    :pswitch_0
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 196
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->listener:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget p2, p2, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currWidth:I

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->currHeight:I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog;->keepCropSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/imageSizeDialog$imageSizeListener;->onSizePicked(IIZ)V

    goto :goto_0

    const/4 v2, 0x2

    .line 200
    const/4 v2, 0x3

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v2, 0x1

    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const/4 v0, 0x2
.end method
