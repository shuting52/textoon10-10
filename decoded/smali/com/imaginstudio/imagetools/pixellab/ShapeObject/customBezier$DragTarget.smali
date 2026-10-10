.class final enum Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
.super Ljava/lang/Enum;
.source "customBezier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DragTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum nextP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum none:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum prevP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

.field public static final enum whole:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 214
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v1, "prevP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v1, "currP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v1, "nextP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v1, "whole"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const-string v1, "none"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    aput-object v1, v0, v4

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->whole:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    aput-object v1, v0, v5

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->none:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    aput-object v1, v0, v6

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 214
    const/4 v1, 0x3

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;
    .locals 2

    const/4 v1, 0x1

    .line 214
    const/4 v1, 0x2

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    return-object v0

    const/4 v1, 0x1
.end method
