.class final enum Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;
.super Ljava/lang/Enum;
.source "ImageEraseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SelectionShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field public static final enum circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field public static final enum free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

.field public static final enum square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 161
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const-string v1, "free"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const-string v1, "square"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const-string v1, "circle"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->free:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->square:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->circle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    aput-object v1, v0, v4

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 161
    const/4 v1, 0x2

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;
    .locals 2

    const/4 v1, 0x0

    .line 161
    const/4 v1, 0x1

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/controls/widgets/ImageEraseView$SelectionShape;

    return-object v0

    const/4 v1, 0x1
.end method
