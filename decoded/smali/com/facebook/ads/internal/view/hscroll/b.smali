.class public Lcom/facebook/ads/internal/view/hscroll/b;
.super Lcom/facebook/ads/internal/view/hscroll/d;

# interfaces
.implements Lcom/facebook/ads/internal/view/hscroll/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/hscroll/b$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

.field private d:Lcom/facebook/ads/internal/view/hscroll/b$a;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/hscroll/d;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->e:I

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    iput v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    new-instance v1, Lcom/facebook/ads/internal/view/hscroll/c;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/hscroll/c;-><init>()V

    new-instance v2, Lcom/facebook/ads/internal/view/hscroll/a;

    invoke-direct {v2}, Lcom/facebook/ads/internal/view/hscroll/a;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/hscroll/c;Lcom/facebook/ads/internal/view/hscroll/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/hscroll/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->e:I

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    new-instance p2, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/c;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/hscroll/c;-><init>()V

    new-instance v1, Lcom/facebook/ads/internal/view/hscroll/a;

    invoke-direct {v1}, Lcom/facebook/ads/internal/view/hscroll/a;-><init>()V

    invoke-direct {p2, p1, v0, v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/hscroll/c;Lcom/facebook/ads/internal/view/hscroll/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/hscroll/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->e:I

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    new-instance p2, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    new-instance p3, Lcom/facebook/ads/internal/view/hscroll/c;

    invoke-direct {p3}, Lcom/facebook/ads/internal/view/hscroll/c;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/view/hscroll/a;

    invoke-direct {v0}, Lcom/facebook/ads/internal/view/hscroll/a;-><init>()V

    invoke-direct {p2, p1, p3, v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/hscroll/c;Lcom/facebook/ads/internal/view/hscroll/a;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/hscroll/b;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/view/hscroll/b;->setSaveEnabled(Z)V

    invoke-virtual {p0, p0}, Lcom/facebook/ads/internal/view/hscroll/b;->setSnapDelegate(Lcom/facebook/ads/internal/view/hscroll/d$a;)V

    return-void
.end method

.method private a(II)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->e:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->f:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->e:I

    iput p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->f:I

    iget-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->d:Lcom/facebook/ads/internal/view/hscroll/b$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->d:Lcom/facebook/ads/internal/view/hscroll/b$a;

    iget p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->e:I

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->f:I

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/internal/view/hscroll/b$a;->a(II)V

    :cond_1
    return-void
.end method

.method private b(I)I
    .locals 7

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_0
    if-le v4, p1, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    return p1

    :cond_0
    mul-int v4, v3, v0

    sub-int v4, v1, v4

    int-to-float v4, v4

    int-to-float v5, v3

    const v6, 0x3eaa7efa    # 0.333f

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v4, v4

    goto :goto_0

    :cond_1
    return v4
.end method


# virtual methods
.method public a(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->a:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    div-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method

.method protected a(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/view/hscroll/d;->a(IZ)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/hscroll/b;->a(II)V

    return-void
.end method

.method public getChildSpacing()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/view/hscroll/d;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3ff47ae1    # 1.91f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/hscroll/b;->b(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p2, p1

    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/internal/view/hscroll/b;->setMeasuredDimension(II)V

    iget p2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/hscroll/b;->setChildWidth(I)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    if-nez p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/hscroll/d;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setChildSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->h:I

    return-void
.end method

.method public setChildWidth(I)V
    .locals 5

    iput p1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/hscroll/b;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    iget v2, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/hscroll/b;->c:Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;

    iget v1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->g:I

    int-to-double v1, v1

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/view/hscroll/HScrollLinearLayoutManager;->a(D)V

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/view/hscroll/b;->a(IZ)V

    return-void
.end method

.method public setOnPageChangedListener(Lcom/facebook/ads/internal/view/hscroll/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/hscroll/b;->d:Lcom/facebook/ads/internal/view/hscroll/b$a;

    return-void
.end method
