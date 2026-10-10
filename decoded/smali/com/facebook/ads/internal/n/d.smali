.class public final enum Lcom/facebook/ads/internal/n/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/internal/n/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/n/d;

.field public static final enum b:Lcom/facebook/ads/internal/n/d;

.field public static final enum c:Lcom/facebook/ads/internal/n/d;

.field public static final enum d:Lcom/facebook/ads/internal/n/d;

.field public static final e:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/internal/n/d;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lcom/facebook/ads/internal/n/d;


# instance fields
.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/facebook/ads/internal/n/d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/n/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/ads/internal/n/d;->a:Lcom/facebook/ads/internal/n/d;

    new-instance v0, Lcom/facebook/ads/internal/n/d;

    const-string v1, "ICON"

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/ads/internal/n/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/ads/internal/n/d;->b:Lcom/facebook/ads/internal/n/d;

    new-instance v0, Lcom/facebook/ads/internal/n/d;

    const-string v1, "IMAGE"

    const/4 v4, 0x2

    const-wide/16 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/facebook/ads/internal/n/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/ads/internal/n/d;->c:Lcom/facebook/ads/internal/n/d;

    new-instance v0, Lcom/facebook/ads/internal/n/d;

    const-string v1, "VIDEO"

    const/4 v5, 0x3

    const-wide/16 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/facebook/ads/internal/n/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/facebook/ads/internal/n/d;->d:Lcom/facebook/ads/internal/n/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/internal/n/d;

    sget-object v1, Lcom/facebook/ads/internal/n/d;->a:Lcom/facebook/ads/internal/n/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/n/d;->b:Lcom/facebook/ads/internal/n/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/n/d;->c:Lcom/facebook/ads/internal/n/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/n/d;->d:Lcom/facebook/ads/internal/n/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/ads/internal/n/d;->g:[Lcom/facebook/ads/internal/n/d;

    const-class v0, Lcom/facebook/ads/internal/n/d;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/n/d;->e:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/facebook/ads/internal/n/d;->f:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/n/d;
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/n/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/internal/n/d;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/internal/n/d;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/n/d;->g:[Lcom/facebook/ads/internal/n/d;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/n/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/n/d;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/n/d;->f:J

    return-wide v0
.end method
