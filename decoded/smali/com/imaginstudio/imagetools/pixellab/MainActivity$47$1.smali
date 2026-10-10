.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;

.field final synthetic val$item:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;I)V
    .locals 0

    .line 1992
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;->val$item:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1995
    const/4 v2, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->val$autoSavePath:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->val$autoSaves:[Ljava/lang/String;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;->val$item:I

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->loadPresetFromFile(Ljava/lang/String;Z)V

    return-void

    const/4 v0, 0x2
.end method
