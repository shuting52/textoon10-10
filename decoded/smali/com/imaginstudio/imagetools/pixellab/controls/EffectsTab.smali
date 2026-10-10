.class public Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;
.super Landroid/support/v4/app/Fragment;
.source "EffectsTab.java"


# instance fields
.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method addClickListenersTo(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 42
    const/4 v3, 0x2

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x0

    .line 43
    const/4 v3, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 44
    const/4 v3, 0x2

    instance-of v2, v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    .line 45
    const/4 v3, 0x0

    check-cast v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;

    .line 46
    const/4 v3, 0x1

    new-instance v2, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab$1;

    invoke-direct {v2, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/option_ui;)V

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

    .line 26
    const/4 v0, 0x3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x1

    const p3, 0x7f0a0031

    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x2

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;->v:Landroid/view/View;

    .line 35
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;->v:Landroid/view/View;

    const p2, 0x7f0800b7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;->addClickListenersTo(Landroid/view/ViewGroup;)V

    .line 37
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;->v:Landroid/view/View;

    return-object p1

    const/4 v1, 0x1
.end method
