.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v7, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 205
    const/4 v7, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v7, 0x3

    .line 206
    const/4 v7, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    sget v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$shapePath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->newShapeSize:I

    int-to-float p1, p1

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbWidth:F

    mul-float p1, p1, v4

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbWidth:F

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbHeight:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr p1, v4

    float-to-int v4, p1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->newShapeSize:I

    int-to-float p1, p1

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbHeight:F

    mul-float p1, p1, v5

    iget-object v5, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget v5, v5, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbWidth:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;

    iget v6, v6, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$1$3;->val$thumbHeight:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float/2addr p1, v5

    float-to-int v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->editCurrShape(ILcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZII)V

    :cond_0
    const/4 v7, 0x1

    return-void

    const/4 v1, 0x3
.end method
