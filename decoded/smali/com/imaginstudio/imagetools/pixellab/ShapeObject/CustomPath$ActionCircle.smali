.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.source "CustomPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionCircle"
.end annotation


# instance fields
.field public rad:F

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFF)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    .line 264
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    .line 265
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    .line 266
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    return-void
.end method


# virtual methods
.method addToArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x4

    .line 276
    const/4 v3, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "c"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    const/4 v1, 0x3
.end method

.method copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
    .locals 6

    const/4 v5, 0x0

    .line 271
    const/4 v5, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->x:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->y:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;->rad:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionCircle;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFF)V

    return-object v0

    const/4 v1, 0x1
.end method
