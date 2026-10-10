.class Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/BannerVisibilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BannerVisibilityChecker"
.end annotation


# instance fields
.field private final mClipRect:Landroid/graphics/Rect;

.field private mMinVisibleDips:I

.field private mMinVisibleMillis:I

.field private mStartTimeMillis:J


# direct methods
.method constructor <init>(II)V
    .locals 2

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 230
    iput-wide v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    .line 236
    iput p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleDips:I

    .line 237
    iput p2, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleMillis:I

    return-void
.end method


# virtual methods
.method hasBeenVisibleYet()Z
    .locals 5

    .line 241
    iget-wide v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasRequiredTimeElapsed()Z
    .locals 8

    .line 252
    invoke-virtual {p0}, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->hasBeenVisibleYet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    sub-long v6, v2, v4

    iget v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleMillis:I

    int-to-long v2, v0

    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isVisible(Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 269
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 284
    :cond_2
    iget-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 285
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 284
    invoke-static {p1, v1}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p1

    .line 286
    iget-object v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 287
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 286
    invoke-static {v1, p2}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result p2

    mul-int p1, p1, p2

    int-to-long p1, p1

    .line 290
    iget v1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mMinVisibleDips:I

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v0
.end method

.method setStartTimeMillis()V
    .locals 2

    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityChecker;->mStartTimeMillis:J

    return-void
.end method
