.class Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;
.super Ljava/lang/Object;
.source "shapesPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

.field final synthetic val$label:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

.field final synthetic val$shapeEvent:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$shapeEvent:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$label:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 76
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$shapeEvent:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    .line 77
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$shapeEvent:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->val$label:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;->onShapePicked(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V

    .line 78
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->dismiss()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method
