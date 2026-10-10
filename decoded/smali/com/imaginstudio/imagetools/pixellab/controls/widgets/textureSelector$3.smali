.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;
.super Ljava/lang/Object;
.source "textureSelector.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;-><init>(Landroid/content/Context;ZLcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;ZILcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

.field final synthetic val$forShape:Z

.field final synthetic val$scaleLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

.field final synthetic val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;ZLcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iput-boolean p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$forShape:Z

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$scaleLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    iput-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;IZ)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 75
    const/4 v0, 0x0

    iget-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$forShape:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSizeShape(I)I

    move-result p1

    goto :goto_0

    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x3

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/functions/uniformScale;->textureSize(I)I

    move-result p1

    .line 76
    const/4 v0, 0x0

    :goto_0
    const/4 v0, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$scaleLabel:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_label;->setValue(I)V

    .line 77
    const/4 v0, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$3;->val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    div-int/lit8 p1, p1, 0xa

    invoke-interface {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;->scaleChanged(I)V

    return-void

    const/4 v0, 0x0
.end method

.method public onStartTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method public onStopTrackingTouch(Lcom/imaginstudio/imagetools/pixellab/controls/SeekBar/DiscreteSeekBar;)V
    .locals 1

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
