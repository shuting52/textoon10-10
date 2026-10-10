.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/ImageInfo/CurrImage$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 539
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public typeChanged(I)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 542
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$11;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$700(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v2, 0x2

    const/4 p1, 0x1

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/controls/ControlsHolder;->informBgTypeChanged(Z)V

    return-void

    const/4 v0, 0x2
.end method
