.class public Lcom/facebook/ads/internal/view/component/c;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Lcom/facebook/ads/internal/view/component/b;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/n/e;Lcom/facebook/ads/internal/n/h;ZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lcom/facebook/ads/internal/view/component/c;->setVerticalGravity(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/internal/view/component/c;->setOrientation(I)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41700000    # 15.0f

    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v12, v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, v10

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-virtual {v7, v9, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/view/component/c;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v11, 0x40400000    # 3.0f

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Lcom/facebook/ads/internal/view/component/g;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/facebook/ads/internal/view/component/g;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/facebook/ads/internal/view/component/c;->a:Landroid/widget/ImageView;

    move/from16 v7, p5

    invoke-direct {v0, v2, v7}, Lcom/facebook/ads/internal/view/component/c;->a(ZI)I

    move-result v7

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v7, v7

    iget v12, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v12, v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v13

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {v11, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v11, v9, v9, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, v0, Lcom/facebook/ads/internal/view/component/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/internal/n/e;->i()Lcom/facebook/ads/internal/n/f;

    move-result-object v7

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/c;->a:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/facebook/ads/internal/n/e;->a(Lcom/facebook/ads/internal/n/f;Landroid/widget/ImageView;)V

    iget-object v7, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/facebook/ads/internal/view/component/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v12, p2

    invoke-direct {v4, v11, v12, v1}, Lcom/facebook/ads/internal/view/component/b;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/n/e;Lcom/facebook/ads/internal/n/h;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->b:Lcom/facebook/ads/internal/view/component/b;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v4, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v13, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, v10

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v4, v9, v9, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v10, v0, Lcom/facebook/ads/internal/view/component/c;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v10, v4}, Lcom/facebook/ads/internal/view/component/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x40c00000    # 6.0f

    mul-float v10, v10, v13

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v14, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v14, v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    iget v15, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v15, v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget v8, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v8, v8, v13

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v4, v10, v14, v15, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/internal/n/e;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/n/h;->f()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/n/h;->a()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/n/h;->e()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float v3, v3, v8

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/n/h;->g()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v3, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3e800000    # 0.25f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/internal/n/e;->h()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v3, v0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_1

    new-instance v2, Lcom/facebook/ads/internal/view/s;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/component/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/view/s;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/ads/internal/n/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/internal/view/s;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2, v1}, Lcom/facebook/ads/internal/view/p;->b(Landroid/widget/TextView;Lcom/facebook/ads/internal/n/h;)V

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/ads/internal/n/h;->i()I

    move-result v1

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/s;->setMinTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x50

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/view/s;->setGravity(I)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private a(ZI)I
    .locals 4

    add-int/lit8 p2, p2, -0x1e

    add-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v0

    int-to-double p1, p2

    mul-double p1, p1, v2

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method public getCallToActionView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/c;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/c;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/c;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/b;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/c;->b:Lcom/facebook/ads/internal/view/component/b;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/component/b;->getMinVisibleTitleCharacters()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/c;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method
