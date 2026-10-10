.class public Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;
.super Landroid/support/v4/app/Fragment;
.source "BgTab.java"


# instance fields
.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method addClickListenersTo(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 40
    const/4 v3, 0x1

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x3

    .line 41
    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 42
    const/4 v3, 0x1

    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    .line 43
    const/4 v3, 0x3

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    .line 44
    const/4 v3, 0x0

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab$1;

    invoke-direct {v2, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    const p3, 0x7f0a002f

    const/4 v0, 0x0

    .line 32
    const/4 v1, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    .line 33
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    const p2, 0x7f080071

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    .line 35
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    return-object p1

    const/4 v1, 0x1
.end method

.method public toggleCropButton(Z)V
    .locals 3

    const/4 v2, 0x3

    .line 55
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 56
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->v:Landroid/view/View;

    const v1, 0x7f080204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;->setClickEnabled(Z)V

    :cond_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method
