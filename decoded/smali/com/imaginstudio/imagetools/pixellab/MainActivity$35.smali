.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->activityResultLogic(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$quoteAdd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1599
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;->val$quoteAdd:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1602
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    .line 1603
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$35;->val$quoteAdd:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    const/4 v0, 0x0
.end method
