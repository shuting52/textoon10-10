.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->autoSave()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$15;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 709
    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    const-string p1, ".nomedia"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    const/4 p1, 0x1

    goto :goto_0

    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x2

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x3

    return p1

    const/4 v0, 0x0
.end method
