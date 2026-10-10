.class public Lcom/mopub/nativeads/NativeFullScreenVideoView;
.super Landroid/widget/RelativeLayout;
.source "NativeFullScreenVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;,
        Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    }
.end annotation


# instance fields
.field private final mBottomGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCachedVideoFrameView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCloseControl:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mCloseControlSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mClosePaddingPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mCtaButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mCtaHeightPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mCtaMarginPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mCtaWidthPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field final mGradientStripHeightPx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mLoadingSpinner:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mOrientation:I

.field private final mOverlay:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPlayButton:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mPlayControlSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mPrivacyInformationIcon:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mPrivacyInformationIconSizePx:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private final mTopGradient:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoTexture:Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 15
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p1

    .line 69
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/TextureView;

    invoke-direct {v5, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-direct {v9, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/ImageView;

    invoke-direct {v14, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v14}, Lcom/mopub/nativeads/NativeFullScreenVideoView;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/ImageView;Landroid/view/TextureView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/mopub/mobileads/VastVideoProgressBarWidget;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/TextureView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/widget/ProgressBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/mopub/mobileads/VastVideoProgressBarWidget;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 87
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 90
    invoke-static/range {p5 .. p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-static/range {p6 .. p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    invoke-static/range {p7 .. p7}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-static/range {p8 .. p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 94
    invoke-static/range {p9 .. p9}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-static/range {p10 .. p10}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    invoke-static/range {p11 .. p11}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    invoke-static/range {p12 .. p12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static/range {p13 .. p13}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static/range {p14 .. p14}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    move v2, p2

    .line 101
    iput v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 102
    sget-object v2, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->LOADING:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    iput-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    const/high16 v2, 0x43480000    # 200.0f

    .line 104
    invoke-static {v2, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    const/high16 v2, 0x42280000    # 42.0f

    .line 105
    invoke-static {v2, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 106
    invoke-static {v2, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    const/high16 v2, 0x42480000    # 50.0f

    .line 107
    invoke-static {v2, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    const/high16 v3, 0x41000000    # 8.0f

    .line 108
    invoke-static {v3, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    const/high16 v3, 0x42300000    # 44.0f

    .line 109
    invoke-static {v3, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    .line 110
    invoke-static {v2, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    const/high16 v2, 0x42340000    # 45.0f

    .line 111
    invoke-static {v2, v1}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v2

    iput v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    .line 114
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v5, p5

    .line 119
    iput-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 120
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/view/TextureView;->setId(I)V

    .line 121
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v5, v2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0, v5}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    move-object v5, p4

    .line 124
    iput-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    .line 125
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 126
    iget-object v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 128
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 130
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    iget v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v6, p6

    .line 133
    iput-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 134
    iget-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setId(I)V

    .line 135
    iget-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    new-instance v7, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;

    invoke-direct {v7, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$LoadingBackground;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iget-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 138
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 140
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 142
    iget-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getId()I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v2, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v7, p7

    .line 143
    iput-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    .line 144
    iget-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 145
    iget-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v8, 0x2

    new-array v9, v8, [I

    sget v10, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v10, v9, v5

    sget v10, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v10, v9, v6

    invoke-direct {v2, v7, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 148
    iget-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mBottomGradient:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 151
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mGradientStripHeightPx:I

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xa

    .line 153
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v7, p8

    .line 154
    iput-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    .line 155
    iget-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 156
    iget-object v7, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v9, v8, [I

    sget v10, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v10, v9, v5

    sget v10, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v10, v9, v6

    invoke-direct {v2, v7, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 159
    iget-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mTopGradient:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    move-object/from16 v2, p9

    .line 162
    iput-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 163
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v2, v6}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setId(I)V

    .line 164
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    iget-object v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    .line 165
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    const/16 v6, 0x3e8

    invoke-virtual {v2, v6, v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 166
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 168
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v3, p10

    .line 171
    iput-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    .line 172
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 173
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    const/high16 v3, -0x78000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 177
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    iget v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayControlSizePx:I

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v3, p11

    .line 180
    iput-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    .line 181
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 182
    iget-object v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    sget-object v3, Lcom/mopub/common/util/Drawables;->NATIVE_PLAY:Lcom/mopub/common/util/Drawables;

    invoke-virtual {v3, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    move-object/from16 v2, p12

    .line 186
    iput-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    .line 187
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 188
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    sget-object v3, Lcom/mopub/common/util/Drawables;->NATIVE_PRIVACY_INFORMATION_ICON:Lcom/mopub/common/util/Drawables;

    .line 189
    invoke-virtual {v3, v1}, Lcom/mopub/common/util/Drawables;->createDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v5, v5, 0x2

    iget v6, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 192
    iget-object v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 194
    new-instance v2, Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p3

    .line 196
    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v1, p13

    .line 198
    iput-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    .line 199
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 200
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    move-object/from16 v1, p14

    .line 203
    iput-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    .line 204
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 205
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    new-instance v2, Lcom/mopub/mobileads/resource/CloseButtonDrawable;

    invoke-direct {v2}, Lcom/mopub/mobileads/resource/CloseButtonDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    iget v2, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v4, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    iget v5, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mClosePaddingPx:I

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 207
    iget-object v1, v0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->addView(Landroid/view/View;)V

    .line 209
    invoke-direct {v0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    return-void
.end method

.method private setCachedImageVisibility(I)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setLoadingSpinnerVisibility(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setPlayButtonVisibility(I)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVideoProgressVisibility(I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setVisibility(I)V

    return-void
.end method

.method private updateControlLayouts()V
    .locals 6

    .line 341
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaWidthPx:I

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaHeightPx:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    iget v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaMarginPx:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 344
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIconSizePx:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    iget v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControlSizePx:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    iget v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    const/16 v4, 0xb

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v3, 0x2

    .line 363
    iget-object v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->getId()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 364
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 366
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x5

    .line 367
    iget-object v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getId()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x7

    .line 370
    iget-object v4, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x3

    .line 353
    iget-object v5, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getId()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    .line 354
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 356
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x9

    .line 357
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 359
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 360
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateVideoTextureLayout()V
    .locals 4

    .line 328
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 330
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 331
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v3, :cond_0

    .line 332
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 334
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    const/high16 v2, 0x41100000    # 9.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x41800000    # 16.0f

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    .line 335
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_1

    .line 336
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private updateViewState()V
    .locals 3

    .line 277
    sget-object v0, Lcom/mopub/nativeads/NativeFullScreenVideoView$1;->$SwitchMap$com$mopub$nativeads$NativeFullScreenVideoView$Mode:[I

    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 297
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 298
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 299
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 300
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 291
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 292
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 293
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 294
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 285
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 286
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 287
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 288
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    goto :goto_0

    .line 279
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setCachedImageVisibility(I)V

    .line 280
    invoke-direct {p0, v1}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setLoadingSpinnerVisibility(I)V

    .line 281
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setVideoProgressVisibility(I)V

    .line 282
    invoke-direct {p0, v2}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->setPlayButtonVisibility(I)V

    .line 306
    :goto_0
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateVideoTextureLayout()V

    .line 307
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateControlLayouts()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getCtaButton()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    return-object v0
.end method

.method public resetProgress()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->reset()V

    return-void
.end method

.method public setCachedVideoFrame(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCachedVideoFrameView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setCloseControlListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 251
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCloseControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCtaClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 260
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mCtaButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMode(Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;)V
    .locals 1
    .param p1    # Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 217
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    if-ne v0, p1, :cond_0

    return-void

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mMode:Lcom/mopub/nativeads/NativeFullScreenVideoView$Mode;

    .line 223
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 232
    iget v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 235
    :cond_0
    iput p1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOrientation:I

    .line 236
    invoke-direct {p0}, Lcom/mopub/nativeads/NativeFullScreenVideoView;->updateViewState()V

    return-void
.end method

.method public setPlayControlClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 264
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPrivacyInformationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 256
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mPrivacyInformationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 3
    .param p1    # Landroid/view/TextureView$SurfaceTextureListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 241
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 243
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    .line 246
    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoTexture:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    .line 245
    invoke-interface {p1, v0, v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/mopub/nativeads/NativeFullScreenVideoView;->mVideoProgress:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    return-void
.end method
