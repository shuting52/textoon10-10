.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->deleteCurrObject()V
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

    .line 886
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$20;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 889
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$20;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->access$1500(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V

    return-void

    const/4 v0, 0x0
.end method
