.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;
.super Ljava/lang/Object;
.source "gradientTool_Preview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->setDirection(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

.field final synthetic val$direction:[I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;I[I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$type:I

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$direction:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 47
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->drawingGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$type:I

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->val$direction:[I

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;->setV2Direction(I[I)V

    .line 48
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->updatePointsFromGradient()V

    .line 49
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;->postInvalidate()V

    return-void

    const/4 v1, 0x3
.end method
