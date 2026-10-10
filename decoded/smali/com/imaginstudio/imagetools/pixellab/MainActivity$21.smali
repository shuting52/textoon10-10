.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
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

    .line 1028
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$21;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1031
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$21;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {v0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1600(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    return-void

    const/4 v1, 0x1
.end method
