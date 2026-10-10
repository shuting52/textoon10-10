.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;
.super Ljava/lang/Object;
.source "textureSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 49
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textureSelector;->textureSelect:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->performClick()Z

    return-void

    const/4 v0, 0x0
.end method
