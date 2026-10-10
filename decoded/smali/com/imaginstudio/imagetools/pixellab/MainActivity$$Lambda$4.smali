.class final synthetic Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$4;->arg$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$$Lambda$4;->arg$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->unlockPremium()V

    return-void

    const/4 v1, 0x1
.end method
