.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;
.super Ljava/lang/Object;
.source "BezierTools.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addRotOptions(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

.field final synthetic val$label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;->val$label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 372
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;->val$label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 373
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$8;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->rotateBezier(I)V

    :cond_0
    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method
