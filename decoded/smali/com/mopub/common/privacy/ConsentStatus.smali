.class public final enum Lcom/mopub/common/privacy/ConsentStatus;
.super Ljava/lang/Enum;
.source "ConsentStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/privacy/ConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum DNT:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

.field public static final enum UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;


# instance fields
.field private final mValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "EXPLICIT_YES"

    const-string v2, "explicit_yes"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    .line 18
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "EXPLICIT_NO"

    const-string v2, "explicit_no"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    .line 24
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "UNKNOWN"

    const-string v2, "unknown"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    .line 31
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "POTENTIAL_WHITELIST"

    const-string v2, "potential_whitelist"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    .line 37
    new-instance v0, Lcom/mopub/common/privacy/ConsentStatus;

    const-string v1, "DNT"

    const-string v2, "dnt"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/mopub/common/privacy/ConsentStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    const/4 v0, 0x5

    .line 9
    new-array v0, v0, [Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mopub/common/privacy/ConsentStatus;->$VALUES:[Lcom/mopub/common/privacy/ConsentStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentStatus;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 58
    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0

    .line 61
    :cond_0
    invoke-static {}, Lcom/mopub/common/privacy/ConsentStatus;->values()[Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 62
    invoke-virtual {v3}, Lcom/mopub/common/privacy/ConsentStatus;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_2
    sget-object p0, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    .line 9
    const-class v0, Lcom/mopub/common/privacy/ConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/privacy/ConsentStatus;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/privacy/ConsentStatus;
    .locals 1

    .line 9
    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->$VALUES:[Lcom/mopub/common/privacy/ConsentStatus;

    invoke-virtual {v0}, [Lcom/mopub/common/privacy/ConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/privacy/ConsentStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentStatus;->mValue:Ljava/lang/String;

    return-object v0
.end method
