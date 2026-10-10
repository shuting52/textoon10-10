.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;
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

.field final synthetic val$oldStrokeColor:I

.field final synthetic val$oldStrokeEnabled:Z

.field final synthetic val$oldStrokeFillType:I

.field final synthetic val$oldStrokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$oldStrokeWidth:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    .line 4918
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeWidth:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeFillType:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeColor:I

    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4921
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeEnabled:Z

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeWidth:I

    int-to-float v3, v0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeFillType:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeColor:I

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$273;->val$oldStrokeGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setStroke(ZFIILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    return-void

    const/4 v1, 0x3
.end method
