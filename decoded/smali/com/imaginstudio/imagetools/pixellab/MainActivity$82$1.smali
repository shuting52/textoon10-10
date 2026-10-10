.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$82$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;)V
    .locals 0

    .line 3394
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3397
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/MainActivity$82;->val$exporter:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->gallerySaveButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return-void

    const/4 v0, 0x0
.end method
