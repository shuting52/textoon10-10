.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$3;
.super Ljava/lang/Object;
.source "quotes_browser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 109
    const/4 v0, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->access$100(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V

    return-void

    const/4 v0, 0x0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    return-void

    const/4 v0, 0x0
.end method
