.class Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;


# direct methods
.method private constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 278
    const/4 v1, 0x0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    .line 280
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 281
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    const/4 v2, 0x2

    .line 257
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-ltz p1, :cond_3

    const/4 v2, 0x1

    if-lt p1, v0, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    const/4 v2, 0x3

    .line 262
    const/4 v2, 0x0

    :cond_0
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 264
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    .line 266
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 268
    const/4 v2, 0x3

    :goto_0
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v1, p1, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$300(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;II)V

    .line 270
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 271
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    const/4 v2, 0x0

    return-void

    :cond_3
    const/4 v2, 0x1

    :goto_1
    const/4 v2, 0x2

    return-void

    const/4 v0, 0x2
.end method

.method public onPageSelected(I)V
    .locals 5

    const/4 v4, 0x0

    .line 287
    const/4 v4, 0x1

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x2

    .line 288
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    .line 289
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0, p1, v1}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$300(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;II)V

    :cond_0
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 291
    const/4 v4, 0x2

    :goto_0
    const/4 v4, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v4, 0x0

    .line 292
    const/4 v4, 0x1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v2}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$200(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v4, 0x2

    const/4 v3, 0x1

    goto :goto_1

    const/4 v4, 0x3

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v4, 0x2

    .line 294
    const/4 v4, 0x3

    :cond_2
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 295
    const/4 v4, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout$InternalViewPagerListener;->this$0:Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;->access$400(Lcom/imaginstudio/imagetools/pixellab/GoogleTabStrip/SlidingTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    const/4 v4, 0x3

    return-void

    const/4 v0, 0x0
.end method
