.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;
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

    .line 88
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 91
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_controls;->sliderPreview:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->selectLeft()V

    return-void

    const/4 v0, 0x0
.end method
