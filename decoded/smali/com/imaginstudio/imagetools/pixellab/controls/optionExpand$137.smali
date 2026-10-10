.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->addControlsForMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

.field final synthetic val$selectTexture:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V
    .locals 0

    .line 2723
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;->val$selectTexture:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2726
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->removeTexture()V

    .line 2727
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$137;->val$selectTexture:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;-><init>()V

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->setImagePath(Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;)V

    return-void

    const/4 v1, 0x1
.end method
