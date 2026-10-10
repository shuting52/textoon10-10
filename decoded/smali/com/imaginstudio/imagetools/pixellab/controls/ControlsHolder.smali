.class public Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;
.super Landroid/support/v4/app/Fragment;
.source "ControlsHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bgButton:Landroid/widget/ImageButton;

.field bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

.field buttonArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field effectsButton:Landroid/widget/ImageButton;

.field pageAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

.field pager:Landroid/support/v4/view/ViewPager;

.field selectedColor:I

.field shapeButton:Landroid/widget/ImageButton;

.field shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

.field textButton:Landroid/widget/ImageButton;

.field texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

.field themesButton:Landroid/widget/ImageButton;

.field themesTab:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

.field unselectedColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "#b6b6b6"

    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    const-string v0, "#0079ff"

    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$100(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/textContainer;
    .locals 1

    const/4 v0, 0x2

    .line 24
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getTextContainer()Lcom/imaginstudio/imagetools/pixellab/textContainer;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)Lcom/imaginstudio/imagetools/pixellab/MainActivity;
    .locals 1

    const/4 v0, 0x1

    .line 24
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    return-object p0

    const/4 v0, 0x0
.end method

.method private getFragments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 150
    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    const/4 v2, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    .line 152
    const/4 v2, 0x3

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    .line 153
    const/4 v2, 0x0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    .line 154
    const/4 v2, 0x1

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;-><init>()V

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    .line 155
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v2, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;

    invoke-direct {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/EffectsTab;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    const/4 v0, 0x2
.end method

.method private getSelectedShape()Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;
    .locals 3

    const/4 v2, 0x0

    .line 190
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->shapes:Ljava/util/Map;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id_shape:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/ShapeComponent;

    goto :goto_0

    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    return-object v0

    const/4 v0, 0x2
.end method

.method private getTextContainer()Lcom/imaginstudio/imagetools/pixellab/textContainer;
    .locals 2

    const/4 v1, 0x0

    .line 193
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    return-object v0

    const/4 v1, 0x1
.end method

.method private initTabsLogic(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x3

    .line 100
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;

    invoke-direct {v0, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public getTab()I
    .locals 2

    const/4 v1, 0x3

    .line 70
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method public getTextStylesButtonRegion()Landroid/graphics/Rect;
    .locals 2

    const/4 v1, 0x2

    .line 51
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->getTextStylesButtonRegion()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x1
.end method

.method public informBgTypeChanged(Z)V
    .locals 2

    const/4 v1, 0x0

    .line 64
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 65
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgtab:Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/BgTab;->toggleCropButton(Z)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public informPresetsChanged()V
    .locals 2

    const/4 v1, 0x2

    .line 168
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 169
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesTab:Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/ThemesTab;->updateCustomProjectsVisibility()V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public informShapeSelectionChanged(ZI)V
    .locals 2

    const/4 v1, 0x0

    .line 58
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 59
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapestab:Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/ShapesTab;->togglePanels(ZI)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public informTextSelectionChanged(Z)V
    .locals 2

    const/4 v1, 0x2

    .line 45
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->texttab:Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/TextTab;->togglePanels(Z)V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    .line 177
    const/4 v2, 0x1

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 178
    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 177
    const/4 v2, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    goto :goto_0

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x2

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 180
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void

    const/4 v0, 0x2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x2

    .line 165
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    const/4 v0, 0x2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x1

    .line 76
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "currTab"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const v0, 0x7f0a0030

    .line 77
    const/4 v2, 0x3

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 79
    const/4 v2, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pageAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

    const p2, 0x7f08025b

    .line 80
    const/4 v2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroid/support/v4/view/ViewPager;

    .line 81
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pageAdapter:Lcom/imaginstudio/imagetools/pixellab/controls/TabsAdapter;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    const/4 v2, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p2, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const p2, 0x7f0801f5

    .line 83
    const/4 v2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    const p2, 0x7f0801d1

    .line 84
    const/4 v2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    const p2, 0x7f0801ab

    .line 85
    const/4 v2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    const p2, 0x7f08006f

    .line 86
    const/4 v2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    const p2, 0x7f0800b6

    .line 87
    const/4 v2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    .line 88
    const/4 v2, 0x2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    .line 89
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v2, 0x0

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v2, 0x2

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const/4 v2, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->initTabsLogic(Landroid/view/View;)V

    .line 95
    const/4 v2, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->buttonArrayList:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->underLineTab(Landroid/widget/ImageButton;)V

    return-object p1

    const/4 v0, 0x2
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 186
    const/4 v1, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->callback:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    .line 187
    const/4 v1, 0x1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void

    const/4 v1, 0x1
.end method

.method public underLineTab(Landroid/widget/ImageButton;)V
    .locals 3

    const/4 v2, 0x3

    .line 143
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->themesButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_0

    const/4 v2, 0x2

    :cond_0
    const/4 v2, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 144
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->textButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_1

    const/4 v2, 0x3

    :cond_1
    const/4 v2, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 145
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->shapeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_2

    const/4 v2, 0x0

    :cond_2
    const/4 v2, 0x1

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_2
    const/4 v2, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 146
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->bgButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_3

    const/4 v2, 0x1

    :cond_3
    const/4 v2, 0x2

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_3
    const/4 v2, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 147
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->effectsButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->selectedColor:I

    goto :goto_4

    const/4 v2, 0x2

    :cond_4
    const/4 v2, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->unselectedColor:I

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    return-void

    const/4 v0, 0x2
.end method
