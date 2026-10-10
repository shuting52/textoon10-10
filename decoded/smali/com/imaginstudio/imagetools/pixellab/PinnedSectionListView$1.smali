.class Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 99
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 100
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 104
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-nez p3, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    const/4 v1, 0x3

    .line 108
    const/4 v1, 0x0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p4

    invoke-static {p1, p4}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    .line 111
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p4}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingTop()I

    move-result p4

    if-ne p1, p4, :cond_2

    const/4 v1, 0x1

    .line 113
    const/4 v1, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_0

    const/4 v1, 0x3

    .line 115
    const/4 v1, 0x0

    :cond_2
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1, p2, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    const/4 v1, 0x2

    .line 119
    const/4 v1, 0x3

    :cond_3
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result p1

    const/4 p4, -0x1

    if-le p1, p4, :cond_4

    const/4 v1, 0x1

    .line 121
    const/4 v1, 0x2

    iget-object p4, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p4, p1, p2, p3}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    const/4 v1, 0x3

    .line 123
    const/4 v1, 0x0

    :cond_4
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    :goto_0
    const/4 v1, 0x2

    return-void

    :cond_5
    const/4 v1, 0x3

    :goto_1
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v1, 0x2

    .line 91
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 92
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    const/4 v1, 0x2

    return-void

    const/4 v1, 0x1
.end method
