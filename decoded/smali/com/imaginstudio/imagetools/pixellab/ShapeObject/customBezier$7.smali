.class synthetic Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;
.super Ljava/lang/Object;
.source "customBezier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 266
    invoke-static {}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->values()[Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I

    :try_start_0
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->currP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->prevP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$7;->$SwitchMap$com$imaginstudio$imagetools$pixellab$ShapeObject$customBezier$DragTarget:[I

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->nextP:Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/ShapeObject/customBezier$DragTarget;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
