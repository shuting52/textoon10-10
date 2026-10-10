.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;
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

.field final synthetic val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    .line 3805
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;->val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3808
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;->val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$203;->val$selector:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {p1, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setBold(II)V

    return-void

    const/4 v0, 0x2
.end method
