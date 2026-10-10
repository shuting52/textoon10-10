.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$6;
.super Ljava/lang/Object;
.source "EraseBitmapDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 177
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x3

    const/4 p2, 0x1

    .line 181
    const/4 v0, 0x0

    :goto_0
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dialogLayout:Landroid/view/View;

    const p3, 0x7f0800c5

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;

    int-to-float p3, p2

    invoke-virtual {p1, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/RadiusIndicator;->setRadius(F)V

    .line 182
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    mul-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->setCurrentEraserRadius(I)V

    return-void

    const/4 v0, 0x0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
