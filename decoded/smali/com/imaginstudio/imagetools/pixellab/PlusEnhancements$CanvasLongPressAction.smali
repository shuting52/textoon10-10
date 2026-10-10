.class final Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"

# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanvasLongPressAction"
.end annotation

# interfaces
.implements Ljava/lang/Runnable;

# instance fields
.field private final container:Lcom/imaginstudio/imagetools/pixellab/textContainer;
.field private final startX:F
.field private final startY:F
.field private final target:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/textContainer;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;FF)V
    .registers 5
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->container:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->target:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    iput p3, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->startX:F
    iput p4, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->startY:F
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public movedBeyondSlop(Landroid/view/MotionEvent;I)Z
    .registers 5
    if-eqz p1, :canvas_movement_false
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
    move-result v0
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->startX:F
    sub-float/2addr v0, v1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    move-result v0
    int-to-float v1, p2
    cmpl-float v0, v0, v1
    if-lez v0, :canvas_check_vertical_slop
    const/4 v0, 0x1
    return v0
    :canvas_check_vertical_slop
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
    move-result v0
    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->startY:F
    sub-float/2addr v0, v1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    move-result v0
    int-to-float v1, p2
    cmpl-float v0, v0, v1
    if-lez v0, :canvas_movement_false
    const/4 v0, 0x1
    return v0
    :canvas_movement_false
    const/4 v0, 0x0
    return v0
.end method

.method public run()V
    .registers 3
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->container:Lcom/imaginstudio/imagetools/pixellab/textContainer;
    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$CanvasLongPressAction;->target:Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;
    invoke-static {v0, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->onCanvasLongPressFired(Lcom/imaginstudio/imagetools/pixellab/textContainer;Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;Ljava/lang/Runnable;)V
    return-void
.end method
