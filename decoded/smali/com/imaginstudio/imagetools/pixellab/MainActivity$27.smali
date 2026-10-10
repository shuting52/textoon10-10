.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/imaginstudio/imagetools/pixellab/font/fontDialogFragment$fontDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->doActionFor(ILcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;Ljava/util/ArrayList;)V
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

    .line 1211
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOkButton(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 1214
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    .line 1215
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentText()Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->saveCurrTextState(Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;)V

    .line 1216
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/textContainer;->texts:Ljava/util/Map;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    iget v1, v1, Lcom/imaginstudio/imagetools/pixellab/textContainer;->curr_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;

    invoke-virtual {v0, p1}, Lcom/imaginstudio/imagetools/pixellab/TextObject/TextComponent;->setTextFont(Lcom/imaginstudio/imagetools/pixellab/controls/functions/spansIntervals;)V

    .line 1217
    const/4 v2, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$27;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-virtual {p1}, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->fontApplied()V

    :cond_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
