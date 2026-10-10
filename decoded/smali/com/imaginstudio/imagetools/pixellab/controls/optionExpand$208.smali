.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$OnBezierPanelAction;


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

.field final synthetic val$tools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V
    .locals 0

    .line 3867
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;->val$tools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pathChanged(IZZZ)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3875
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;->val$tools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->updateActionsVisibility(IZZZ)V

    return-void

    const/4 v1, 0x1
.end method

.method public selectionChanged(I)V
    .locals 3

    const/4 v2, 0x2

    .line 3870
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;->val$tools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->bezierPanel:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->customBeziers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->updateFor(ILjava/util/ArrayList;)V

    return-void

    const/4 v0, 0x2
.end method

.method public updateMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V
    .locals 2

    const/4 v1, 0x1

    .line 3879
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$208;->val$tools:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->setMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    return-void

    const/4 v1, 0x1
.end method
