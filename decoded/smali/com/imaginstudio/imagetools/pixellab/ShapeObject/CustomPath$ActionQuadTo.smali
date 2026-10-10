.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.source "CustomPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionQuadTo"
.end annotation


# instance fields
.field public first:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFZ)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    .line 242
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    .line 243
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    .line 244
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    .line 245
    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    .line 246
    iput-boolean p6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

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

    const/4 v0, 0x6

    .line 256
    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "q"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->boolToString(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    const/4 v1, 0x3
.end method

.method copy()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
    .locals 9

    const/4 v8, 0x2

    .line 251
    const/4 v8, 0x3

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x1:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y1:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->x2:F

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->y2:F

    iget-boolean v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;->first:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionQuadTo;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFZ)V

    return-object v7

    const/4 v0, 0x0
.end method
