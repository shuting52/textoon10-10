.class public Lcom/mopub/mobileads/VastExtensionXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionXmlManager.java"


# static fields
.field public static final AD_VERIFICATIONS:Ljava/lang/String; = "AdVerifications"

.field public static final AVID:Ljava/lang/String; = "AVID"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MOAT:Ljava/lang/String; = "Moat"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VENDOR:Ljava/lang/String; = "vendor"

.field public static final VERIFICATION:Ljava/lang/String; = "Verification"

.field public static final VIDEO_VIEWABILITY_TRACKER:Ljava/lang/String; = "MoPubViewabilityTracker"


# instance fields
.field private final mExtensionNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1    # Lorg/w3c/dom/Node;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    return-void
.end method


# virtual methods
.method getAvidJavaScriptResources()Ljava/util/Set;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "AVID"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_0
    new-instance v1, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1}, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->getJavaScriptResources()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getMoatImpressionPixels()Ljava/util/Set;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "AdVerifications"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Verification"

    const-string v3, "vendor"

    const-string v4, "Moat"

    .line 101
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 100
    invoke-static {v0, v2, v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance v1, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->getImpressionPixelsXml()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method getType()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "MoPubViewabilityTracker"

    .line 49
    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 54
    :cond_0
    new-instance v2, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v2, v0}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 56
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getViewablePlaytimeMS()Ljava/lang/Integer;

    move-result-object v0

    .line 57
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getPercentViewable()Ljava/lang/Integer;

    move-result-object v3

    .line 59
    invoke-virtual {v2}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getVideoViewabilityTrackerUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Lcom/mopub/mobileads/VideoViewabilityTracker;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker;-><init>(IILjava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v1
.end method
