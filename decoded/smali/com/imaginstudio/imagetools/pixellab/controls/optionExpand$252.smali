.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;
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

.field final synthetic val$old3dDepth:I

.field final synthetic val$old3dDepthColorAutomatic:Z

.field final synthetic val$old3dDepthColorFill:I

.field final synthetic val$old3dDepthDarken:I

.field final synthetic val$old3dDepthFillType:I

.field final synthetic val$old3dDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$old3dEnabled:Z

.field final synthetic val$old3dStokeInclude:Z

.field final synthetic val$old3dViewType:I

.field final synthetic val$old3dXRot:I

.field final synthetic val$old3dYRot:I

.field final synthetic val$old3dZRot:I

.field final synthetic val$oldLightAngle:I

.field final synthetic val$oldLightingEnabled:Z

.field final synthetic val$oldLightingIntensity:I

.field final synthetic val$oldLightingShadow:I

.field final synthetic val$oldLightingSpecularHardness:I

.field final synthetic val$oldObliqueAngle:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIIZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;ZZIIIIIIII)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    .line 4557
    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    move v1, p2

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dEnabled:Z

    move v1, p3

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dViewType:I

    move v1, p4

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepth:I

    move v1, p5

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthDarken:I

    move v1, p6

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dStokeInclude:Z

    move v1, p7

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthFillType:I

    move v1, p8

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorFill:I

    move-object v1, p9

    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    move v1, p10

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorAutomatic:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingEnabled:Z

    move v1, p12

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightAngle:I

    move v1, p13

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingIntensity:I

    move/from16 v1, p14

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingShadow:I

    move/from16 v1, p15

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingSpecularHardness:I

    move/from16 v1, p16

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldObliqueAngle:I

    move/from16 v1, p17

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dXRot:I

    move/from16 v1, p18

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dYRot:I

    move/from16 v1, p19

    iput v1, v0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dZRot:I

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4560
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->freezeFullRedraw()V

    .line 4561
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dEnabled:Z

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dEnabled(Z)V

    .line 4562
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dViewType:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dViewType(I)V

    .line 4563
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepth:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthDarken:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getThreeDQuality()I

    move-result v3

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dStokeInclude:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepth(IIIZ)V

    .line 4564
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthFillType:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorFill:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthGradientFill:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dDepthColorAutomatic:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dDepthColor(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;Z)V

    .line 4565
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingEnabled:Z

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightAngle:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingIntensity:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingShadow:I

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldLightingSpecularHardness:I

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dLighting(ZIIII)V

    .line 4566
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$oldObliqueAngle:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dObliqueAngle(I)V

    .line 4567
    const/4 v7, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dXRot:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dYRot:I

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotate3d(II)V

    .line 4568
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->UnFreezeFullRedraw()V

    .line 4569
    const/4 v7, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$252;->val$old3dZRot:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->rotateText(I)V

    return-void

    const/4 v1, 0x3
.end method
