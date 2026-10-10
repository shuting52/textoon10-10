.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;
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

.field final synthetic val$oldRemoveColorBlur:I

.field final synthetic val$oldRemoveColorCT:Ljava/util/ArrayList;

.field final synthetic val$oldRemoveColorEnabled:Z


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;ZILjava/util/ArrayList;)V
    .locals 0

    .line 2901
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->val$oldRemoveColorEnabled:Z

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->val$oldRemoveColorBlur:I

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->val$oldRemoveColorCT:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2904
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->val$oldRemoveColorEnabled:Z

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->val$oldRemoveColorBlur:I

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$144;->val$oldRemoveColorCT:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setRemoveColorOptions(ZILjava/util/ArrayList;)V

    return-void

    const/4 v0, 0x0
.end method
