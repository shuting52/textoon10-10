.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;
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

.field final synthetic val$oldAlpha:I

.field final synthetic val$oldEnabled:I

.field final synthetic val$oldRepeat:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;III)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->val$oldAlpha:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->val$oldRepeat:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->val$oldEnabled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 910
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->val$oldAlpha:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setEffectAlpha(I)V

    .line 911
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->val$oldRepeat:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setNumberToRepeat(I)V

    .line 912
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$36;->val$oldEnabled:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method
