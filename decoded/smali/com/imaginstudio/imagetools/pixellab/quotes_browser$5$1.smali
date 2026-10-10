.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;
.super Ljava/lang/Object;
.source "quotes_browser.java"

# interfaces
.implements Lcom/arasthel/asyncjob/AsyncJob$OnMainThreadJob;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->doOnBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;

.field final synthetic val$quoteText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iput-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInUIThread()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 184
    const/4 v5, 0x3

    new-instance v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    new-instance v3, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;

    invoke-direct {v3, p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;)V

    new-instance v4, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;

    invoke-direct {v4, p0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$2;-><init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/quoteCard;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 203
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolder:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->lpa:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const/4 v1, 0x1
.end method
