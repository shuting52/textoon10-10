.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;
.super Ljava/lang/Object;
.source "gradientTool_controls.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/colorPickerDialog$OnColorSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorSelected(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 52
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-static {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;I)V

    return-void

    const/4 v1, 0x1
.end method
