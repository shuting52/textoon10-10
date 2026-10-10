.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "EraseBitmapDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;-><init>(Landroid/content/Context;Lcom/imaginstudio/imagetools/pixellab/ShapeObject/BmpPathMasks;Landroid/graphics/Bitmap;Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$EraseBitmapInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

.field final synthetic val$adView:Lcom/google/android/gms/ads/AdView;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 66
    const/4 v2, 0x3

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 67
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/EraseBitmapDialog$1;->val$adView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method
