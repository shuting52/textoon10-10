.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$2;
.super Ljava/lang/Object;
.source "ZoomButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->updateButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

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
    .locals 2

    const/4 v1, 0x0

    .line 102
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton;->label:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ZoomButton$ZoomLabel;->setVisibility(I)V

    return-void

    const/4 v1, 0x1
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
