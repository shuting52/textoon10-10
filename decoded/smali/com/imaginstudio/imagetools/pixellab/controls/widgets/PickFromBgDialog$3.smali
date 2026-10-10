.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;
.super Ljava/lang/Object;
.source "PickFromBgDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

.field final synthetic val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 70
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 71
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->imgShow:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick;->currColor:I

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;->colorPicked(I)V

    .line 73
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->dismiss()V

    return-void

    const/4 v1, 0x1
.end method
