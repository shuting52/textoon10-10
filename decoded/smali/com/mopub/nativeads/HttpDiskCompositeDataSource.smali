.class public Lcom/mopub/nativeads/HttpDiskCompositeDataSource;
.super Ljava/lang/Object;
.source "HttpDiskCompositeDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field static final BLOCK_SIZE:I = 0x7d000
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field static final EXPECTED_FILE_SIZE_KEY_PREFIX:Ljava/lang/String; = "expectedsize-"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final HTTP_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field static final INTERVALS_KEY_PREFIX:Ljava/lang/String; = "intervals-sorted-"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final LENGTH:Ljava/lang/String; = "length"

.field static final LENGTH_UNBOUNDED:I = -0x1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final START:Ljava/lang/String; = "start"


# instance fields
.field private mCachedBytes:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDataBlockOffset:I

.field private mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mExpectedFileLength:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIntervals:Ljava/util/TreeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirty:Z

.field private mIsHttpSourceOpen:Z

.field private mKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSegment:I

.field private mStartInDataBlock:I

.field private mStartInFile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/HttpDataSource;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/HttpDataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 111
    iput-object p2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 132
    iput-object p3, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    .line 133
    invoke-static {p1}, Lcom/mopub/common/CacheService;->initialize(Landroid/content/Context;)V

    .line 134
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    return-void
.end method

.method static addNewInterval(Ljava/util/TreeSet;II)V
    .locals 2
    .param p0    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;II)V"
        }
    .end annotation

    .line 457
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 459
    invoke-static {p1, p0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    return-void

    .line 462
    :cond_0
    new-instance v0, Lcom/mopub/nativeads/IntInterval;

    invoke-direct {v0, p1, p2}, Lcom/mopub/nativeads/IntInterval;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static areBytesAvailableInCache(III)Z
    .locals 0

    add-int/2addr p1, p2

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getExpectedFileLengthFromDisk(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 242
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expectedsize-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 248
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_0
    return-object v0
.end method

.method static getFirstContiguousPointAfter(ILjava/util/TreeSet;)I
    .locals 2
    .param p1    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TreeSet<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;)I"
        }
    .end annotation

    .line 435
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/IntInterval;

    .line 439
    invoke-virtual {v0}, Lcom/mopub/nativeads/IntInterval;->getStart()I

    move-result v1

    if-gt v1, p0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/mopub/nativeads/IntInterval;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lcom/mopub/nativeads/IntInterval;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    .line 440
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_1
    return p0
.end method

.method private static populateIntervalsFromDisk(Ljava/lang/String;Ljava/util/TreeSet;)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;)V"
        }
    .end annotation

    .line 217
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intervals-sorted-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 225
    :try_start_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 226
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 227
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v2, Lcom/mopub/nativeads/IntInterval;

    const-string v3, "start"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "length"

    .line 229
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/mopub/nativeads/IntInterval;-><init>(II)V

    .line 228
    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "clearing cache since unable to read json data"

    .line 235
    invoke-static {p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "clearing cache since invalid json intervals found"

    .line 232
    invoke-static {v0, p0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    :cond_0
    :goto_1
    return-void
.end method

.method private writeCacheToDiskAndClearVariables()V
    .locals 3

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 421
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->addNewInterval(Ljava/util/TreeSet;II)V

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    .line 423
    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    .line 424
    iput v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 425
    iget v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    const v1, 0x7d000

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    return-void
.end method

.method private static writeIntervalsToDisk(Ljava/util/TreeSet;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 281
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 282
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 284
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 285
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/IntInterval;

    .line 286
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 288
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intervals-sorted-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 288
    invoke-static {p0, p1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 265
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->addNewInterval(Ljava/util/TreeSet;II)V

    .line 266
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->writeIntervalsToDisk(Ljava/util/TreeSet;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 270
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->close()V

    const/4 v1, 0x0

    .line 271
    iput-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    .line 272
    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    .line 273
    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 274
    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    .line 275
    iput-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 276
    iput-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v0, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 21
    .param p1    # Lcom/google/android/exoplayer2/upstream/DataSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 139
    invoke-static/range {p1 .. p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    iget-object v3, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    if-nez v3, :cond_0

    return-wide v4

    :cond_0
    const/4 v3, 0x0

    .line 144
    iput-boolean v3, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    .line 146
    iput-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 147
    iget-object v6, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    .line 148
    iget-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    if-nez v6, :cond_1

    return-wide v4

    .line 151
    :cond_1
    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    long-to-int v6, v6

    iput v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    .line 152
    iget v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    const v7, 0x7d000

    div-int/2addr v6, v7

    iput v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 154
    iget v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    rem-int/2addr v6, v7

    iput v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    .line 155
    iput v3, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 157
    iget-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getExpectedFileLengthFromDisk(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 159
    iget-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    iget-object v8, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v6, v8}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->populateIntervalsFromDisk(Ljava/lang/String;Ljava/util/TreeSet;)V

    .line 161
    iget v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget-object v8, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v6, v8}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v6

    .line 164
    iget-object v8, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v8, :cond_2

    .line 165
    new-array v7, v7, [B

    iput-object v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 168
    iget v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    if-le v6, v7, :cond_2

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cache segment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was evicted. Invalidating cache"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 170
    iget-object v6, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->clear()V

    .line 171
    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    long-to-int v6, v6

    .line 177
    :cond_2
    iget-object v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 210
    :cond_3
    iget-wide v6, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_4

    iget-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    goto/16 :goto_3

    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    goto/16 :goto_3

    .line 179
    :cond_5
    :goto_0
    iget-object v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v9, v7, v4

    if-nez v9, :cond_6

    move-wide v11, v4

    goto :goto_1

    .line 183
    :cond_6
    iget-object v7, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-wide v7, v7, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iget v9, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int v9, v6, v9

    int-to-long v9, v9

    sub-long v11, v7, v9

    .line 186
    :goto_1
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v14, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    int-to-long v8, v6

    iget-object v10, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move-object v13, v7

    move-wide v15, v8

    move-wide/from16 v17, v11

    move-object/from16 v19, v10

    move/from16 v20, v2

    invoke-direct/range {v13 .. v20}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 190
    :try_start_0
    iget-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    move-result-wide v7

    .line 191
    iget-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-nez v2, :cond_7

    cmp-long v2, v11, v4

    if-nez v2, :cond_7

    .line 194
    iget v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    int-to-long v4, v2

    add-long v9, v4, v7

    long-to-int v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedsize-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 196
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 195
    invoke-static {v2, v4}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    :cond_7
    const/4 v2, 0x1

    .line 198
    iput-boolean v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v7

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 202
    iget v4, v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v5, 0x1a0

    if-ne v4, v5, :cond_9

    .line 203
    iget-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-nez v2, :cond_8

    iget v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int/2addr v6, v2

    int-to-long v4, v6

    goto :goto_2

    :cond_8
    iget-object v2, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int/2addr v2, v4

    int-to-long v4, v2

    .line 207
    :goto_2
    iput-boolean v3, v1, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    move-wide v2, v4

    :goto_3
    return-wide v2

    .line 205
    :cond_9
    throw v2
.end method

.method public read([BII)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    const v5, 0x7d000

    if-le v3, v5, :cond_0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading more than the block size (512000 bytes) at once is not possible. length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return v4

    .line 299
    :cond_0
    iget-object v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    if-nez v6, :cond_1

    const-string v1, "Unable to read from data source when no spec provided"

    .line 300
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return v4

    .line 303
    :cond_1
    iget-object v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v6, :cond_2

    const-string v1, "No cache set up. Call open before read."

    .line 304
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return v4

    .line 309
    :cond_2
    iget v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    sub-int v6, v5, v6

    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int/2addr v6, v7

    .line 312
    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v8, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v7, v8

    iget-object v8, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v7, v8}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v7

    .line 315
    iget v8, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int v8, v7, v8

    iget v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int/2addr v8, v9

    .line 317
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 321
    iget v10, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v11, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    invoke-static {v7, v10, v11}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->areBytesAvailableInCache(III)Z

    move-result v7

    const/4 v10, 0x1

    if-eqz v7, :cond_5

    if-gt v8, v6, :cond_3

    .line 324
    iget-object v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    iget v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v7, v9

    invoke-static {v6, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v6, v8

    iput v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/lit8 v8, v8, 0x0

    goto/16 :goto_0

    .line 330
    :cond_3
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    iget v11, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    iget v12, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v11, v12

    invoke-static {v7, v11, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v6, v9

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->writeCacheToDiskAndClearVariables()V

    .line 339
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 340
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v7, :cond_4

    const-string v7, "Unexpected cache miss. Invalidating cache"

    .line 344
    invoke-static {v7}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 345
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->clear()V

    .line 346
    new-array v7, v5, [B

    iput-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 347
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->close()V

    .line 349
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    new-instance v8, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v12, v9, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v11, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v9, v11

    int-to-long v13, v9

    const-wide/16 v15, -0x1

    iget-object v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v9, v9, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget v11, v11, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    move/from16 v18, v11

    move-object v11, v8

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v18}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J

    .line 352
    iput-boolean v10, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    move v8, v6

    goto :goto_0

    .line 356
    :cond_4
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    iget v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    iget v11, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v9, v11

    add-int v11, v2, v6

    sub-int v6, v8, v6

    invoke-static {v7, v9, v1, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v7, v6

    iput v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_0
    sub-int/2addr v3, v8

    if-gtz v3, :cond_6

    return v8

    .line 371
    :cond_6
    iput-boolean v10, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    .line 374
    iget-boolean v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    if-nez v6, :cond_7

    const-string v1, "end of cache reached. No http source open"

    .line 375
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    return v4

    .line 380
    :cond_7
    iget-object v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer2/upstream/HttpDataSource;

    add-int v6, v2, v8

    invoke-interface {v4, v1, v6, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource;->read([BII)I

    move-result v3

    .line 383
    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    sub-int v4, v5, v4

    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int/2addr v4, v7

    if-ge v4, v3, :cond_9

    .line 389
    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    iget v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    iget v10, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v9, v10

    invoke-static {v1, v6, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->writeCacheToDiskAndClearVariables()V

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 396
    iget-object v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v6, :cond_8

    .line 397
    new-array v5, v5, [B

    iput-object v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    :cond_8
    add-int/2addr v2, v4

    add-int/2addr v2, v8

    .line 400
    iget-object v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    iget v6, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    iget v7, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v6, v7

    sub-int v4, v3, v4

    invoke-static {v1, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    iget v1, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    goto :goto_1

    .line 406
    :cond_9
    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    iget v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v4, v5

    invoke-static {v1, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget v1, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    :goto_1
    add-int/2addr v3, v8

    return v3
.end method
