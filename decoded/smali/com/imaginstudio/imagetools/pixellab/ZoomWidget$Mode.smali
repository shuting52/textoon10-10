.class final enum Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;
.super Ljava/lang/Enum;
.source "ZoomWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ZoomWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field public static final enum DRAG:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field public static final enum NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

.field public static final enum ZOOM:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    .line 74
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const-string v1, "DRAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    .line 75
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const-string v1, "ZOOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    const/4 v0, 0x3

    .line 72
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->NONE:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->DRAG:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->ZOOM:Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 72
    const/4 v1, 0x1

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;
    .locals 2

    const/4 v1, 0x3

    .line 72
    const/4 v1, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/ZoomWidget$Mode;

    return-object v0

    const/4 v1, 0x1
.end method
