.class Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;
.super Ljava/lang/Object;
.source "stylesBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;


# direct methods
.method constructor <init>(Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 206
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->styleEvent:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->val$style:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$stylePickEvent;->removeStyle(Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroid/support/v7/widget/GridLayout;

    iget-object p2, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p2, p2, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->val$aStyle:Lcom/imaginstudio/imagetools/pixellab/controls/widgets/preset_ui;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/GridLayout;->removeView(Landroid/view/View;)V

    .line 208
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customSpace:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 209
    const/4 v0, 0x2

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->customHolder:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    const/4 v0, 0x3

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->defaultHolder:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const/4 v0, 0x0

    iget-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6$1;->this$1:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser$6;->this$0:Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;

    iget-object p1, p1, Lcom/imaginstudio/imagetools/pixellab/stylesBrowser;->warningText:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    return-void

    const/4 v0, 0x0
.end method
