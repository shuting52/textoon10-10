.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;
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

.field final synthetic val$originalValX:I

.field final synthetic val$originalValY:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;II)V
    .locals 0

    .line 2433
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;->val$originalValX:I

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;->val$originalValY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2436
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;->val$originalValX:I

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$118;->val$originalValY:I

    invoke-virtual {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->rotate3d(II)V

    return-void

    const/4 v1, 0x3
.end method
