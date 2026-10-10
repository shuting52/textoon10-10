.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"
# interfaces
.implements Landroid/view/View$OnTouchListener;
# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation
# instance fields
.field dX:F
.field minX:F
.field previousX:F
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0
    .line 208
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    const/high16 p1, -0x3ee00000    # -10.0f
    .line 210
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F
    return-void
.end method
# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"
    .line 213
    const/4 v2, 0x0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F
    move-result p1
    .line 214
    const/4 v2, 0x1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result p2
    const/4 v0, 0x0
    if-eqz p2, :cond_1
    const/4 v2, 0x2
    const/4 v1, 0x2
    if-eq p2, v1, :cond_0
    const/4 v2, 0x3
    goto :goto_0
    const/4 v2, 0x0
    .line 221
    const/4 v2, 0x1
    :cond_0
    const/4 v2, 0x2
    iget p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->previousX:F
    sub-float p2, p1, p2
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->dX:F
    .line 222
    const/4 v2, 0x3
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->previousX:F
    .line 223
    const/4 v2, 0x0
    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getX()F
    move-result p2
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->dX:F
    add-float/2addr p2, v1
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    const/4 v0, 0x1
    invoke-static {v1, v0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F
    move-result v0
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F
    move-result p2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F
    move-result p1
    .line 224
    const/4 v2, 0x1
    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setX(F)V
    .line 225
    const/4 v2, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F
    move-result p1
    const/high16 p2, 0x3f800000    # 1.0f
    cmpl-float p1, p1, p2
    if-eqz p1, :cond_2
    const/4 v2, 0x3
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$100(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Z
    move-result p1
    if-eqz p1, :cond_2
    const/4 v2, 0x0
    .line 226
    const/4 v2, 0x1
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->layersLayout:Landroid/widget/LinearLayout;
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V
    goto :goto_0
    const/4 v2, 0x2
    .line 216
    const/4 v2, 0x3
    :cond_1
    const/4 v2, 0x0
    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->previousX:F
    .line 217
    const/4 v2, 0x1
    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->dX:F
    .line 218
    const/4 v2, 0x2
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->visibleLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F
    move-result p2
    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$1;->minX:F
    :cond_2
    const/4 v2, 0x3
    :goto_0
    const/4 v2, 0x0
    const/4 p1, 0x1
    return p1
    const/4 v0, 0x2
.end method
