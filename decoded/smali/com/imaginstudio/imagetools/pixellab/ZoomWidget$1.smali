.class Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$1;
.super Ljava/lang/Object;
.source "ZoomWidget.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->setZoomLevel(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    return-void

    const/4 v0, 0x0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;->invalidate()V

    return-void

    const/4 v0, 0x0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method
