.class Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;
.super Ljava/lang/Object;
.source "textSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v5, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 189
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 191
    const/4 v5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle2:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionEnd:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 192
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->handle1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v1}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v2, v2, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    iget-object v2, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v2}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v2

    iget-object v3, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v3}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v4, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    iget v4, v4, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->selectionStart:I

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v5, 0x3

    :catch_0
    move-exception v0

    .line 194
    const/4 v5, 0x0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 197
    const/4 v5, 0x1

    :cond_0
    const/4 v5, 0x2

    :goto_0
    const/4 v5, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector$3;->this$0:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/controls/widgets/textSelector;->postInvalidate()V

    return-void

    const/4 v1, 0x1
.end method
