.class Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;
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

    .line 85
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 88
    const/4 v2, 0x3

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->dialogLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$4;)V

    invoke-direct {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog$OnColorPickedBg;)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/PickFromBgDialog;->show()V

    return-void

    const/4 v0, 0x2
.end method
