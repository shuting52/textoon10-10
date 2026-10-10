.class Lcom/imaginstudio/imagetools/pixellab/quotes_browser$4;
.super Ljava/lang/Object;
.source "quotes_browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->LoadQuotes()V
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

    .line 143
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 146
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser$4;->this$0:Lcom/imaginstudio/imagetools/pixellab/quotes_browser;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/quotes_browser;->quotesHolderScroll:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    const/4 v0, 0x2
.end method
