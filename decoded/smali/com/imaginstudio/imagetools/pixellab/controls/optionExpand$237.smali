.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;
.super Ljava/lang/Object;
.source "optionExpand.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$toggleablePanel:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 4287
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;->val$toggleablePanel:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 4291
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;->val$toggleablePanel:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v1, 0x3

    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    const/16 v0, 0x8

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4292
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$237;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$300(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->set3dEnabled(Z)V

    return-void

    const/4 v1, 0x1
.end method
