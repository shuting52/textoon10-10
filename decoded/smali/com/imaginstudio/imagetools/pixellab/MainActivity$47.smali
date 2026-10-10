.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->openAutoSaveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

.field final synthetic val$autoSavePath:Ljava/lang/String;

.field final synthetic val$autoSaves:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1987
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->val$autoSavePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->val$autoSaves:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1989
    const/4 v1, 0x3

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c0060

    .line 1990
    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0c0061

    .line 1991
    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1992
    const/4 v1, 0x2

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;

    invoke-direct {v0, p0, p2}, Lcom/imaginstudio/imagetools/pixellab/MainActivity$47$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$47;I)V

    const p2, 0x1040013

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p2, 0x1040009

    const/4 v0, 0x0

    .line 1998
    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1999
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    const/4 v1, 0x1
.end method
