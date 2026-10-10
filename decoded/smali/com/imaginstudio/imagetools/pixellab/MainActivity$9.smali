.class Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/imaginstudio/imagetools/pixellab/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 414
    iput-object p1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v2, "ModGuard - Protect Your Piracy v1.2 by ill420smoker"

    .line 417
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->textContain:Lcom/imaginstudio/imagetools/pixellab/textContainer;

    invoke-virtual {v0}, Lcom/imaginstudio/imagetools/pixellab/textContainer;->getCurrentSelectedType()Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x2

    return-void

    .line 421
    const/4 v2, 0x3

    :cond_0
    const/4 v2, 0x0

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->text:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v1, v1, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 422
    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickTextMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    const/4 v2, 0x0

    .line 423
    const/4 v2, 0x1

    :cond_1
    const/4 v2, 0x2

    sget-object v1, Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;->shape:Lcom/imaginstudio/imagetools/pixellab/undo/History$ComponentType;

    if-ne v0, v1, :cond_2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 424
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/imaginstudio/imagetools/pixellab/MainActivity$9;->this$0:Lcom/imaginstudio/imagetools/pixellab/MainActivity;

    iget-object v0, v0, Lcom/imaginstudio/imagetools/pixellab/MainActivity;->quickShapeMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    :cond_2
    const/4 v2, 0x2

    :goto_0
    const/4 v2, 0x3

    return-void

    const/4 v0, 0x2
.end method
