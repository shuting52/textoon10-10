.class Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;
.super Ljava/lang/Object;
.source "ControlsHolder.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->initTabsLogic(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    return-void

    const/4 v0, 0x0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public onPageSelected(I)V
    .locals 6

    const/4 v5, 0x3

    .line 113
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->underLineTab(Landroid/widget/ImageButton;)V

    .line 114
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v0, :cond_1

    const/4 v5, 0x2

    .line 115
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    if-eqz p1, :cond_4

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v5, 0x2

    .line 116
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    if-eq v0, v3, :cond_0

    const/4 v5, 0x0

    const/4 v1, 0x1

    :cond_0
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$000(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->getShapeType()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->togglePanels(ZI)V

    goto :goto_0

    const/4 v5, 0x2

    .line 119
    const/4 v5, 0x3

    :cond_1
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 v5, 0x1

    .line 120
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    if-eqz p1, :cond_4

    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v5, 0x0

    .line 121
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$100(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object v0

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    if-eq v0, v3, :cond_2

    const/4 v5, 0x2

    const/4 v1, 0x1

    :cond_2
    const/4 v5, 0x3

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->togglePanels(Z)V

    goto :goto_0

    const/4 v5, 0x0

    .line 123
    const/4 v5, 0x1

    :cond_3
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 v5, 0x3

    .line 124
    const/4 v5, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v5, 0x2

    .line 125
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->access$200(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->hasBitmapBg()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->toggleCropButton(Z)V

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method
