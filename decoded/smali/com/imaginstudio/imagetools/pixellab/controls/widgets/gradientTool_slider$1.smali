.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;
.super Ljava/lang/Object;
.source "gradientTool_slider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->gradientDoneEditing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 63
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_slider;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
