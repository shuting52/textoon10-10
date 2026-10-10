.class public final enum Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;
.super Ljava/lang/Enum;
.source "textContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/textContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "floatObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum bottom:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum center_hor:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum center_ver:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum left:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum right:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

.field public static final enum top:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 995
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->left:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "right"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->right:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "bottom"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->bottom:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "top"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->top:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "center_hor"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->center_hor:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const-string v1, "center_ver"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->center_ver:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    const/4 v0, 0x6

    .line 994
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->left:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->right:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->bottom:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v1, v0, v4

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->top:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v1, v0, v5

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->center_hor:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v1, v0, v6

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->center_ver:Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    aput-object v1, v0, v7

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 994
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 994
    const/4 v1, 0x1

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;
    .locals 2

    const/4 v1, 0x3

    .line 994
    const/4 v1, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/textContainer$floatObject;

    return-object v0

    const/4 v1, 0x1
.end method
