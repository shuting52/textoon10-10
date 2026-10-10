.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;
.super Ljava/lang/Object;
.source "ImageEraseView.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ShapeObject/CustomPath$OnPathChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

.field final synthetic val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChanged(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 208
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$1;->val$listener:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;

    invoke-interface {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$OnMaskChange;->freeSelCountChanged(I)V

    return-void

    const/4 v1, 0x1
.end method
