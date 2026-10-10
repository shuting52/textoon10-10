.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;
.super Ljava/lang/Object;
.source "gradientTool_controls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 49
    const/4 v3, 0x0

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->lastSelectedHandle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/colorHandle;->getColor()I

    move-result v1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;

    invoke-direct {v2, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;-><init>(Landroid/content/Context;ILcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;)V

    .line 56
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog;->show()V

    return-void

    const/4 v1, 0x3
.end method
