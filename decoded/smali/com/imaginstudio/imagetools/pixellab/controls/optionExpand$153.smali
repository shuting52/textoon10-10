.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;
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

.field final synthetic val$oldShadowColor:I

.field final synthetic val$oldShadowDx:I

.field final synthetic val$oldShadowDy:I

.field final synthetic val$oldShadowEnabled:Z

.field final synthetic val$oldShadowRadius:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZIIII)V
    .locals 0

    .line 3027
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowRadius:I

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowDx:I

    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowDy:I

    iput p6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3030
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    iget-boolean v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowEnabled:Z

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowRadius:I

    int-to-float v3, v0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowDx:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowDy:I

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$153;->val$oldShadowColor:I

    invoke-virtual/range {v1 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setShadow(ZFIII)V

    return-void

    const/4 v1, 0x3
.end method
