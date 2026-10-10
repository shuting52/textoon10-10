.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;
.super Ljava/lang/Object;
.source "removeColorTools.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 68
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/removeColorTools;->currColor:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorButton;->setDisplayColor(I)V

    return-void

    const/4 v1, 0x1
.end method
