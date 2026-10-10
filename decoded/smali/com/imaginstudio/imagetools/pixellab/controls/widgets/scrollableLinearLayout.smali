.class public Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;
.super Landroid/widget/HorizontalScrollView;
.source "scrollableLinearLayout.java"


# instance fields
.field addHere:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->init()V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 30
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->addHere:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v1, 0x1
.end method

.method init()V
    .locals 3

    const/4 v2, 0x1

    .line 26
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-static {v0, v1, p0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f080046

    .line 27
    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/scrollableLinearLayout;->addHere:Landroid/widget/LinearLayout;

    return-void

    const/4 v0, 0x2
.end method
