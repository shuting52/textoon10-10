.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->pickGalleryImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;I)V
    .locals 0

    .line 1553
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1556
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$32;->val$requestCode:I

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doPickGalleryImage(I)V

    return-void

    const/4 v0, 0x2
.end method
