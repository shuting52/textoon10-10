.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$4;
.super Ljava/lang/Object;
.source "BezierPanel.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$SelectedBezierAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->divideNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doOnBezier(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 505
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;->addPointAfterSelected()V

    return-void

    const/4 v0, 0x0
.end method
