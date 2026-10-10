.class public final enum Lcom/mopub/common/MoPub$BrowserAgent;
.super Ljava/lang/Enum;
.source "MoPub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/MoPub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowserAgent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/MoPub$BrowserAgent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/MoPub$BrowserAgent;

.field public static final enum IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

.field public static final enum NATIVE:Lcom/mopub/common/MoPub$BrowserAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/mopub/common/MoPub$BrowserAgent;

    const-string v1, "IN_APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/MoPub$BrowserAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 34
    new-instance v0, Lcom/mopub/common/MoPub$BrowserAgent;

    const-string v1, "NATIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mopub/common/MoPub$BrowserAgent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->NATIVE:Lcom/mopub/common/MoPub$BrowserAgent;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Lcom/mopub/common/MoPub$BrowserAgent;

    sget-object v1, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/common/MoPub$BrowserAgent;->NATIVE:Lcom/mopub/common/MoPub$BrowserAgent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->$VALUES:[Lcom/mopub/common/MoPub$BrowserAgent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromHeader(Ljava/lang/Integer;)Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 46
    sget-object p0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/mopub/common/MoPub$BrowserAgent;->NATIVE:Lcom/mopub/common/MoPub$BrowserAgent;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1

    .line 25
    const-class v0, Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MoPub$BrowserAgent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1

    .line 25
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->$VALUES:[Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-virtual {v0}, [Lcom/mopub/common/MoPub$BrowserAgent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method
