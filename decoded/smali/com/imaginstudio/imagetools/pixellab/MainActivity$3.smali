.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->onBackPressed()V
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

    .line 295
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 298
    const/4 v1, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->tinydb:Lcom/imaginstudio/imagetools/pixellab/TinyDB;

    const-string p2, "exitedByUser"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/imaginstudio/imagetools/pixellab/TinyDB;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const/4 v1, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$301(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    return-void

    const/4 v1, 0x1
.end method
