.class public Lcom/facebook/ads/AdChoicesView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/ads/NativeAd;

.field private final c:F

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/AdChoicesView;->d:Z

    iput-object p1, p0, Lcom/facebook/ads/AdChoicesView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/AdChoicesView;->b:Lcom/facebook/ads/NativeAd;

    sget p1, Lcom/facebook/ads/internal/q/a/v;->b:F

    iput p1, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->a()Lcom/facebook/ads/internal/adapters/ab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ab;->h()Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/facebook/ads/AdChoicesView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdChoicesText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/AdChoicesView;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "AdChoices"

    iput-object p1, p0, Lcom/facebook/ads/AdChoicesView;->f:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->b:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdChoicesIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object p1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Lcom/facebook/ads/AdChoicesView$1;

    invoke-direct {v3, p0, p2}, Lcom/facebook/ads/AdChoicesView$1;-><init>(Lcom/facebook/ads/AdChoicesView;Lcom/facebook/ads/NativeAd;)V

    invoke-virtual {p0, v3}, Lcom/facebook/ads/AdChoicesView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/ads/AdChoicesView;->a:Landroid/content/Context;

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/facebook/ads/AdChoicesView;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/facebook/ads/AdChoicesView;->a(Lcom/facebook/ads/NativeAd$Image;)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v2, 0xb

    invoke-virtual {p3}, Landroid/widget/ImageView;->getId()I

    move-result p3

    invoke-virtual {p2, v2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Image;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, 0x4

    int-to-float p3, p3

    iget v2, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    mul-float p3, p3, v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Image;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p3, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    mul-float p1, p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput-boolean v0, p0, Lcom/facebook/ads/AdChoicesView;->d:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Z

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/AdChoicesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xf

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/facebook/ads/AdChoicesView;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    const p2, -0x423e37

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Lcom/facebook/ads/internal/q/a/i;->m:Lcom/facebook/ads/internal/q/a/i;

    invoke-static {p0, p1}, Lcom/facebook/ads/internal/q/a/i;->a(Landroid/view/View;Lcom/facebook/ads/internal/q/a/i;)V

    iget-object p1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    sget-object p2, Lcom/facebook/ads/internal/q/a/i;->m:Lcom/facebook/ads/internal/q/a/i;

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/q/a/i;->a(Landroid/view/View;Lcom/facebook/ads/internal/q/a/i;)V

    return-void
.end method

.method private a(Lcom/facebook/ads/NativeAd$Image;)Landroid/widget/ImageView;
    .locals 7

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/AdChoicesView;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xf

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v2, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1, v0}, Lcom/facebook/ads/NativeAd;->downloadAndDisplayImage(Lcom/facebook/ads/NativeAd$Image;Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private a()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/facebook/ads/AdChoicesView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/facebook/ads/AdChoicesView;->c:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/ads/AdChoicesView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/AdChoicesView;->d:Z

    new-instance v3, Lcom/facebook/ads/AdChoicesView$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/facebook/ads/AdChoicesView$2;-><init>(Lcom/facebook/ads/AdChoicesView;II)V

    new-instance v4, Lcom/facebook/ads/AdChoicesView$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/facebook/ads/AdChoicesView$3;-><init>(Lcom/facebook/ads/AdChoicesView;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, v3}, Lcom/facebook/ads/AdChoicesView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/AdChoicesView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/ads/AdChoicesView;->d:Z

    return p0
.end method

.method static synthetic a(Lcom/facebook/ads/AdChoicesView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/AdChoicesView;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/AdChoicesView;)Lcom/facebook/ads/NativeAd;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdChoicesView;->b:Lcom/facebook/ads/NativeAd;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/AdChoicesView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdChoicesView;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/AdChoicesView;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/AdChoicesView;->a()V

    return-void
.end method

.method static synthetic e(Lcom/facebook/ads/AdChoicesView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/AdChoicesView;->e:Landroid/widget/TextView;

    return-object p0
.end method
