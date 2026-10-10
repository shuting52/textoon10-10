.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$oldColorOverlayColor:I

.field final synthetic val$oldColorOverlayEnabled:Z

.field final synthetic val$oldColorOverlayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$oldColorOverlayType:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    .line 2940
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayType:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayColor:I

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2943
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayEnabled:Z

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayType:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayColor:I

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$147;->val$oldColorOverlayGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setColorOverlay(ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    return-void

    const/4 v1, 0x1
.end method
