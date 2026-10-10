.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;
.super Ljava/lang/Object;
.source "quotes_browser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->doInUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v1, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 187
    const/4 v1, 0x1

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1$1;->this$2:Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$5$1;->val$quoteText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->access$200(Lcom/imaginstudio/imagetools/pixellab/quotes_browser;Ljava/lang/String;)V

    return-void

    const/4 v1, 0x1
.end method
