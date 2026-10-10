.class final enum Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
.super Ljava/lang/Enum;
.source "LayerObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_delete:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_edit:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_hide:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_lock:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum click_select:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

.field public static final enum none:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 54
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "drag"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "click_all"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "click_delete"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "click_hide"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "click_edit"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "click_lock"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const-string v1, "click_select"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->none:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->drag:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_all:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_delete:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_hide:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_edit:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_lock:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->click_select:Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    aput-object v1, v0, v9

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 54
    const/4 v1, 0x0

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;
    .locals 2

    const/4 v1, 0x2

    .line 54
    const/4 v1, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/layers/LayerObject$TouchMode;

    return-object v0

    const/4 v1, 0x1
.end method
