.class public final enum Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
.super Ljava/lang/Enum;
.source "DrawingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

.field public static final enum default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

.field public static final enum eraser:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 223
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const-string v1, "default_pen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const-string v1, "eraser"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    const/4 v0, 0x2

    .line 222
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->default_pen:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->eraser:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 222
    const/4 v1, 0x3

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;
    .locals 2

    const/4 v1, 0x1

    .line 222
    const/4 v1, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/DrawingPanel$PenType;

    return-object v0

    const/4 v1, 0x1
.end method
