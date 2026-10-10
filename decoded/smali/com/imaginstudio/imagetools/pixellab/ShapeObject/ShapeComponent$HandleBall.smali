.class public Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;
.super Ljava/lang/Object;
.source "ShapeComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleBall"
.end annotation


# instance fields
.field point:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;


# direct methods
.method public constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;I)V
    .locals 0

    .line 2131
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2129
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;->point:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2136
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;->point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0

    const/4 v1, 0x1
.end method

.method public getY()F
    .locals 2

    const/4 v1, 0x3

    .line 2140
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;->point:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0

    const/4 v1, 0x1
.end method

.method public setX(F)V
    .locals 2

    const/4 v1, 0x2

    .line 2144
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;->point:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    return-void

    const/4 v1, 0x1
.end method

.method public setY(F)V
    .locals 2

    const/4 v1, 0x1

    .line 2148
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent$HandleBall;->point:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-void

    const/4 v1, 0x1
.end method
