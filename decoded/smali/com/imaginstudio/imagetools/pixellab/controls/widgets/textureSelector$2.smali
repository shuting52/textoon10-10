.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;
.super Ljava/lang/Object;
.source "textureSelector.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;->val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 58
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;->val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 59
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$2;->val$selectorInterface:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$textureSelectorInterface;->maintainChanged(Z)V

    :cond_0
    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method
