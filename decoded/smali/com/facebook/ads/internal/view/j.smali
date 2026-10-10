.class public Lcom/facebook/ads/internal/view/j;
.super Lcom/facebook/ads/internal/view/m;


# instance fields
.field private final f:Lcom/facebook/ads/internal/q/a/s;

.field private g:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/view/i$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/ads/internal/view/component/d;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/facebook/ads/internal/r/a;

.field private o:Lcom/facebook/ads/internal/r/a$a;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/m;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;)V

    new-instance p1, Lcom/facebook/ads/internal/q/a/s;

    invoke-direct {p1}, Lcom/facebook/ads/internal/q/a/s;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/q/a/s;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    return-object p0
.end method

.method private a(Lcom/facebook/ads/internal/adapters/v;)V
    .locals 11

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->j()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->p:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->k()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/view/j;->q:I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/v;->d()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/adapters/d;

    iget-object v9, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    new-instance v10, Lcom/facebook/ads/internal/view/i$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/d;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/d;->e()Ljava/lang/String;

    move-result-object v8

    move-object v1, v10

    move v2, v0

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/internal/view/i$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/r/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/j;)Lcom/facebook/ads/internal/view/component/d;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/d;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 0

    const-string p2, "ad_data_bundle"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/adapters/v;

    invoke-super {p0, p3, p1}, Lcom/facebook/ads/internal/view/m;->a(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/adapters/v;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/j;->a(Lcom/facebook/ads/internal/adapters/v;)V

    invoke-virtual {p3}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/j;->setUpLayout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/ads/internal/view/j;->i:J

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/j;->setUpLayout(I)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/facebook/ads/internal/view/m;->onDestroy()V

    iget-wide v0, p0, Lcom/facebook/ads/internal/view/j;->i:J

    sget-object v2, Lcom/facebook/ads/internal/j/a$a;->c:Lcom/facebook/ads/internal/j/a$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/j;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/j/a;->a(JLcom/facebook/ads/internal/j/a$a;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/q/a/s;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/m/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/m/c;->h(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/j;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    return-void
.end method

.method public setUpLayout(I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    const/16 v4, 0x30

    goto :goto_0

    :goto_1
    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    if-ne v1, v2, :cond_1

    const/high16 v9, 0x42000000    # 32.0f

    mul-float v9, v9, v3

    float-to-int v9, v9

    sub-int v9, v4, v9

    div-int/lit8 v6, v6, 0x2

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x8

    mul-int/lit8 v9, v4, 0x4

    move/from16 v18, v4

    move/from16 v17, v6

    move/from16 v19, v9

    const/16 v20, 0x0

    goto :goto_2

    :cond_1
    const/high16 v4, 0x42f00000    # 120.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    sub-int/2addr v6, v4

    mul-float v4, v3, v7

    float-to-int v4, v4

    mul-int/lit8 v9, v4, 0x2

    move/from16 v18, v4

    move/from16 v17, v6

    move/from16 v19, v9

    const/16 v20, 0x1

    :goto_2
    new-instance v4, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v6, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v6, Lcom/facebook/ads/internal/view/i;

    iget-object v11, v0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    iget-object v12, v0, Lcom/facebook/ads/internal/view/j;->b:Lcom/facebook/ads/internal/m/c;

    iget-object v13, v0, Lcom/facebook/ads/internal/view/j;->f:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/j;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v14

    if-ne v1, v2, :cond_2

    iget-object v9, v0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/adapters/j;

    :goto_3
    move-object v15, v9

    goto :goto_4

    :cond_2
    iget-object v9, v0, Lcom/facebook/ads/internal/view/j;->e:Lcom/facebook/ads/internal/adapters/j;

    goto :goto_3

    :goto_4
    iget-object v9, v0, Lcom/facebook/ads/internal/view/j;->h:Ljava/lang/String;

    move-object v10, v6

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v20}, Lcom/facebook/ads/internal/view/i;-><init>(Ljava/util/List;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/q/a/s;Lcom/facebook/ads/internal/view/a$a;Lcom/facebook/ads/internal/adapters/j;Ljava/lang/String;IIIZ)V

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v8, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    iget-object v6, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v6, Lcom/facebook/ads/internal/view/j$1;

    invoke-direct {v6, v0}, Lcom/facebook/ads/internal/view/j$1;-><init>(Lcom/facebook/ads/internal/view/j;)V

    iput-object v6, v0, Lcom/facebook/ads/internal/view/j;->o:Lcom/facebook/ads/internal/r/a$a;

    new-instance v6, Lcom/facebook/ads/internal/r/a;

    iget-object v9, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v0, Lcom/facebook/ads/internal/view/j;->o:Lcom/facebook/ads/internal/r/a$a;

    invoke-direct {v6, v9, v2, v10}, Lcom/facebook/ads/internal/r/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/r/a$a;)V

    iput-object v6, v0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iget-object v6, v0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iget v9, v0, Lcom/facebook/ads/internal/view/j;->p:I

    invoke-virtual {v6, v9}, Lcom/facebook/ads/internal/r/a;->a(I)V

    iget-object v6, v0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    iget v9, v0, Lcom/facebook/ads/internal/view/j;->q:I

    invoke-virtual {v6, v9}, Lcom/facebook/ads/internal/r/a;->b(I)V

    if-ne v1, v2, :cond_4

    new-instance v6, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {v6}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    iget-object v9, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/SnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v6, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    new-instance v9, Lcom/facebook/ads/internal/view/j$2;

    invoke-direct {v9, v0, v4}, Lcom/facebook/ads/internal/view/j$2;-><init>(Lcom/facebook/ads/internal/view/j;Landroid/support/v7/widget/LinearLayoutManager;)V

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v4, Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/internal/view/j;->getContext()Landroid/content/Context;

    move-result-object v6

    if-ne v1, v2, :cond_3

    iget-object v2, v0, Lcom/facebook/ads/internal/view/j;->d:Lcom/facebook/ads/internal/adapters/j;

    goto :goto_5

    :cond_3
    iget-object v2, v0, Lcom/facebook/ads/internal/view/j;->e:Lcom/facebook/ads/internal/adapters/j;

    :goto_5
    iget-object v9, v0, Lcom/facebook/ads/internal/view/j;->k:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v4, v6, v2, v9}, Lcom/facebook/ads/internal/view/component/d;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/j;I)V

    iput-object v4, v0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v7, v7, v3

    float-to-int v4, v7

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41400000    # 12.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/view/component/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v2, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->m:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/facebook/ads/internal/view/j;->l:Lcom/facebook/ads/internal/view/component/d;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    iget-object v2, v0, Lcom/facebook/ads/internal/view/j;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v8, v1}, Lcom/facebook/ads/internal/view/j;->a(Landroid/view/View;ZI)V

    iget-object v1, v0, Lcom/facebook/ads/internal/view/j;->n:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/r/a;->a()V

    return-void
.end method
