.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)V
    .locals 0

    .line 3962
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3965
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->freezeFullRedraw()V

    .line 3966
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    const v0, 0x7f08025e

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    const/4 p2, 0x1

    goto :goto_0

    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setSpaceWords(Z)V

    .line 3967
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->getLetterSpacing()I

    move-result p1

    .line 3968
    const/4 v1, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLetterSpacing(I)V

    .line 3969
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p2}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setLetterSpacing(I)V

    .line 3970
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$213;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->UnFreezeFullRedraw()V

    return-void

    const/4 v1, 0x1
.end method
