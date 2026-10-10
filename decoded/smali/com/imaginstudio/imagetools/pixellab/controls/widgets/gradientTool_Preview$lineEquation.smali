.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;
.super Ljava/lang/Object;
.source "gradientTool_Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "lineEquation"
.end annotation


# instance fields
.field angle:D

.field cosAlpha:F

.field pointAlongLine:Landroid/graphics/PointF;

.field sinAlpha:F

.field startingPoint:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;DLandroid/graphics/PointF;)V
    .locals 2

    .line 136
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->angle:D

    .line 138
    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->startingPoint:Landroid/graphics/PointF;

    .line 139
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->cosAlpha:F

    .line 140
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->sinAlpha:F

    .line 141
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->pointAlongLine:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method getPointAtDistance(F)Landroid/graphics/PointF;
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 144
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->pointAlongLine:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->startingPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->cosAlpha:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->startingPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->sinAlpha:F

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 145
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/gradientTool_Preview$lineEquation;->pointAlongLine:Landroid/graphics/PointF;

    return-object p1

    const/4 v0, 0x0
.end method
