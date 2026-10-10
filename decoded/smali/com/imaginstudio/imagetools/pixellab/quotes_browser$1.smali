.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "quotes_browser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

.field final synthetic val$adContainer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$1;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$1;->val$adContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 76
    const/4 v2, 0x2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 77
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$1;->val$adContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    const/4 v0, 0x2
.end method
