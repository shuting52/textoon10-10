.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;
.super Ljava/lang/Object;
.source "ShapeChoiceId.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$ShapeLabel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 64
    const/4 v2, 0x3

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ShapeChoiceId$1;)V

    invoke-direct {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog$shapePickEvent;)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/shapesPickerDialog;->show()V

    return-void

    const/4 v0, 0x2
.end method
