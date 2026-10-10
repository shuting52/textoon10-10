.class Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;
.super Ljava/lang/Object;
.source "BezierPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->initiate()V
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

    .line 97
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 100
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;->startNewDefault(Z)V

    return-void

    const/4 v0, 0x2
.end method
