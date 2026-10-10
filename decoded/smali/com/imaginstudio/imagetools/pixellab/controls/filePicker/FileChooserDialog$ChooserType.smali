.class public final enum Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;
.super Ljava/lang/Enum;
.source "FileChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChooserType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

.field public static final enum DIRECTORY_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

.field public static final enum FILES_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

.field public static final enum FILE_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 65
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    const-string v1, "FILES_CHOOSER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILES_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    .line 66
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    const-string v1, "DIRECTORY_CHOOSER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->DIRECTORY_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    .line 67
    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    const-string v1, "FILE_CHOOSER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILE_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILES_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->DIRECTORY_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->FILE_CHOOSER:Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 64
    const/4 v1, 0x0

    const-class v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    return-object p0

    const/4 v1, 0x1
.end method

.method public static values()[Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;
    .locals 2

    const/4 v1, 0x2

    .line 64
    const/4 v1, 0x3

    sget-object v0, Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->$VALUES:[Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    invoke-virtual {v0}, [Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/imaginstudio/imagetools/pixellab/controls/filePicker/FileChooserDialog$ChooserType;

    return-object v0

    const/4 v1, 0x1
.end method
