.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;
.super Ljava/lang/Object;
.source "BezierTools.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->addStrokeOptions(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

.field final synthetic val$stroke_opacity_label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;->val$stroke_opacity_label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 425
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;->val$stroke_opacity_label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    return-void

    .line 427
    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setStrokeOpacity(I)V

    :cond_1
    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method
