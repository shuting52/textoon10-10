.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnDoneErase(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1183
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 1184
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrShapeState(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;)V

    .line 1185
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$25;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBmpPathMasks(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method
