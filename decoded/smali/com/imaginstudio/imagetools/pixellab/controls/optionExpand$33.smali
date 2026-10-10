.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;
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

    .line 867
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;->val$toggleablePanel:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 871
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;->val$toggleablePanel:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x3

    const/4 v2, 0x0

    goto :goto_0

    const/4 v3, 0x0

    :cond_0
    const/4 v3, 0x1

    const/16 v2, 0x8

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 872
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$33;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quoteEffect:Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/effects/noise_bg;->setVisibility(I)V

    return-void

    const/4 v1, 0x3
.end method
