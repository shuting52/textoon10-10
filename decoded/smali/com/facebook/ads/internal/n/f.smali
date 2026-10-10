.class public Lcom/facebook/ads/internal/n/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/n/f;->a:Ljava/lang/String;

    iput p2, p0, Lcom/facebook/ads/internal/n/f;->b:I

    iput p3, p0, Lcom/facebook/ads/internal/n/f;->c:I

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/n/f;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "width"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "height"

    invoke-virtual {p0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    new-instance v2, Lcom/facebook/ads/internal/n/f;

    invoke-direct {v2, v1, v0, p0}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/n/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/n/f;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/n/f;->c:I

    return v0
.end method
