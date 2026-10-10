.class public final enum Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;
.super Ljava/lang/Enum;
.source "BezierPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BezierMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

.field public static final enum addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

.field public static final enum dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

.field public static final enum moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 123
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    const-string v1, "addP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    const-string v1, "dragP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    const-string v1, "moveB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->addP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->dragP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->moveB:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 123
    const/4 v1, 0x0

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;
    .locals 2

    const/4 v1, 0x2

    .line 123
    const/4 v1, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BezierPanel$BezierMode;

    return-object v0

    const/4 v1, 0x1
.end method
