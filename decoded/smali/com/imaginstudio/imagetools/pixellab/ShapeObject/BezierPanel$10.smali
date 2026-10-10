.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;
.super Ljava/lang/Object;
.source "BezierPanel.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->setStrokeOpacity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

.field final synthetic val$opacity:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;I)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->val$opacity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 582
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->val$opacity:I

    iput v0, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->strokeAlpha:I

    .line 583
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$10;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->invalidate()V

    return-void

    const/4 v1, 0x1
.end method
