.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;
.super Ljava/lang/Object;
.source "removeColorTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 65
    const/4 v3, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->getDisplayColor()I

    move-result v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V

    .line 72
    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->show()V

    return-void

    const/4 v1, 0x3
.end method
