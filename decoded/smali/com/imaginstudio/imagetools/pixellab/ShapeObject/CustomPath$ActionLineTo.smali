.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.source "CustomPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionLineTo"
.end annotation


# instance fields
.field public isMoveTo:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFZ)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    .line 221
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->x:F

    .line 222
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->y:F

    .line 223
    iput-boolean p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->isMoveTo:Z

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

    .line 233
    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "l"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->isMoveTo:Z

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->boolToString(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->x:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->y:F

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

    const/4 v5, 0x2

    .line 228
    const/4 v5, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->x:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->y:F

    iget-boolean v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;->isMoveTo:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionLineTo;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFZ)V

    return-object v0

    const/4 v1, 0x1
.end method
