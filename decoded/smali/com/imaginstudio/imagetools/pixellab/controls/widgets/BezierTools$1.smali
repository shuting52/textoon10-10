.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;
.super Ljava/lang/Object;
.source "BezierTools.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SegmentedSelector$OnSegmentedSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

.field final synthetic val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 138
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    if-eqz v0, :cond_4

    const/4 v2, 0x3

    .line 139
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;

    iget-boolean v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools;->maskMode:Z

    if-nez v0, :cond_2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v2, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v2, 0x1

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    goto :goto_0

    const/4 v2, 0x2

    :cond_1
    const/4 v2, 0x3

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setCurrMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    goto :goto_2

    const/4 v2, 0x1

    .line 140
    const/4 v2, 0x2

    :cond_2
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$1;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 v2, 0x0

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    goto :goto_1

    const/4 v2, 0x1

    :cond_3
    const/4 v2, 0x2

    sget-object p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    :goto_1
    const/4 v2, 0x3

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/BezierTools$OnBezierToolsAction;->setCurrMode(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;)V

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method
