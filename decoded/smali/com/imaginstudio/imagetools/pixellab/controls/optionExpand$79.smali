.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;
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

.field final synthetic val$oldShapeHeight:F

.field final synthetic val$oldShapeWidth:F


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;FF)V
    .locals 0

    .line 1760
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;->val$oldShapeWidth:F

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;->val$oldShapeHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1763
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;->val$oldShapeWidth:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$79;->val$oldShapeHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setDims(FF)V

    return-void

    const/4 v1, 0x3
.end method
