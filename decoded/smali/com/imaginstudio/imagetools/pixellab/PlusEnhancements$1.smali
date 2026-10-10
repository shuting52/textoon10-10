.class Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;
.super Ljava/lang/Object;
.source "PlusEnhancements.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->dockLayersRight(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$panel:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$panel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_37

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_37

    .line 118
    :cond_19
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$panel:Landroid/view/View;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$panel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v1, v1, v2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements$1;->val$activity:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-gez v1, :cond_2f

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->hiddenLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Z)F

    move-result v1

    goto :goto_33

    :cond_2f
    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/PlusEnhancements;->visibleLayersX(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)F

    move-result v1

    :goto_33
    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 119
    return-void

    .line 117
    :cond_37
    :goto_37
    return-void
.end method
