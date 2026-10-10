.class public Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;
.super Landroid/support/v4/app/Fragment;
.source "TextTab.java"


# instance fields
.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method addClickListenersTo(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 52
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x3

    .line 53
    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 54
    const/4 v3, 0x1

    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    .line 55
    const/4 v3, 0x3

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    .line 56
    const/4 v3, 0x0

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;

    invoke-direct {v2, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

    invoke-virtual {v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setActionEvent(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/4 v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v3, 0x2

    :cond_1
    const/4 v3, 0x3

    return-void

    const/4 v1, 0x3
.end method

.method public getTextStylesButtonRegion()Landroid/graphics/Rect;
    .locals 6

    const/4 v5, 0x1

    .line 29
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const v1, 0x7f08024e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    const/4 v1, 0x2

    .line 31
    const/4 v5, 0x0

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 32
    const/4 v5, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 33
    const/4 v5, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 34
    const/4 v5, 0x3

    aget v0, v1, v4

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2

    :cond_0
    const/4 v5, 0x0

    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    const/4 v1, 0x1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x2

    .line 26
    const/4 v0, 0x3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    const/4 p3, 0x0

    const v0, 0x7f0a0035

    .line 43
    const/4 v1, 0x2

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    .line 44
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const p2, 0x7f0801ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 45
    const/4 v1, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const v0, 0x7f0801eb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    .line 47
    const/4 v1, 0x2

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    .line 48
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget p1, p1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x0

    const/4 p3, 0x1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p3}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->togglePanels(Z)V

    .line 49
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    return-object p1

    const/4 v1, 0x1
.end method

.method public togglePanels(Z)V
    .locals 6

    const/4 v5, 0x0

    .line 69
    const/4 v5, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v5, 0x2

    .line 70
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const v1, 0x7f0801ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 71
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->v:Landroid/view/View;

    const v2, 0x7f0801eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const/4 v5, 0x1

    const/4 v4, 0x0

    goto :goto_0

    const/4 v5, 0x2

    :cond_0
    const/4 v5, 0x3

    const/16 v4, 0x8

    .line 72
    const/4 v5, 0x0

    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 73
    const/4 v5, 0x3

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    const/4 v5, 0x1

    return-void

    const/4 v1, 0x1
.end method
