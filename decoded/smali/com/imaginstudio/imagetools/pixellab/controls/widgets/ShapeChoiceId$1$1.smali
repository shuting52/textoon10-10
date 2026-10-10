.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;
.super Ljava/lang/Object;
.source "ShapeChoiceId.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShapePicked(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 67
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->currentShape:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;->setShape(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 68
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->changeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 69
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->changeListener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$shapeChangeEvent;->onShapeChanged(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 71
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
