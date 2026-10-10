.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;
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

.field final synthetic val$oldInnerShadowColor:I

.field final synthetic val$oldInnerShadowDx:I

.field final synthetic val$oldInnerShadowDy:I

.field final synthetic val$oldInnerShadowEnabled:Z

.field final synthetic val$oldInnerShadowRadius:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V
    .locals 0

    .line 4860
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowRadius:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowDx:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowDy:I

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4863
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowEnabled:Z

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowRadius:I

    int-to-float v3, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowDx:I

    int-to-float v4, v0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowDy:I

    int-to-float v5, v0

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$269;->val$oldInnerShadowColor:I

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setInnerShadow(ZFFFI)V

    return-void

    const/4 v1, 0x3
.end method
