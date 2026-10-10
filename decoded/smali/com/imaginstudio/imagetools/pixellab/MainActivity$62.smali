.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->createAddNewMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/MainActivity;)V
    .locals 0

    .line 3038
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v4, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 3041
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(I)V

    .line 3042
    const/4 v4, 0x1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3043
    const/4 v4, 0x2

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v2, v2, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v3, v3, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v3, v3, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$62;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setText(Ljava/lang/String;Z)V

    return-void

    const/4 v0, 0x0
.end method
