.class public Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;
.super Ljava/lang/Object;
.source "Line2D.java"


# instance fields
.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public getX1()F
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 23
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    return v0

    const/4 v1, 0x1
.end method

.method public getX2()F
    .locals 2

    const/4 v1, 0x2

    .line 31
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    return v0

    const/4 v1, 0x1
.end method

.method public getY1()F
    .locals 2

    const/4 v1, 0x1

    .line 27
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    return v0

    const/4 v1, 0x1
.end method

.method public getY2()F
    .locals 2

    const/4 v1, 0x0

    .line 35
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    return v0

    const/4 v1, 0x1
.end method

.method public set(FFFF)V
    .locals 1

    const/4 v0, 0x3

    .line 17
    const/4 v0, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x1:F

    .line 18
    const/4 v0, 0x1

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y1:F

    .line 19
    const/4 v0, 0x2

    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->x2:F

    .line 20
    const/4 v0, 0x3

    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/functions/Line2D;->y2:F

    return-void

    const/4 v0, 0x0
.end method
