.class public Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;
.super Ljava/lang/Object;
.source "CustomMotionEvent.java"


# instance fields
.field private action:I

.field private actionMasked:I

.field private rawX:F

.field private rawY:F

.field private relX:F

.field private relY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->updateWith(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 56
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->action:I

    return v0

    const/4 v1, 0x1
.end method

.method public getActionMasked()I
    .locals 2

    const/4 v1, 0x0

    .line 60
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->actionMasked:I

    return v0

    const/4 v1, 0x1
.end method

.method public getRawX()F
    .locals 2

    const/4 v1, 0x3

    .line 40
    const/4 v1, 0x0

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->rawX:F

    return v0

    const/4 v1, 0x1
.end method

.method public getRawY()F
    .locals 2

    const/4 v1, 0x2

    .line 44
    const/4 v1, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->rawY:F

    return v0

    const/4 v1, 0x1
.end method

.method public getRelX()F
    .locals 2

    const/4 v1, 0x1

    .line 48
    const/4 v1, 0x2

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relX:F

    return v0

    const/4 v1, 0x1
.end method

.method public getRelY()F
    .locals 2

    const/4 v1, 0x0

    .line 52
    const/4 v1, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relY:F

    return v0

    const/4 v1, 0x1
.end method

.method public updateWith(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x3

    .line 19
    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->rawX:F

    .line 20
    const/4 v12, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->rawY:F

    .line 21
    const/4 v12, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->action:I

    .line 22
    const/4 v12, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->actionMasked:I

    .line 23
    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relX:F

    .line 24
    const/4 v12, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relY:F

    .line 25
    const/4 v12, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result p1

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    const/4 v12, 0x3

    neg-double v0, v0

    .line 27
    const/4 v12, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 28
    const/4 v12, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 29
    const/4 v12, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 30
    const/4 v12, 0x3

    invoke-virtual {p2}, Landroid/view/View;->getPivotX()F

    move-result p1

    .line 31
    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getPivotY()F

    move-result p2

    .line 32
    const/4 v12, 0x1

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relX:F

    sub-float/2addr v4, p1

    .line 33
    const/4 v12, 0x2

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relY:F

    sub-float/2addr v5, p2

    float-to-double v6, v4

    mul-double v8, v6, v2

    float-to-double v4, v5

    mul-double v10, v4, v0

    sub-double/2addr v8, v10

    float-to-double v10, p1

    add-double/2addr v8, v10

    double-to-float p1, v8

    .line 34
    const/4 v12, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relX:F

    mul-double v6, v6, v0

    mul-double v4, v4, v2

    add-double/2addr v6, v4

    float-to-double p1, p2

    add-double/2addr v6, p1

    double-to-float p1, v6

    .line 35
    const/4 v12, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/CustomMotionEvent;->relY:F

    :cond_0
    const/4 v12, 0x1

    return-void

    const/4 v0, 0x0
.end method
