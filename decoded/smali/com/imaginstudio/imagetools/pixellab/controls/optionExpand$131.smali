.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$131;
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

    .line 2652
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$131;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

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

    .line 2655
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$131;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    const v0, 0x7f080114

    if-ne p2, v0, :cond_0

    const/4 v1, 0x3

    const/4 p2, 0x1

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->setBezierMaskIn(Z)V

    return-void

    const/4 v1, 0x1
.end method
