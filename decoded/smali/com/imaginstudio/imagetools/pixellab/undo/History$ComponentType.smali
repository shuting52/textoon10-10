.class public final enum Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
.super Ljava/lang/Enum;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/undo/History;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComponentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum bg:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

.field public static final enum unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 75
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v1, "text"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v1, "shape"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v1, "multiple"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v1, "bg"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const-string v1, "unspecified"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    const/4 v0, 0x5

    .line 74
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->multiple:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->bg:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->unspecified:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 74
    const/4 v1, 0x2

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;
    .locals 2

    const/4 v1, 0x0

    .line 74
    const/4 v1, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    return-object v0

    const/4 v1, 0x1
.end method
