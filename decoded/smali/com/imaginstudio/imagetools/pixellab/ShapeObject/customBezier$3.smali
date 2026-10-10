.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;
.super Ljava/lang/Object;
.source "customBezier.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$CubicAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addToArrayList(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

.field final synthetic val$arr:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;Ljava/util/ArrayList;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;->val$arr:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOn(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;)V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 185
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$3;->val$arr:Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x1:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y1:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x2:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y2:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->x3:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$cubicToElement;->y3:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    const/4 v0, 0x0
.end method
