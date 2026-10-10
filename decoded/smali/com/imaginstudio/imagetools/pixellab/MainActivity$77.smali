.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$77;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createMainMenu()V
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

    .line 3146
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$77;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v3, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3149
    const/4 v3, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$77;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00c0

    .line 3150
    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0060

    .line 3151
    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    .line 3152
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$77$1;

    invoke-direct {v1, p0}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$77$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$77;)V

    const v2, 0x1040013

    .line 3153
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3160
    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    const/4 v1, 0x3
.end method
