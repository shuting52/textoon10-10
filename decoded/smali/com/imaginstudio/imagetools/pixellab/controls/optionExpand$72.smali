.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;
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

.field final synthetic val$oldBgColor:I

.field final synthetic val$oldBgGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

.field final synthetic val$oldBgType:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V
    .locals 0

    .line 1626
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->val$oldBgType:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->val$oldBgColor:I

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->val$oldBgGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1629
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->val$oldBgType:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->val$oldBgColor:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$72;->val$oldBgGradient:Lcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->setBgFillOptions(IILcom/imaginstudio/imagetools/pixellab/GradientMaker$GradientFill;)V

    return-void

    const/4 v0, 0x0
.end method
