.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;)V
    .locals 0

    .line 2733
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 2736
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55$2;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$55;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->redrawAll()V

    return-void

    const/4 v1, 0x1
.end method
