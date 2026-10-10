.class public final enum Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
.super Ljava/lang/Enum;
.source "HistoryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum bg_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum shape_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum shape_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum text_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

.field public static final enum text_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 7
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "text_action"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "text_create"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "text_delete"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    .line 8
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "shape_action"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "shape_create"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "shape_delete"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    .line 9
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const-string v1, "bg_action"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    const/4 v0, 0x7

    .line 6
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->text_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_create:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->shape_delete:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->bg_action:Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 6
    const/4 v1, 0x3

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;
    .locals 2

    const/4 v1, 0x1

    .line 6
    const/4 v1, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/undo/HistoryType;

    return-object v0

    const/4 v1, 0x1
.end method
