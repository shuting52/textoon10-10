.class public Lcom/mopub/common/SdkConfiguration$Builder;
.super Ljava/lang/Object;
.source "SdkConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/SdkConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adUnitId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final advancedBidders:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mediationSettings:[Lcom/mopub/common/MediationSettings;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private networksToInit:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adUnitId:Ljava/lang/String;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->advancedBidders:Ljava/util/List;

    const/4 p1, 0x0

    .line 94
    new-array p1, p1, [Lcom/mopub/common/MediationSettings;

    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediationSettings:[Lcom/mopub/common/MediationSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/mopub/common/SdkConfiguration;
    .locals 7

    .line 155
    new-instance v6, Lcom/mopub/common/SdkConfiguration;

    iget-object v1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/common/SdkConfiguration$Builder;->advancedBidders:Ljava/util/List;

    iget-object v3, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediationSettings:[Lcom/mopub/common/MediationSettings;

    iget-object v4, p0, Lcom/mopub/common/SdkConfiguration$Builder;->networksToInit:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mopub/common/SdkConfiguration;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/mopub/common/MediationSettings;Ljava/util/List;Lcom/mopub/common/SdkConfiguration$1;)V

    return-object v6
.end method

.method public withAdvancedBidder(Ljava/lang/Class;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;)",
            "Lcom/mopub/common/SdkConfiguration$Builder;"
        }
    .end annotation

    .line 105
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->advancedBidders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public withAdvancedBidders(Ljava/util/Collection;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/common/MoPubAdvancedBidder;",
            ">;>;)",
            "Lcom/mopub/common/SdkConfiguration$Builder;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->advancedBidders:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withMediationSettings([Lcom/mopub/common/MediationSettings;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 0
    .param p1    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    iput-object p1, p0, Lcom/mopub/common/SdkConfiguration$Builder;->mediationSettings:[Lcom/mopub/common/MediationSettings;

    return-object p0
.end method

.method public withNetworksToInit(Ljava/util/List;)Lcom/mopub/common/SdkConfiguration$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mopub/common/SdkConfiguration$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 149
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->networksToInit:Ljava/util/List;

    .line 150
    iget-object v0, p0, Lcom/mopub/common/SdkConfiguration$Builder;->networksToInit:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p0
.end method
