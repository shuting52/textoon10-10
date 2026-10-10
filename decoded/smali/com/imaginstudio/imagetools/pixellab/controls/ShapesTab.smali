.class public Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;
.super Landroid/support/v4/app/Fragment;
.source "ShapesTab.java"


# instance fields
.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method addClickListenersTo(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 44
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x0

    .line 45
    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 46
    const/4 v3, 0x2

    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 47
    const/4 v3, 0x0

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    .line 48
    const/4 v3, 0x1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab$1;

    invoke-direct {v2, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v3, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v3, 0x3

    :cond_1
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    .line 28
    const/4 v0, 0x3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    const p3, 0x7f0a0034

    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    .line 37
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const p2, 0x7f0801ae

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 38
    const/4 v1, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const p3, 0x7f0801ad

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    .line 40
    const/4 v1, 0x2

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    .line 41
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    return-object p1

    const/4 v1, 0x1
.end method

.method public togglePanels(ZI)V
    .locals 7

    const/4 v6, 0x1

    .line 59
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    if-eqz v0, :cond_7

    const/4 v6, 0x3

    .line 60
    const/4 v6, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v1, 0x7f0801ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    const/4 v6, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v2, 0x7f0801ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    const/4 v6, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f080228

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 63
    const/4 v6, 0x3

    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_GALLERY:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eq p2, v3, :cond_1

    const/4 v6, 0x0

    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_STICKER:I

    if-ne p2, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    const/4 v6, 0x2

    :cond_0
    const/4 v6, 0x3

    const/16 v3, 0x8

    goto :goto_1

    const/4 v6, 0x0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    const/4 v6, 0x2

    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    const/4 v6, 0x0

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f080219

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_BEZIER:I

    if-ne p2, v3, :cond_2

    const/4 v6, 0x1

    const/4 v3, 0x0

    goto :goto_2

    const/4 v6, 0x2

    :cond_2
    const/4 v6, 0x3

    const/16 v3, 0x8

    :goto_2
    const/4 v6, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f08021a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_SHAPE:I

    if-ne p2, v3, :cond_3

    const/4 v6, 0x2

    const/4 v3, 0x0

    goto :goto_3

    const/4 v6, 0x3

    :cond_3
    const/4 v6, 0x0

    const/16 v3, 0x8

    :goto_3
    const/4 v6, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const/4 v6, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->v:Landroid/view/View;

    const v3, 0x7f080218

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;->SHAPE_TYPE_ARROW:I

    if-ne p2, v3, :cond_4

    const/4 v6, 0x3

    const/4 p2, 0x0

    goto :goto_4

    const/4 v6, 0x0

    :cond_4
    const/4 v6, 0x1

    const/16 p2, 0x8

    :goto_4
    const/4 v6, 0x2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_5

    const/4 v6, 0x3

    const/4 p2, 0x0

    goto :goto_5

    const/4 v6, 0x0

    :cond_5
    const/4 v6, 0x1

    const/16 p2, 0x8

    .line 67
    const/4 v6, 0x2

    :goto_5
    const/4 v6, 0x3

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_6

    const/4 v6, 0x0

    goto :goto_6

    const/4 v6, 0x1

    :cond_6
    const/4 v6, 0x2

    const/16 v4, 0x8

    .line 68
    const/4 v6, 0x3

    :goto_6
    const/4 v6, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method
