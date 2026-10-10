.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field private final arg$2:I

.field private final arg$3:I

.field private final arg$4:I

.field private final arg$5:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$2:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$3:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$4:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$5:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$2:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$3:I

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$4:I

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$15;->arg$5:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$15$optionExpand(IIII)V

    return-void

    const/4 v1, 0x1
.end method
