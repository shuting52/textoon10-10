.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;
.super Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;
.source "CustomPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionRect"
.end annotation


# instance fields
.field public bottom:F

.field public direction:Landroid/graphics/Path$Direction;

.field public left:F

.field public right:F

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

.field public top:F


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFLandroid/graphics/Path$Direction;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$PathAction;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;)V

    .line 302
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    .line 303
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    .line 304
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    .line 305
    iput p5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

    .line 306
    iput-object p6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

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

    .line 316
    const/4 v3, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "r"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

    invoke-static {v1}, Lcom/imaginstudio/imagetools/pixellab/commonFuncs;->directionToString(Landroid/graphics/Path$Direction;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

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

    const/4 v8, 0x0

    .line 311
    const/4 v8, 0x1

    new-instance v7, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->left:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->top:F

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->right:F

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->bottom:F

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;->direction:Landroid/graphics/Path$Direction;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$ActionRect;-><init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath;FFFFLandroid/graphics/Path$Direction;)V

    return-object v7

    const/4 v0, 0x0
.end method
