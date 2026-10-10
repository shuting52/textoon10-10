.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$12$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 573
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$12;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1100(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    return-void

    const/4 v1, 0x1
.end method
