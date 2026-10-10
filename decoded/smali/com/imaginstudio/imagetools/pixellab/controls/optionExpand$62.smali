.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field enabled:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

.field final synthetic val$eraser:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/ImageButton;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->val$eraser:Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1476
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->enabled:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1479
    const/4 v1, 0x2

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->enabled:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->enabled:Z

    .line 1480
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->val$eraser:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 1481
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->drawingPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;->setCurrPenType(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;)V

    .line 1482
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->val$color_selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;

    iget-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$62;->enabled:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const/16 v0, 0x8

    goto :goto_1

    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/unifiedColor_selector;->setVisibility(I)V

    return-void

    const/4 v1, 0x1
.end method
