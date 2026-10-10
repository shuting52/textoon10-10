.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;
.super Ljava/lang/Object;
.source "BoundedShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "handlesToggle"
.end annotation


# instance fields
.field active_00:Z

.field active_01:Z

.field active_0H:Z

.field active_10:Z

.field active_11:Z

.field active_1H:Z

.field active_H0:Z

.field active_H1:Z

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 313
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    .line 314
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    .line 315
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    .line 316
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    .line 318
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    .line 319
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    .line 320
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    .line 321
    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    return-void
.end method


# virtual methods
.method public applyPreset1()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x1

    .line 333
    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    const/4 v0, 0x0

    .line 334
    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    return-void

    const/4 v1, 0x1
.end method

.method toggleAll(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 329
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    return-void

    const/4 v0, 0x0
.end method

.method toggleMain(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 323
    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_01:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_11:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_10:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_00:Z

    return-void

    const/4 v0, 0x0
.end method

.method toggleSecondary(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 326
    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_0H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H1:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_1H:Z

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BoundedShape$handlesToggle;->active_H0:Z

    return-void

    const/4 v0, 0x0
.end method
