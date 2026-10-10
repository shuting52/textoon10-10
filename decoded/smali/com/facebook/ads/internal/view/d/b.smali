.class public Lcom/facebook/ads/internal/view/d/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/d/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/facebook/ads/internal/m/c;

.field private final g:Lcom/facebook/ads/internal/adapters/ad;

.field private final h:Ljava/lang/String;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Lcom/facebook/ads/internal/view/a$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/facebook/ads/internal/view/b/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/facebook/ads/internal/view/b/a$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/facebook/ads/internal/q/a/v;->b:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/d/b;->b:I

    sget v0, Lcom/facebook/ads/internal/q/a/v;->b:F

    const/high16 v1, 0x42900000    # 72.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/d/b;->c:I

    sget v0, Lcom/facebook/ads/internal/q/a/v;->b:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/d/b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/adapters/ad;Lcom/facebook/ads/internal/view/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/d/b;->f:Lcom/facebook/ads/internal/m/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    iput-object p4, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/ad;->c()[B

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/j/c;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b;->h:Ljava/lang/String;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/d/b;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/a$a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    return-object p0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/d/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/m/c;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/b;->f:Lcom/facebook/ads/internal/m/c;

    return-object p0
.end method

.method static synthetic e(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/adapters/ad;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    return-object p0
.end method

.method static synthetic f(Lcom/facebook/ads/internal/view/d/b;)Lcom/facebook/ads/internal/view/b/a;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/view/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    sget-object v1, Lcom/facebook/ads/internal/view/e/b/z;->c:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private h()Landroid/view/View;
    .locals 15

    new-instance v6, Lcom/facebook/ads/internal/view/component/i;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->n()Lcom/facebook/ads/internal/adapters/j;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/component/i;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/j;ZZZ)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/ad;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v3, v2}, Lcom/facebook/ads/internal/view/component/i;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/facebook/ads/internal/view/component/i;->setAlignment(I)V

    new-instance v1, Lcom/facebook/ads/internal/view/component/a;

    iget-object v8, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    sget-object v4, Lcom/facebook/ads/internal/view/e/b/z;->e:Lcom/facebook/ads/internal/view/e/b/z;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/view/e/b/z;->a()Ljava/lang/String;

    move-result-object v11

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/ad;->n()Lcom/facebook/ads/internal/adapters/j;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/ads/internal/view/d/b;->f:Lcom/facebook/ads/internal/m/c;

    iget-object v14, p0, Lcom/facebook/ads/internal/view/d/b;->j:Lcom/facebook/ads/internal/view/a$a;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/facebook/ads/internal/view/component/a;-><init>(Landroid/content/Context;ZZLjava/lang/String;Lcom/facebook/ads/internal/adapters/j;Lcom/facebook/ads/internal/m/c;Lcom/facebook/ads/internal/view/a$a;)V

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/ad;->q()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/adapters/ad;->p()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/ad;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v4, v5, v7, v8}, Lcom/facebook/ads/internal/view/component/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v4, Lcom/facebook/ads/internal/view/component/e;

    iget-object v5, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/facebook/ads/internal/view/component/e;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/facebook/ads/internal/view/component/e;->setRadius(I)V

    new-instance v5, Lcom/facebook/ads/internal/view/b/d;

    invoke-direct {v5, v4}, Lcom/facebook/ads/internal/view/b/d;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v5}, Lcom/facebook/ads/internal/view/b/d;->a()Lcom/facebook/ads/internal/view/b/d;

    move-result-object v5

    iget-object v7, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v7}, Lcom/facebook/ads/internal/adapters/ad;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/facebook/ads/internal/view/b/d;->a(Ljava/lang/String;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/facebook/ads/internal/view/d/b;->c:I

    sget v7, Lcom/facebook/ads/internal/view/d/b;->c:I

    invoke-direct {v0, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/facebook/ads/internal/view/d/b;->d:I

    sget v4, Lcom/facebook/ads/internal/view/d/b;->d:I

    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5
.end method

.method private i()Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/facebook/ads/internal/view/d/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/ad;->o()Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/facebook/ads/internal/view/d/b;->b:I

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/internal/view/d/c;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method private j()Landroid/view/View;
    .locals 10

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b$1;-><init>(Lcom/facebook/ads/internal/view/d/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->l:Lcom/facebook/ads/internal/view/b/a$b;

    new-instance v0, Lcom/facebook/ads/internal/view/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/d/b;->l:Lcom/facebook/ads/internal/view/b/a$b;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/b/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {}, Lcom/facebook/ads/internal/q/c/b;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/internal/view/d/b;->h:Ljava/lang/String;

    const-string v7, "text/html"

    const-string v8, "utf-8"

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/internal/view/b/a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b;->b()Lcom/facebook/ads/internal/view/d/b$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/facebook/ads/internal/view/d/b$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->a:Lcom/facebook/ads/internal/view/d/b$a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->b:Lcom/facebook/ads/internal/view/d/b$a;

    return-object v0

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/view/d/b$a;->c:Lcom/facebook/ads/internal/view/d/b$a;

    return-object v0
.end method

.method public c()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/internal/view/d/b$a;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/d/b;->b()Lcom/facebook/ads/internal/view/d/b$a;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/d/b$3;->a:[I

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/d/b$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->h()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->i()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/d/b;->j()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/ad;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/facebook/ads/internal/q/c/e;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/d/b;->e:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/q/c/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    new-instance v0, Lcom/facebook/ads/internal/view/d/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/d/b$2;-><init>(Lcom/facebook/ads/internal/view/d/b;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/q/c/e;->a(Lcom/facebook/ads/internal/q/c/e$a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->i:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/ads/internal/view/d/b;->g:Lcom/facebook/ads/internal/adapters/ad;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/adapters/ad;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/internal/q/c/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->k:Lcom/facebook/ads/internal/view/b/a;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/d/b;->l:Lcom/facebook/ads/internal/view/b/a$b;

    :cond_0
    return-void
.end method
