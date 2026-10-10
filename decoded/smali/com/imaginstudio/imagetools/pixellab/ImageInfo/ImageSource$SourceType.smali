.class public final enum Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
.super Ljava/lang/Enum;
.source "ImageSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

.field public static final enum assets:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

.field public static final enum local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const-string v1, "local_file"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const-string v1, "assets"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->local_file:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->assets:Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 34
    const/4 v1, 0x1

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;
    .locals 2

    const/4 v1, 0x3

    .line 34
    const/4 v1, 0x0

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/ImageInfo/ImageSource$SourceType;

    return-object v0

    const/4 v1, 0x1
.end method
