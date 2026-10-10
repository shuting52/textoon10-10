.class public Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;,
        Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;,
        Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private mContentDescriptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDistributeEvenly:Z

.field private final mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private mTitleOffset:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 84
    invoke-virtual {p0, p2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->setFillViewport(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTitleOffset:I

    .line 88
    new-instance p2, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-direct {p2, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    .line 89
    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 40
    const/4 v0, 0x1

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$300(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;II)V
    .locals 1

    const/4 v0, 0x3

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->scrollToTab(II)V

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1

    const/4 v0, 0x2

    .line 40
    const/4 v0, 0x3

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object p0

    const/4 v0, 0x0
.end method

.method static synthetic access$500(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1

    const/4 v0, 0x1

    .line 40
    const/4 v0, 0x2

    iget-object p0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0

    const/4 v0, 0x0
.end method

.method private populateTabStrip()V
    .locals 10

    const/4 v9, 0x0

    .line 178
    const/4 v9, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 179
    const/4 v9, 0x2

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabClickListener;-><init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$1;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 181
    const/4 v9, 0x3

    :goto_0
    const/4 v9, 0x0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    const/4 v9, 0x1

    .line 185
    const/4 v9, 0x2

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    const/4 v9, 0x3

    .line 187
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 189
    const/4 v9, 0x1

    iget v6, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabViewTextViewId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    const/4 v9, 0x2

    :cond_0
    const/4 v9, 0x3

    move-object v5, v2

    move-object v6, v5

    :goto_1
    const/4 v9, 0x0

    if-nez v5, :cond_1

    const/4 v9, 0x1

    .line 193
    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    :cond_1
    const/4 v9, 0x3

    if-nez v6, :cond_2

    const/4 v9, 0x0

    .line 196
    const/4 v9, 0x1

    const-class v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v9, 0x2

    .line 197
    const/4 v9, 0x3

    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    .line 200
    const/4 v9, 0x0

    :cond_2
    const/4 v9, 0x1

    iget-boolean v7, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mDistributeEvenly:Z

    if-eqz v7, :cond_3

    const/4 v9, 0x2

    .line 201
    const/4 v9, 0x3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    const/4 v9, 0x0

    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 203
    const/4 v9, 0x1

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 206
    const/4 v9, 0x2

    :cond_3
    const/4 v9, 0x3

    invoke-virtual {v0, v4}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v9, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const/4 v9, 0x1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    const/4 v9, 0x2

    .line 210
    const/4 v9, 0x3

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    const/4 v9, 0x0

    :cond_4
    const/4 v9, 0x1

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v6, v5}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->addView(Landroid/view/View;)V

    .line 214
    const/4 v9, 0x2

    iget-object v6, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v4, v6, :cond_5

    const/4 v9, 0x3

    const/4 v6, 0x1

    .line 215
    const/4 v9, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    const/4 v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    const/4 v9, 0x2

    :cond_6
    const/4 v9, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method private scrollToTab(II)V
    .locals 2

    const/4 v1, 0x1

    .line 234
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-ltz p1, :cond_4

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    .line 239
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 241
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    const/4 v1, 0x3

    if-lez p2, :cond_2

    const/4 v1, 0x0

    .line 245
    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 v1, 0x3

    const/4 p1, 0x0

    .line 248
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    const/4 v1, 0x1

    return-void

    :cond_4
    const/4 v1, 0x2

    :goto_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x1

    .line 156
    const/4 v4, 0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 157
    const/4 v4, 0x3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 158
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 159
    const/4 v4, 0x1

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 160
    const/4 v4, 0x2

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/4 v4, 0x3

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 164
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    const v3, 0x101030e

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 166
    const/4 v4, 0x1

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    const/4 v4, 0x2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le p1, v1, :cond_0

    const/4 v4, 0x3

    .line 168
    const/4 v4, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    const/4 v4, 0x1

    const/high16 p1, 0x41800000    # 16.0f

    .line 171
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, p1

    float-to-int p1, v1

    .line 172
    const/4 v4, 0x3

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0

    const/4 v0, 0x0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v2, 0x1

    .line 226
    const/4 v2, 0x2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 228
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 229
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    .line 221
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setCustomTabColorizer(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabColorizer;)V
    .locals 2

    const/4 v1, 0x3

    .line 100
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->setCustomTabColorizer(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$TabColorizer;)V

    return-void

    const/4 v1, 0x1
.end method

.method public setCustomTabView(II)V
    .locals 1

    const/4 v0, 0x2

    .line 133
    const/4 v0, 0x3

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabViewLayoutId:I

    .line 134
    const/4 v0, 0x0

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabViewTextViewId:I

    return-void

    const/4 v0, 0x0
.end method

.method public setDistributeEvenly(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 104
    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mDistributeEvenly:Z

    return-void

    const/4 v0, 0x0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 123
    const/4 v0, 0x2

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void

    const/4 v0, 0x0
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 2

    const/4 v1, 0x0

    .line 112
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void

    const/4 v1, 0x1
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    const/4 v2, 0x3

    .line 142
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mTabStrip:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->removeAllViews()V

    .line 144
    const/4 v2, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 146
    const/4 v2, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 147
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    const/4 v2, 0x1

    return-void

    const/4 v0, 0x2
.end method
