.class public Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;,
        Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 88
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 131
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 144
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 88
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 131
    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 149
    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initView()V

    return-void
.end method

.method private clearTouchTarget()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    const/4 v0, 0x0

    .line 493
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 494
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 495
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 496
    const/4 v2, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method

.method private initView()V
    .locals 2

    const/4 v1, 0x1

    .line 153
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchSlop:I

    const/4 v0, 0x1

    .line 155
    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initShadow(Z)V

    return-void

    const/4 v1, 0x1
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 2

    const/4 v1, 0x2

    .line 517
    const/4 v1, 0x3

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 518
    const/4 v1, 0x1

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 520
    const/4 v1, 0x2

    :cond_0
    const/4 v1, 0x3

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result p0

    return p0

    const/4 v1, 0x1
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 4

    const/4 v3, 0x1

    .line 480
    const/4 v3, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 484
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 486
    const/4 v3, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 487
    const/4 v3, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 488
    const/4 v3, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 489
    const/4 v3, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    const/4 v1, 0x3
.end method

.method private performPinnedItemClick()Z
    .locals 9

    const/4 v8, 0x1

    .line 501
    const/4 v8, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v8, 0x3

    return v1

    .line 503
    const/4 v8, 0x0

    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v8, 0x2

    .line 504
    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    .line 505
    const/4 v8, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v4, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 506
    const/4 v8, 0x2

    invoke-virtual {p0, v1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz v4, :cond_1

    const/4 v8, 0x3

    .line 508
    const/4 v8, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 510
    const/4 v8, 0x1

    :cond_1
    const/4 v8, 0x2

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget v5, v1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-wide v6, v1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->id:J

    move-object v3, p0

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v0

    :cond_2
    const/4 v8, 0x3

    return v1

    const/4 v0, 0x0
.end method


# virtual methods
.method createPinnedShadow(I)V
    .locals 8

    const/4 v7, 0x1

    .line 189
    const/4 v7, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mRecycleSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    .line 190
    const/4 v7, 0x3

    iput-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mRecycleSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_0

    const/4 v7, 0x0

    .line 193
    const/4 v7, 0x1

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    invoke-direct {v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;-><init>()V

    .line 195
    const/4 v7, 0x2

    :cond_0
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v1, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 198
    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    if-nez v2, :cond_1

    const/4 v7, 0x1

    .line 200
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 201
    const/4 v7, 0x3

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const/4 v7, 0x0

    :cond_1
    const/4 v7, 0x1

    iget v3, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 205
    const/4 v7, 0x2

    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v3, :cond_2

    const/4 v7, 0x3

    const/high16 v3, 0x40000000    # 2.0f

    .line 209
    const/4 v7, 0x0

    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_3

    const/4 v7, 0x2

    move v2, v5

    .line 213
    const/4 v7, 0x3

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getListPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getListPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 214
    const/4 v7, 0x1

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 215
    const/4 v7, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    .line 216
    const/4 v7, 0x3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 217
    const/4 v7, 0x0

    iput v4, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    .line 220
    const/4 v7, 0x1

    iput-object v1, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 221
    const/4 v7, 0x2

    iput p1, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    .line 222
    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->id:J

    .line 225
    const/4 v7, 0x0

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    return-void

    const/4 v1, 0x3
.end method

.method destroyPinnedShadow()V
    .locals 2

    const/4 v1, 0x2

    .line 230
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 232
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mRecycleSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    const/4 v0, 0x0

    .line 233
    const/4 v1, 0x2

    iput-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    :cond_0
    const/4 v1, 0x3

    return-void

    const/4 v1, 0x1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x1

    .line 388
    const/4 v6, 0x2

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 390
    const/4 v6, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_2

    const/4 v6, 0x0

    .line 393
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getListPaddingLeft()I

    move-result v0

    .line 394
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getListPaddingTop()I

    move-result v1

    .line 395
    const/4 v6, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 398
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 400
    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_0

    const/4 v6, 0x2

    const/4 v4, 0x0

    goto :goto_0

    const/4 v6, 0x3

    :cond_0
    const/4 v6, 0x0

    iget v4, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    .line 401
    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    const/4 v6, 0x2

    add-int/2addr v3, v4

    .line 402
    const/4 v6, 0x3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v0

    .line 404
    const/4 v6, 0x0

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 405
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 407
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    const/4 v6, 0x3

    iget v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v0, :cond_1

    const/4 v6, 0x0

    .line 408
    const/4 v6, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 409
    const/4 v6, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 410
    const/4 v6, 0x3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 411
    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    .line 408
    const/4 v6, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 412
    const/4 v6, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 415
    const/4 v6, 0x3

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    const/4 v6, 0x1

    return-void

    const/4 v0, 0x2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x3

    .line 424
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 425
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 426
    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x3

    .line 428
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v3, :cond_0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v3, :cond_0

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 431
    const/4 v5, 0x3

    invoke-direct {p0, v3, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    .line 434
    const/4 v5, 0x1

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 435
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v0, v3, Landroid/graphics/PointF;->x:F

    .line 436
    const/4 v5, 0x3

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v1, v3, Landroid/graphics/PointF;->y:F

    .line 439
    const/4 v5, 0x0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 442
    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v3, :cond_5

    const/4 v5, 0x3

    .line 443
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-direct {p0, v3, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 444
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    const/4 v5, 0x3

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const/4 v5, 0x0

    .line 448
    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 449
    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->performPinnedItemClick()Z

    .line 450
    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    const/4 v5, 0x0

    :cond_2
    const/4 v5, 0x1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v5, 0x2

    .line 453
    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    const/4 v5, 0x0

    :cond_3
    const/4 v5, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const/4 v5, 0x2

    .line 456
    const/4 v5, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    const/4 v5, 0x0

    .line 459
    const/4 v5, 0x1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 460
    const/4 v5, 0x2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 461
    const/4 v5, 0x3

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 462
    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 465
    const/4 v5, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 466
    const/4 v5, 0x2

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 467
    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->clearTouchTarget()V

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const/4 v5, 0x1

    return v0

    .line 476
    const/4 v5, 0x2

    :cond_5
    const/4 v5, 0x3

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    const/4 v1, 0x1
.end method

.method ensureShadowForPosition(III)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    const/4 v1, 0x2

    .line 240
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    return-void

    .line 244
    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->position:I

    if-eq v0, p1, :cond_1

    const/4 v1, 0x3

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    .line 249
    const/4 v1, 0x1

    :cond_1
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_2

    const/4 v1, 0x3

    .line 250
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->createPinnedShadow(I)V

    :cond_2
    const/4 v1, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 255
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    const/4 v1, 0x3

    sub-int v0, p1, p2

    sub-int/2addr p3, v0

    .line 256
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result p1

    const/4 p3, -0x1

    const/4 v0, 0x0

    if-le p1, p3, :cond_4

    const/4 v1, 0x1

    sub-int/2addr p1, p2

    .line 259
    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 260
    const/4 v1, 0x3

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    .line 261
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    .line 262
    const/4 v1, 0x1

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez p1, :cond_3

    const/4 v1, 0x2

    .line 264
    const/4 v1, 0x3

    iget p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    const/4 v1, 0x0

    .line 267
    const/4 v1, 0x1

    :cond_3
    const/4 v1, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    const/4 v1, 0x3

    .line 271
    const/4 v1, 0x0

    :cond_4
    const/4 v1, 0x1

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mTranslateY:I

    const p1, 0x7fffffff

    .line 272
    const/4 v1, 0x2

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mSectionsDistanceY:I

    :cond_5
    const/4 v1, 0x3

    :goto_0
    const/4 v1, 0x0

    return-void

    const/4 v1, 0x1
.end method

.method findCurrentSectionPosition(I)I
    .locals 5

    const/4 v4, 0x2

    .line 297
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 299
    const/4 v4, 0x0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_0

    const/4 v4, 0x1

    return v2

    .line 301
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    .line 303
    const/4 v4, 0x1

    move-object v1, v0

    check-cast v1, Landroid/widget/SectionIndexer;

    .line 304
    const/4 v4, 0x2

    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    .line 305
    const/4 v4, 0x3

    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 306
    const/4 v4, 0x0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 307
    const/4 v4, 0x1

    invoke-static {v0, v3}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    return v1

    :cond_1
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    if-ltz p1, :cond_3

    const/4 v4, 0x1

    .line 314
    const/4 v4, 0x2

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 315
    const/4 v4, 0x3

    invoke-static {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    return p1

    :cond_2
    const/4 v4, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    const/4 v4, 0x2

    :cond_3
    const/4 v4, 0x3

    return v2

    const/4 v0, 0x0
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 6

    const/4 v5, 0x1

    .line 279
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 281
    const/4 v5, 0x3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 282
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, -0x1

    if-lt v2, v1, :cond_0

    const/4 v5, 0x1

    return v3

    :cond_0
    const/4 v5, 0x2

    add-int v2, p1, p2

    if-lt v2, v1, :cond_1

    const/4 v5, 0x3

    sub-int p2, v1, p1

    :cond_1
    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v1, p2, :cond_3

    const/4 v5, 0x2

    add-int v2, p1, v1

    .line 290
    const/4 v5, 0x3

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 291
    const/4 v5, 0x0

    invoke-static {v0, v4}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    return v2

    :cond_2
    const/4 v5, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v5, 0x3

    :cond_3
    const/4 v5, 0x0

    return v3

    const/4 v1, 0x1
.end method

.method public initShadow(Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v4, 0x3

    .line 172
    const/4 v4, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    const/4 v4, 0x1

    .line 173
    const/4 v4, 0x2

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 174
    const/4 v4, 0x3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "#50a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "#00a0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    invoke-direct {p1, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 p1, 0x41000000    # 8.0f

    .line 175
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    goto :goto_0

    const/4 v4, 0x1

    .line 178
    const/4 v4, 0x2

    :cond_0
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    const/4 p1, 0x0

    .line 179
    const/4 v4, 0x1

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 180
    const/4 v4, 0x2

    iput v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    :cond_1
    const/4 v4, 0x3

    :goto_0
    const/4 v4, 0x0

    return-void

    const/4 v0, 0x0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x2

    .line 376
    const/4 v0, 0x3

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 377
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p4, p2

    .line 378
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p4, p1

    .line 379
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eq p4, p1, :cond_0

    const/4 v0, 0x0

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->recreatePinnedShadow()V

    :cond_0
    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    .line 343
    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 344
    const/4 v0, 0x2

    new-instance p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;

    invoke-direct {p1, p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$3;-><init>(Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;)V

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    return-void

    const/4 v0, 0x0
.end method

.method recreatePinnedShadow()V
    .locals 4

    const/4 v3, 0x0

    .line 321
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    .line 322
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    .line 323
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v3, 0x1

    .line 324
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v0

    .line 325
    const/4 v3, 0x3

    invoke-virtual {p0, v0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v3, 0x0

    return-void

    .line 328
    const/4 v3, 0x1

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    .line 327
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v0, v2}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->ensureShadowForPosition(III)V

    :cond_1
    const/4 v3, 0x0

    return-void

    const/4 v1, 0x3
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    const/4 v0, 0x2

    .line 44
    const/4 v0, 0x3

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    const/4 v0, 0x0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    const/4 v2, 0x1

    .line 364
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 365
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    .line 366
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 v2, 0x0

    if-eq v0, p1, :cond_2

    const/4 v2, 0x1

    .line 369
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->destroyPinnedShadow()V

    .line 371
    const/4 v2, 0x3

    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    const/4 v0, 0x2
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2

    const/4 v1, 0x2

    .line 334
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x0

    .line 335
    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    const/4 v1, 0x2

    .line 337
    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    :goto_0
    const/4 v1, 0x1

    return-void

    const/4 v1, 0x1
.end method

.method public setShadowVisible(Z)V
    .locals 5

    const/4 v4, 0x3

    .line 161
    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->initShadow(Z)V

    .line 162
    const/4 v4, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    .line 163
    const/4 v4, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mPinnedSection:Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 164
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/imaginstudio/imagetools/pixellab/PinnedSectionListView;->invalidate(IIII)V

    :cond_0
    const/4 v4, 0x1

    return-void

    const/4 v0, 0x0
.end method
