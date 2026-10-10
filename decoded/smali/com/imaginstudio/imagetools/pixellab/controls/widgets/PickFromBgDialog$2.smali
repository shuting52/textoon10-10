.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;
.super Ljava/lang/Object;
.source "PickFromBgDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageShowPick$OnColorChange;


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

.field final synthetic val$currColorIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->val$currColorIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 63
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->currColor:I

    .line 64
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$2;->val$currColorIndicator:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    return-void

    const/4 v1, 0x1
.end method
