.class Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;
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

.field final synthetic val$toggleablePanel_nonOblique:Landroid/widget/LinearLayout;

.field final synthetic val$toggleablePanel_oblique:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 2264
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->val$toggleablePanel_nonOblique:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->val$toggleablePanel_oblique:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const p1, 0x7f080146

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    const/4 v2, 0x1

    const p1, 0x7f08014f

    if-eq p2, p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    const/4 v2, 0x3

    .line 2269
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dViewType(I)V

    .line 2270
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->val$toggleablePanel_nonOblique:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2271
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->val$toggleablePanel_oblique:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v2, 0x0

    .line 2275
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->set3dViewType(I)V

    .line 2276
    const/4 v2, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->val$toggleablePanel_nonOblique:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2277
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/optionExpand$105;->val$toggleablePanel_oblique:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method
