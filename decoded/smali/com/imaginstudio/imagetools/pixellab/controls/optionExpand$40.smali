.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;
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

    .line 971
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->val$oldAlpha:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->val$oldRepeat:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->val$oldEnabled:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 974
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->val$oldAlpha:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setEffectAlpha(I)V

    .line 975
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->val$oldRepeat:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setNumberToRepeat(I)V

    .line 976
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->stripesEffect:Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$40;->val$oldEnabled:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/effects/stripes_bg;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method
