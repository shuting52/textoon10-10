.class Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "export_image_dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;-><init>(Landroid/content/Context;IIZIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 52
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 53
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/export_image_dialog;->dialogLayout:Landroid/view/View;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method
