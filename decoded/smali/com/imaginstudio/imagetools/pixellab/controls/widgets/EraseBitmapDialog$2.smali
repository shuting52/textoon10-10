.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;
.super Ljava/lang/Object;
.source "EraseBitmapDialog.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public freeSelCountChanged(I)V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 119
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->currSelectionShape:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne v0, v1, :cond_3

    const/4 v5, 0x0

    .line 120
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selDelL:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const/4 v5, 0x2

    const/4 v3, 0x0

    goto :goto_0

    const/4 v5, 0x3

    :cond_0
    const/4 v5, 0x0

    const/16 v3, 0x8

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remSelectionButton:Landroid/view/View;

    const/4 v3, 0x1

    if-le p1, v3, :cond_1

    const/4 v5, 0x3

    const/4 v4, 0x0

    goto :goto_1

    const/4 v5, 0x0

    :cond_1
    const/4 v5, 0x1

    const/16 v4, 0x8

    :goto_1
    const/4 v5, 0x2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remInvertButton:Landroid/view/View;

    if-le p1, v3, :cond_2

    const/4 v5, 0x0

    const/4 v1, 0x0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v5, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public imgAreaUpdated(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public masksCountChanged(I)V
    .locals 4

    const/4 v3, 0x2

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    .line 94
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    const/4 v3, 0x2

    .line 97
    const/4 v3, 0x3

    :cond_0
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 98
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->undoButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    const/4 v3, 0x2

    return-void

    const/4 v1, 0x3
.end method

.method public selTypeChanged(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;)V
    .locals 5

    const/4 v4, 0x0

    .line 104
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeFree:Landroid/view/View;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    const/4 v4, 0x2

    const/4 v1, 0x1

    goto :goto_0

    const/4 v4, 0x3

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 105
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeSquare:Landroid/view/View;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v1, :cond_1

    const/4 v4, 0x3

    const/4 v1, 0x1

    goto :goto_1

    const/4 v4, 0x0

    :cond_1
    const/4 v4, 0x1

    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 106
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selTypeCircle:Landroid/view/View;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v1, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    const/4 v4, 0x1

    :cond_2
    const/4 v4, 0x2

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x3

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 107
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->selDelL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    const/4 v4, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-eq p1, v0, :cond_4

    const/4 v4, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    if-ne p1, v0, :cond_3

    const/4 v4, 0x3

    goto :goto_3

    const/4 v4, 0x0

    .line 112
    const/4 v4, 0x1

    :cond_3
    const/4 v4, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remSelectionButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remInvertButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    const/4 v4, 0x0

    .line 109
    const/4 v4, 0x1

    :cond_4
    const/4 v4, 0x2

    :goto_3
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remSelectionButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->remInvertButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const/4 v4, 0x1

    return-void

    const/4 v0, 0x0
.end method
