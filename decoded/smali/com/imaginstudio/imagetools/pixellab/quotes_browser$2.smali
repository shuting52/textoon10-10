.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;
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

    .line 92
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

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

    .line 95
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->spinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangDir:Ljava/lang/String;

    .line 96
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iput p3, p1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->selectedLangId:I

    .line 97
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$2;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-static {p1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->access$000(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;)V

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

    const/4 v0, 0x2

    return-void

    const/4 v0, 0x0
.end method
