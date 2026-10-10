.class final synthetic Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$9;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$$Lambda$9;->arg$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->lambda$addControlsForMessage$9$optionExpand(I)V

    return-void

    const/4 v1, 0x1
.end method
