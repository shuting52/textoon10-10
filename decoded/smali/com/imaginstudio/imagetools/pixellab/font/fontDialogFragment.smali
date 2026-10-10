.class public Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "fontDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;
    }
.end annotation


# instance fields
.field fo:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

.field private previewFonts:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

.field private previewText:Ljava/lang/String;

.field private titleStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

.field private view:Landroid/view/View;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getResultingFonts()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object p0

    return-object p0

    const/4 v0, 0x0
.end method

.method private getResultingFonts()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;
    .locals 3

    const/4 v2, 0x3

    .line 100
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getFontsIds()Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x3

    .line 125
    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewFonts:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    if-eqz p1, :cond_0

    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewText:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v5, 0x3

    .line 127
    const/4 v5, 0x0

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->dismiss()V

    .line 129
    const/4 v5, 0x2

    :cond_1
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 130
    const/4 v5, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v0, 0x7f0800e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->titleStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    .line 131
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const v0, 0x7f0801cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewFonts:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setFonts(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 132
    const/4 v5, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->updateText(Ljava/lang/String;)V

    .line 133
    const/4 v5, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {v1, v2, v3, v0}, Lcom/imaginstudio/imagetools/pixellab/font/FontDialogPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 134
    const/4 v5, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->titleStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->setDistributeEvenly(Z)V

    .line 135
    const/4 v5, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->titleStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void

    const/4 v1, 0x1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    .line 61
    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x2

    const p3, 0x7f0a002c

    .line 71
    const/4 v0, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x400

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 76
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p2, 0x7f0801cd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    .line 77
    const/4 v0, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p3, 0x7f0801ce

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setParentTouchInterceptor(Landroid/widget/ScrollView;)V

    .line 78
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p2, 0x7f0800e6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 79
    const/4 v0, 0x1

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    const p3, 0x7f0800e5

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 80
    const/4 v0, 0x2

    new-instance p3, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;

    invoke-direct {p3, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/4 v0, 0x3

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->view:Landroid/view/View;

    return-object p1

    const/4 v0, 0x0
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x2

    .line 112
    const/4 v0, 0x3

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    return-void

    const/4 v0, 0x0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x3

    .line 50
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 52
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 53
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    const/4 v0, 0x2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void

    const/4 v0, 0x0
.end method

.method public setInitParams(Ljava/lang/String;Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 1

    const/4 v0, 0x3

    .line 40
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewText:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->previewFonts:Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;

    return-void

    const/4 v0, 0x0
.end method

.method public setInterface(Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;)V
    .locals 1

    const/4 v0, 0x3

    .line 65
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment;->fo:Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;

    return-void

    const/4 v0, 0x0
.end method
