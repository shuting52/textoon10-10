.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$64;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createAddNewMenu()V
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

    .line 3052
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$64;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3055
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$64;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/16 v1, -0x3c

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    return-void

    const/4 v0, 0x2
.end method
