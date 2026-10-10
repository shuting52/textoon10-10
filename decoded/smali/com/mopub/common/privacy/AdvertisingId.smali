.class public Lcom/mopub/common/privacy/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PREFIX_IFA:Ljava/lang/String; = "ifa:"

.field private static final PREFIX_MOPUB:Ljava/lang/String; = "mopub:"

.field static final ROTATION_TIME_MS:J = 0x5265c00L


# instance fields
.field final mAdvertisingId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mDoNotTrack:Z

.field final mLastRotation:Ljava/util/Calendar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final mMopubId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    .line 50
    iput-boolean p3, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    .line 52
    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {p1, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method static generateExpiredAdvertisingId()Lcom/mopub/common/privacy/AdvertisingId;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateIdString()Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v7, Lcom/mopub/common/privacy/AdvertisingId;

    const-string v2, ""

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    sub-long v8, v0, v4

    const-wide/16 v0, 0x1

    sub-long v5, v8, v0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v7
.end method

.method static generateFreshAdvertisingId()Lcom/mopub/common/privacy/AdvertisingId;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/mopub/common/privacy/AdvertisingId;->generateIdString()Ljava/lang/String;

    move-result-object v3

    .line 106
    new-instance v7, Lcom/mopub/common/privacy/AdvertisingId;

    const-string v2, ""

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mopub/common/privacy/AdvertisingId;-><init>(Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-object v7
.end method

.method static generateIdString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 132
    :cond_0
    instance-of v0, p1, Lcom/mopub/common/privacy/AdvertisingId;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 134
    :cond_1
    check-cast p1, Lcom/mopub/common/privacy/AdvertisingId;

    .line 136
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    iget-boolean v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getIdWithPrefix(Z)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 69
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ifa:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mopub:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIdentifier(Z)Ljava/lang/String;
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    :goto_1
    return-object p1
.end method

.method getIfaWithPrefix()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-boolean v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isDoNotTrack()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    return v0
.end method

.method isRotationRequired()Z
    .locals 6

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/32 v0, 0x5265c00

    cmp-long v2, v4, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingId{mLastRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mLastRotation:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAdvertisingId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMopubId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/privacy/AdvertisingId;->mMopubId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDoNotTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mopub/common/privacy/AdvertisingId;->mDoNotTrack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
