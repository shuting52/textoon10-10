.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;
.super Ljava/lang/Object;
.source "BezierTools.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;


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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 445
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v2, 0x0

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    const/4 v2, 0x3

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_2
    const/4 v2, 0x0

    return-void

    const/4 v0, 0x2
.end method
