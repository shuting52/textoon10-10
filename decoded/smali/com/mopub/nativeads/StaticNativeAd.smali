.class public abstract Lcom/mopub/nativeads/StaticNativeAd;
.super Lcom/mopub/nativeads/BaseNativeAd;
.source "StaticNativeAd.java"

# interfaces
.implements Lcom/mopub/nativeads/ImpressionInterface;
.implements Lcom/mopub/nativeads/ClickInterface;


# static fields
.field private static final DEFAULT_IMPRESSION_MIN_PERCENTAGE_VIEWED:I = 0x32

.field private static final DEFAULT_IMPRESSION_MIN_TIME_VIEWED_MS:I = 0x3e8

.field static final MAX_STAR_RATING:D = 5.0

.field static final MIN_STAR_RATING:D


# instance fields
.field private mCallToAction:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mClickDestinationUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mExtras:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIconImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mImpressionMinPercentageViewed:I

.field private mImpressionMinTimeViewed:I

.field private mImpressionMinVisiblePx:Ljava/lang/Integer;

.field private mImpressionRecorded:Z

.field private mMainImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPrivacyInformationIconImageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mStarRating:Ljava/lang/Double;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/mopub/nativeads/BaseNativeAd;-><init>()V

    const/16 v0, 0x3e8

    .line 44
    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    const/16 v0, 0x32

    .line 45
    iput v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "addExtra key is not allowed to be null"

    .line 202
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public final getClickDestinationUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getExtra key is not allowed to be null"

    .line 131
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mExtras:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getImpressionMinPercentageViewed()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    return v0
.end method

.method public final getImpressionMinTimeViewed()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    return v0
.end method

.method public final getImpressionMinVisiblePx()Ljava/lang/Integer;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyInformationIconImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final isImpressionRecorded()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionRecorded:Z

    return v0
.end method

.method public prepare(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public final setClickDestinationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mClickDestinationUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 161
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setImpressionMinPercentageViewed(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 230
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinPercentageViewed:I

    goto :goto_0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring impressionMinTimeViewed that\'s not a percent [0, 100]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setImpressionMinTimeViewed(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 216
    iput p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinTimeViewed:I

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring non-positive impressionMinTimeViewed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setImpressionMinVisiblePx(Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionMinVisiblePx:Ljava/lang/Integer;

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring null or non-positive impressionMinVisiblePx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setImpressionRecorded()V
    .locals 1

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/mopub/nativeads/StaticNativeAd;->mImpressionRecorded:Z

    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 157
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconClickThroughUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPrivacyInformationIconImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mPrivacyInformationIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .locals 7
    .param p1    # Ljava/lang/Double;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gtz v6, :cond_1

    .line 184
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mStarRating:Ljava/lang/Double;

    goto :goto_0

    .line 186
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring attempt to set invalid star rating ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "). Must be between "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    iput-object p1, p0, Lcom/mopub/nativeads/StaticNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method
