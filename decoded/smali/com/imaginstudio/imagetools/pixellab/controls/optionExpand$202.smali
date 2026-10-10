.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;
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

.field final synthetic val$oldBGB:F

.field final synthetic val$oldBGColor:I

.field final synthetic val$oldBGEnabled:Z

.field final synthetic val$oldBGFillType:I

.field final synthetic val$oldBGGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$oldBGL:F

.field final synthetic val$oldBGR:F

.field final synthetic val$oldBGRadius:I

.field final synthetic val$oldBGT:F


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V
    .locals 0

    .line 3750
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGFillType:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGColor:I

    iput-object p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGL:F

    iput p7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGR:F

    iput p8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGT:F

    iput p9, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGB:F

    iput p10, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGRadius:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v11, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3753
    const/4 v11, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGEnabled:Z

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGFillType:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGColor:I

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGL:F

    iget v7, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGR:F

    iget v8, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGT:F

    iget v9, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGB:F

    iget v10, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$202;->val$oldBGRadius:I

    invoke-virtual/range {v1 .. v10}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->updateBackground(ZIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;FFFFI)V

    return-void

    const/4 v1, 0x3
.end method
