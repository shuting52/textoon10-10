.class Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallMapper"
.end annotation


# instance fields
.field private mNativeAd:Lcom/facebook/ads/NativeAd;

.field private mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

.field final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeAd;Lcom/google/android/gms/ads/formats/NativeAdOptions;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;-><init>()V

    .line 716
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 717
    iput-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    return-void
.end method

.method private containsRequiredFieldsForNativeAppInstallAd(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    .line 858
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/Double;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 940
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getValue()D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd$Rating;->getScale()D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public mapNativeAd(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
    .locals 7

    .line 728
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->containsRequiredFieldsForNativeAppInstallAd(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FacebookAdapter"

    const-string v1, "Ad from Facebook doesn\'t have all assets required for the app install format."

    .line 729
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-interface {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed()V

    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setHeadline(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 739
    new-instance v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 740
    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    .line 739
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setImages(Ljava/util/List;)V

    .line 742
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setBody(Ljava/lang/String;)V

    .line 743
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAd$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 744
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setCallToAction(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    new-instance v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;

    invoke-direct {v1, p0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 789
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 794
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1100(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setMediaView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 795
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setHasVideoContent(Z)V

    .line 798
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAd$Rating;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getRating(Lcom/facebook/ads/NativeAd$Rating;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 800
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setStarRating(D)V

    .line 804
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "id"

    .line 805
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "social_context"

    .line 806
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "subtitle"

    .line 807
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getAdSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 809
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdViewAttributes()Lcom/facebook/ads/NativeAdViewAttributes;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 811
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "autoplay"

    .line 812
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getAutoplay()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "background_color"

    .line 813
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getBackgroundColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "button_border_color"

    .line 814
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getButtonBorderColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "button_color"

    .line 815
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getButtonColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "button_text_color"

    .line 816
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getButtonTextColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "description_text_color"

    .line 818
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getDescriptionTextColor()I

    move-result v5

    .line 817
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "description_text_size"

    .line 820
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getDescriptionTextSize()I

    move-result v5

    .line 819
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "title_text_color"

    .line 821
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "title_text_size"

    .line 822
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getTitleTextSize()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 824
    invoke-virtual {v2}, Lcom/facebook/ads/NativeAdViewAttributes;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 826
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "is_bold"

    .line 827
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isBold()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "is_italic"

    .line 828
    invoke-virtual {v2}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "style"

    .line 829
    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "typeface"

    .line 830
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string v2, "ad_view_attributes"

    .line 832
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 834
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setExtras(Landroid/os/Bundle;)V

    .line 838
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 839
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 843
    invoke-interface {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingSuccess()V

    goto :goto_1

    .line 845
    :cond_5
    new-instance v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;

    invoke-direct {v1, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p0, p1, v2

    invoke-virtual {v1, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 865
    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    .line 868
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 869
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 871
    new-instance v2, Lcom/facebook/ads/AdChoicesView;

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v5, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1200(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/ads/AdChoicesView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAd;Z)V

    .line 873
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 877
    invoke-virtual {v2}, Lcom/facebook/ads/AdChoicesView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 878
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/16 v3, 0x35

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAdOptions:Lcom/google/android/gms/ads/formats/NativeAdOptions;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v2

    if-eqz v2, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 891
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x53

    .line 887
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x55

    .line 884
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x33

    .line 881
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 895
    :cond_1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 897
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_1

    :cond_2
    const-string p3, "FacebookAdapter"

    const-string v0, "Failed to show AdChoices icon."

    .line 899
    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setOverrideImpressionRecording(Z)V

    .line 906
    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->setOverrideClickHandling(Z)V

    .line 908
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 909
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 910
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 913
    :cond_3
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p2, p1, p3}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1

    .line 918
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->untrackView(Landroid/view/View;)V

    .line 922
    check-cast p1, Landroid/view/ViewGroup;

    .line 925
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 926
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 927
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 930
    :cond_0
    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    return-void
.end method
