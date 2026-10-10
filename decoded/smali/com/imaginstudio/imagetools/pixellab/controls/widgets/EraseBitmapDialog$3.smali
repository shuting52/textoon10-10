.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;
.super Ljava/lang/Object;
.source "EraseBitmapDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 131
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->eraseView:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;->masks:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;

    invoke-interface {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;->OnDoneErase(Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;)V

    .line 132
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;->dismiss()V

    return-void

    const/4 v1, 0x1
.end method
